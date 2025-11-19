@interface AVMobileGlassBackgroundBlurGradientView
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation AVMobileGlassBackgroundBlurGradientView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassBackgroundBlurGradientView;
  [(AVView *)&v5 layoutSubviews];
  visualEffectView = self->_visualEffectView;
  [(AVMobileGlassBackgroundBlurGradientView *)self bounds];
  [(UIVisualEffectView *)visualEffectView setFrame:?];
  gradientLayer = self->_gradientLayer;
  [(AVMobileGlassBackgroundBlurGradientView *)self bounds];
  [(CAGradientLayer *)gradientLayer setFrame:?];
}

- (void)didMoveToWindow
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = AVMobileGlassBackgroundBlurGradientView;
  [(AVMobileGlassBackgroundBlurGradientView *)&v16 didMoveToWindow];
  v3 = [(AVMobileGlassBackgroundBlurGradientView *)self window];

  if (v3 && self)
  {
    if (!self->_gradientLayer)
    {
      v4 = [MEMORY[0x1E6979380] layer];
      v5 = [MEMORY[0x1E69DC888] clearColor];
      v6 = [v5 CGColor];

      v7 = [MEMORY[0x1E69DC888] blackColor];
      v8 = [v7 CGColor];

      v17[0] = v6;
      v17[1] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      [(CAGradientLayer *)v4 setColors:v9];
      [(CAGradientLayer *)v4 setLocations:&unk_1EFF12EA8];
      [(CAGradientLayer *)v4 setStartPoint:0.0, 0.0];
      [(CAGradientLayer *)v4 setEndPoint:0.0, 1.0];
      [(CAGradientLayer *)v4 setAnchorPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
      gradientLayer = self->_gradientLayer;
      self->_gradientLayer = v4;
    }

    if (!self->_visualEffectView)
    {
      v11 = [MEMORY[0x1E69DC730] _effectWithBlurRadius:3.0 scale:1.0];
      v12 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v11];
      visualEffectView = self->_visualEffectView;
      self->_visualEffectView = v12;
      v14 = v12;

      v15 = [(UIVisualEffectView *)self->_visualEffectView layer];
      [v15 setMask:self->_gradientLayer];

      [(AVMobileGlassBackgroundBlurGradientView *)self addSubview:self->_visualEffectView];
    }
  }
}

@end