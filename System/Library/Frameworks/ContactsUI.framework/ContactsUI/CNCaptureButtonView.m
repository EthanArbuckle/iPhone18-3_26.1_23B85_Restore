@interface CNCaptureButtonView
- (CNCaptureButtonView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CNCaptureButtonView

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CNCaptureButtonView;
  [(CNCaptureButtonView *)&v13 layoutSubviews];
  v3 = [(CNCaptureButtonView *)self button];
  [v3 frame];
  [(CNCaptureButtonView *)self bounds];
  UIRectCenteredIntegralRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CNCaptureButtonView *)self button];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (CNCaptureButtonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CNCaptureButtonView;
  v3 = [(CNCaptureButtonView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [(objc_class *)getCUShutterButtonClass() shutterButton];
    button = v3->_button;
    v3->_button = v4;

    [(UIButton *)v3->_button sizeToFit];
    [(CNCaptureButtonView *)v3 addSubview:v3->_button];
  }

  return v3;
}

@end