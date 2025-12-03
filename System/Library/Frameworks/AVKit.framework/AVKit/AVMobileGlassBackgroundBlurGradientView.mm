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
  window = [(AVMobileGlassBackgroundBlurGradientView *)self window];

  if (window && self)
  {
    if (!self->_gradientLayer)
    {
      layer = [MEMORY[0x1E6979380] layer];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      cGColor = [clearColor CGColor];

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      cGColor2 = [blackColor CGColor];

      v17[0] = cGColor;
      v17[1] = cGColor2;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      [(CAGradientLayer *)layer setColors:v9];
      [(CAGradientLayer *)layer setLocations:&unk_1EFF12EA8];
      [(CAGradientLayer *)layer setStartPoint:0.0, 0.0];
      [(CAGradientLayer *)layer setEndPoint:0.0, 1.0];
      [(CAGradientLayer *)layer setAnchorPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
      gradientLayer = self->_gradientLayer;
      self->_gradientLayer = layer;
    }

    if (!self->_visualEffectView)
    {
      v11 = [MEMORY[0x1E69DC730] _effectWithBlurRadius:3.0 scale:1.0];
      v12 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v11];
      visualEffectView = self->_visualEffectView;
      self->_visualEffectView = v12;
      v14 = v12;

      layer2 = [(UIVisualEffectView *)self->_visualEffectView layer];
      [layer2 setMask:self->_gradientLayer];

      [(AVMobileGlassBackgroundBlurGradientView *)self addSubview:self->_visualEffectView];
    }
  }
}

@end