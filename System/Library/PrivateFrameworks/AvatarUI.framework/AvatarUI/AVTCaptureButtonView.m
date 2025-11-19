@interface AVTCaptureButtonView
- (AVTCaptureButtonView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AVTCaptureButtonView

- (AVTCaptureButtonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = AVTCaptureButtonView;
  v3 = [(AVTCaptureButtonView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    button = v3->_button;
    v3->_button = v4;

    [(UIButton *)v3->_button sizeToFit];
    [(AVTCaptureButtonView *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = AVTCaptureButtonView;
  [(AVTCaptureButtonView *)&v13 layoutSubviews];
  v3 = [(AVTCaptureButtonView *)self button];
  [v3 frame];
  [(AVTCaptureButtonView *)self bounds];
  UIRectCenteredIntegralRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(AVTCaptureButtonView *)self button];
  [v12 setFrame:{v5, v7, v9, v11}];
}

@end