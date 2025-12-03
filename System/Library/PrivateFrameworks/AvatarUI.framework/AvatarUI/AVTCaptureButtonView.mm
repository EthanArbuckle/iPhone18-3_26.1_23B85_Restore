@interface AVTCaptureButtonView
- (AVTCaptureButtonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AVTCaptureButtonView

- (AVTCaptureButtonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = AVTCaptureButtonView;
  v3 = [(AVTCaptureButtonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  button = [(AVTCaptureButtonView *)self button];
  [button frame];
  [(AVTCaptureButtonView *)self bounds];
  UIRectCenteredIntegralRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  button2 = [(AVTCaptureButtonView *)self button];
  [button2 setFrame:{v5, v7, v9, v11}];
}

@end