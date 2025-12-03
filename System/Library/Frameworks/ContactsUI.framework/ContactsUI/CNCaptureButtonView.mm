@interface CNCaptureButtonView
- (CNCaptureButtonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CNCaptureButtonView

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CNCaptureButtonView;
  [(CNCaptureButtonView *)&v13 layoutSubviews];
  button = [(CNCaptureButtonView *)self button];
  [button frame];
  [(CNCaptureButtonView *)self bounds];
  UIRectCenteredIntegralRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  button2 = [(CNCaptureButtonView *)self button];
  [button2 setFrame:{v5, v7, v9, v11}];
}

- (CNCaptureButtonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CNCaptureButtonView;
  v3 = [(CNCaptureButtonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    shutterButton = [(objc_class *)getCUShutterButtonClass() shutterButton];
    button = v3->_button;
    v3->_button = shutterButton;

    [(UIButton *)v3->_button sizeToFit];
    [(CNCaptureButtonView *)v3 addSubview:v3->_button];
  }

  return v3;
}

@end