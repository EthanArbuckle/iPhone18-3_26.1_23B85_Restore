@interface AVTCircularButton
- (AVTCircularButton)initWithCoder:(id)a3;
- (AVTCircularButton)initWithFrame:(CGRect)a3;
- (double)circleLayerAlpha;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSymbolImageWithName:(id)a3;
- (void)setSymbolImageWithName:(id)a3 configuration:(id)a4;
- (void)setSymbolTintColor:(id)a3;
- (void)setupView;
- (void)tintColorDidChange;
- (void)updateBackgroundColorIfNeeded;
- (void)updateDynamicBackgroundColor;
@end

@implementation AVTCircularButton

- (AVTCircularButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AVTCircularButton;
  v3 = [(AVTCircularButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVTCircularButton *)v3 setupView];
  }

  return v4;
}

- (AVTCircularButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVTCircularButton;
  v3 = [(AVTCircularButton *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AVTCircularButton *)v3 setupView];
  }

  return v4;
}

- (void)setupView
{
  [(AVTCircularButton *)self setAdjustsImageWhenHighlighted:0];
  [(AVTCircularButton *)self setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
  v3 = objc_alloc_init(MEMORY[0x1E69794A0]);
  clippingLayer = self->_clippingLayer;
  self->_clippingLayer = v3;

  v5 = self->_clippingLayer;
  v6 = [(AVTCircularButton *)self layer];
  [v6 setMask:v5];

  [(AVTCircularButton *)self updateDynamicBackgroundColor];
  v7 = [(AVTCircularButton *)self dynamicBackgroundColor];
  [(AVTCircularButton *)self setBackgroundColor:v7];
}

- (void)updateBackgroundColorIfNeeded
{
  if ([(AVTCircularButton *)self isUsingDynamicBackground])
  {
    [(AVTCircularButton *)self updateDynamicBackgroundColor];
    v3 = [(AVTCircularButton *)self dynamicBackgroundColor];
    [(AVTCircularButton *)self setBackgroundColor:v3];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVTCircularButton;
  v4 = a3;
  [(AVTCircularButton *)&v6 setBackgroundColor:v4];
  v5 = [(AVTCircularButton *)self dynamicBackgroundColor:v6.receiver];

  [(AVTCircularButton *)self setIsUsingDynamicBackground:v5 == v4];
}

- (void)updateDynamicBackgroundColor
{
  v3 = [(AVTCircularButton *)self tintColor];
  v7 = [v3 colorWithAlphaComponent:0.15];

  v4 = [(AVTCircularButton *)self tintColor];
  v5 = [v4 colorWithAlphaComponent:0.3];

  v6 = [AVTUIColorRepository dynamicColorWithLightColor:v7 darkColor:v5];
  [(AVTCircularButton *)self setDynamicBackgroundColor:v6];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = AVTCircularButton;
  [(AVTCircularButton *)&v3 tintColorDidChange];
  [(AVTCircularButton *)self updateBackgroundColorIfNeeded];
}

- (double)circleLayerAlpha
{
  v2 = [(AVTCircularButton *)self traitCollection];
  v3 = [v2 userInterfaceStyle] == 2;

  return dbl_1BB416410[v3];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = AVTCircularButton;
  [(AVTCircularButton *)&v7 layoutSubviews];
  v3 = MEMORY[0x1E69DC728];
  [(AVTCircularButton *)self bounds];
  v4 = [v3 bezierPathWithOvalInRect:?];
  v5 = [v4 CGPath];
  v6 = [(AVTCircularButton *)self clippingLayer];
  [v6 setPath:v5];
}

- (void)setSymbolImageWithName:(id)a3
{
  v4 = MEMORY[0x1E69DCAD8];
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = a3;
  v7 = [v4 configurationWithTextStyle:v5 scale:2];
  [(AVTCircularButton *)self setSymbolImageWithName:v6 configuration:v7];
}

- (void)setSymbolImageWithName:(id)a3 configuration:(id)a4
{
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:a3 withConfiguration:a4];
  symbolImage = self->_symbolImage;
  self->_symbolImage = v5;
  v7 = v5;

  [(AVTCircularButton *)self setImage:self->_symbolImage forState:0];
}

- (void)setSymbolTintColor:(id)a3
{
  v5 = a3;
  if (self->_symbolTintColor != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_symbolTintColor, a3);
    v6 = [(UIImage *)self->_symbolImage imageWithTintColor:v9];
    v7 = [v6 imageWithRenderingMode:1];
    symbolImage = self->_symbolImage;
    self->_symbolImage = v7;

    [(AVTCircularButton *)self setImage:self->_symbolImage forState:0];
    [(AVTCircularButton *)self setAdjustsImageWhenHighlighted:1];
    v5 = v9;
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = AVTCircularButton;
  [(AVTCircularButton *)&v11 setHighlighted:?];
  if (([(AVTCircularButton *)self adjustsImageWhenHighlighted]& 1) == 0)
  {
    symbolTintColor = self->_symbolTintColor;
    if (symbolTintColor)
    {
      v6 = symbolTintColor;
    }

    else
    {
      v6 = [(AVTCircularButton *)self tintColor];
    }

    v7 = v6;
    v8 = 0.3;
    if (!v3)
    {
      v8 = 1.0;
    }

    v9 = [(UIColor *)v6 colorWithAlphaComponent:v8];
    v10 = [(AVTCircularButton *)self imageView];
    [v10 setTintColor:v9];
  }
}

@end