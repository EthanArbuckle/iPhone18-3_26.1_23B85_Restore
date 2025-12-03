@interface AVTCircularButton
- (AVTCircularButton)initWithCoder:(id)coder;
- (AVTCircularButton)initWithFrame:(CGRect)frame;
- (double)circleLayerAlpha;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSymbolImageWithName:(id)name;
- (void)setSymbolImageWithName:(id)name configuration:(id)configuration;
- (void)setSymbolTintColor:(id)color;
- (void)setupView;
- (void)tintColorDidChange;
- (void)updateBackgroundColorIfNeeded;
- (void)updateDynamicBackgroundColor;
@end

@implementation AVTCircularButton

- (AVTCircularButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AVTCircularButton;
  v3 = [(AVTCircularButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVTCircularButton *)v3 setupView];
  }

  return v4;
}

- (AVTCircularButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AVTCircularButton;
  v3 = [(AVTCircularButton *)&v6 initWithCoder:coder];
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
  layer = [(AVTCircularButton *)self layer];
  [layer setMask:v5];

  [(AVTCircularButton *)self updateDynamicBackgroundColor];
  dynamicBackgroundColor = [(AVTCircularButton *)self dynamicBackgroundColor];
  [(AVTCircularButton *)self setBackgroundColor:dynamicBackgroundColor];
}

- (void)updateBackgroundColorIfNeeded
{
  if ([(AVTCircularButton *)self isUsingDynamicBackground])
  {
    [(AVTCircularButton *)self updateDynamicBackgroundColor];
    dynamicBackgroundColor = [(AVTCircularButton *)self dynamicBackgroundColor];
    [(AVTCircularButton *)self setBackgroundColor:dynamicBackgroundColor];
  }
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = AVTCircularButton;
  colorCopy = color;
  [(AVTCircularButton *)&v6 setBackgroundColor:colorCopy];
  v5 = [(AVTCircularButton *)self dynamicBackgroundColor:v6.receiver];

  [(AVTCircularButton *)self setIsUsingDynamicBackground:v5 == colorCopy];
}

- (void)updateDynamicBackgroundColor
{
  tintColor = [(AVTCircularButton *)self tintColor];
  v7 = [tintColor colorWithAlphaComponent:0.15];

  tintColor2 = [(AVTCircularButton *)self tintColor];
  v5 = [tintColor2 colorWithAlphaComponent:0.3];

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
  traitCollection = [(AVTCircularButton *)self traitCollection];
  v3 = [traitCollection userInterfaceStyle] == 2;

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
  cGPath = [v4 CGPath];
  clippingLayer = [(AVTCircularButton *)self clippingLayer];
  [clippingLayer setPath:cGPath];
}

- (void)setSymbolImageWithName:(id)name
{
  v4 = MEMORY[0x1E69DCAD8];
  v5 = *MEMORY[0x1E69DDCF8];
  nameCopy = name;
  v7 = [v4 configurationWithTextStyle:v5 scale:2];
  [(AVTCircularButton *)self setSymbolImageWithName:nameCopy configuration:v7];
}

- (void)setSymbolImageWithName:(id)name configuration:(id)configuration
{
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:name withConfiguration:configuration];
  symbolImage = self->_symbolImage;
  self->_symbolImage = v5;
  v7 = v5;

  [(AVTCircularButton *)self setImage:self->_symbolImage forState:0];
}

- (void)setSymbolTintColor:(id)color
{
  colorCopy = color;
  if (self->_symbolTintColor != colorCopy)
  {
    v9 = colorCopy;
    objc_storeStrong(&self->_symbolTintColor, color);
    v6 = [(UIImage *)self->_symbolImage imageWithTintColor:v9];
    v7 = [v6 imageWithRenderingMode:1];
    symbolImage = self->_symbolImage;
    self->_symbolImage = v7;

    [(AVTCircularButton *)self setImage:self->_symbolImage forState:0];
    [(AVTCircularButton *)self setAdjustsImageWhenHighlighted:1];
    colorCopy = v9;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v11.receiver = self;
  v11.super_class = AVTCircularButton;
  [(AVTCircularButton *)&v11 setHighlighted:?];
  if (([(AVTCircularButton *)self adjustsImageWhenHighlighted]& 1) == 0)
  {
    symbolTintColor = self->_symbolTintColor;
    if (symbolTintColor)
    {
      tintColor = symbolTintColor;
    }

    else
    {
      tintColor = [(AVTCircularButton *)self tintColor];
    }

    v7 = tintColor;
    v8 = 0.3;
    if (!highlightedCopy)
    {
      v8 = 1.0;
    }

    v9 = [(UIColor *)tintColor colorWithAlphaComponent:v8];
    imageView = [(AVTCircularButton *)self imageView];
    [imageView setTintColor:v9];
  }
}

@end