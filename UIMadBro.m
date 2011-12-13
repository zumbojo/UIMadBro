//
//  UIMadBro.m
//  UIMadBro-Demo
//
//  Created by user on 11/19/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "UIMadBro.h"

@implementation UIMadBro

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle okButtonTitle:(NSString *)okayButtonTitle
    // based on Jeff LaMarche's AlertPrompt:
    //  http://iphonedevelopment.blogspot.com/2009/02/alert-view-with-prompt.html
{
    if (self = [super initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:okayButtonTitle, nil])
    {
        UIImageView *face = [[UIImageView alloc] initWithFrame:CGRectMake(12.0, 45.0, 260.0, 195.0)];
        face.image = [UIImage imageNamed:@"face.png"];
        [self addSubview:face];
        // todo: strip out arc?  if so: [face release]; and create a dealloc
        
//        UITextField *theTextField = [[UITextField alloc] initWithFrame:CGRectMake(12.0, 45.0, 260.0, 25.0)]; 
//        [theTextField setBackgroundColor:[UIColor whiteColor]]; 
//        [self addSubview:theTextField];
//        self.textField = theTextField;
//        [theTextField release];
//        CGAffineTransform translate = CGAffineTransformMakeTranslation(0.0, 130.0); 
//        [self setTransform:translate];
    }
    return self;
}

- (void)setFrame:(CGRect)rect {
    // from http://www.skylarcantu.com/blog/2009/08/14/custom-uialertview-color-chooser/
    [super setFrame:CGRectMake(0, 0, rect.size.width, 300)];
    self.center = CGPointMake(320/2, 480/2);
}

- (void)layoutSubviews {
    // from http://www.skylarcantu.com/blog/2009/08/14/custom-uialertview-color-chooser/
    CGFloat buttonTop;
    for (UIView *view in self.subviews) {
        NSLog(@"%@", [[view class] description]);
        if ([[[view class] description] isEqualToString:@"UIAlertButton"]) {
            view.frame = CGRectMake(view.frame.origin.x, self.bounds.size.height - view.frame.size.height - 15, view.frame.size.width, view.frame.size.height);
            buttonTop = view.frame.origin.y;
        }
    }
}


/*
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
 */

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
