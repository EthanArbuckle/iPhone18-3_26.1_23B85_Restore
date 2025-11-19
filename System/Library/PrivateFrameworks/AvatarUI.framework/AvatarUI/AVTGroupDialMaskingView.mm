@interface AVTGroupDialMaskingView
- (AVTGroupDialMaskingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AVTGroupDialMaskingView

- (AVTGroupDialMaskingView)initWithFrame:(CGRect)a3
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AVTGroupDialMaskingView;
  v3 = [(AVTGroupDialMaskingView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E6979380] layer];
    maskLayer = v3->_maskLayer;
    v3->_maskLayer = v4;

    v6 = [MEMORY[0x1E69DC888] clearColor];
    v14[0] = [v6 CGColor];
    v7 = [MEMORY[0x1E69DC888] blackColor];
    v14[1] = [v7 CGColor];
    v8 = [MEMORY[0x1E69DC888] blackColor];
    v14[2] = [v8 CGColor];
    v9 = [MEMORY[0x1E69DC888] clearColor];
    v14[3] = [v9 CGColor];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    [(CAGradientLayer *)v3->_maskLayer setColors:v10];

    [(CAGradientLayer *)v3->_maskLayer setStartPoint:0.0, 0.5];
    [(CAGradientLayer *)v3->_maskLayer setEndPoint:1.0, 0.5];
    [(CAGradientLayer *)v3->_maskLayer setLocations:&unk_1F39A5D60];
    [(AVTGroupDialMaskingView *)v3 bounds];
    v16 = CGRectInset(v15, 15.0, 0.0);
    [(CAGradientLayer *)v3->_maskLayer setFrame:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
    v11 = [(AVTGroupDialMaskingView *)v3 layer];
    [v11 addSublayer:v3->_maskLayer];

    [(AVTGroupDialMaskingView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTGroupDialMaskingView;
  [(AVTGroupDialMaskingView *)&v3 layoutSubviews];
  [(AVTGroupDialMaskingView *)self bounds];
  v5 = CGRectInset(v4, 15.0, 0.0);
  [(CAGradientLayer *)self->_maskLayer setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
}

@end