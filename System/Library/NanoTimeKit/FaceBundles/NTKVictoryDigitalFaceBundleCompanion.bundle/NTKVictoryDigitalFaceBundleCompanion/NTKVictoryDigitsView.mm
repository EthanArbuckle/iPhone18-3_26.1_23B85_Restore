@interface NTKVictoryDigitsView
+ (id)_fontForAppearance:(int64_t)appearance forDevice:(id)device;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_createLabel;
- (id)initForDevice:(id)device;
- (void)_updateDimmingOverlayColors;
- (void)_updateFonts;
- (void)applyColor;
- (void)layoutSubviews;
- (void)setAppearance:(int64_t)appearance;
- (void)setBackgroundColor:(id)color;
- (void)setColor:(id)color;
- (void)setDigitText:(id)text;
- (void)setDimmingFactor:(double)factor isUpper:(BOOL)upper;
- (void)setScale:(double)scale;
@end

@implementation NTKVictoryDigitsView

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = NTKVictoryDigitsView;
  v6 = [(NTKVictoryDigitsView *)&v12 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = +[UIColor blackColor];
    [(NTKVictoryDigitsView *)v7 setBackgroundColor:v8];

    [(NTKVictoryDigitsView *)v7 setOpaque:1];
    _createLabel = [(NTKVictoryDigitsView *)v7 _createLabel];
    label = v7->_label;
    v7->_label = _createLabel;

    [(NTKVictoryDigitsView *)v7 addSubview:v7->_label];
    v7->_hasSetAppearance = 0;
    v7->_scale = 1.0;
  }

  return v7;
}

- (void)setAppearance:(int64_t)appearance
{
  if (!self->_hasSetAppearance || self->_appearance != appearance)
  {
    self->_appearance = appearance;
    self->_hasSetAppearance = 1;
    [(NTKVictoryDigitsView *)self prepareAppearance:?];
    [(NTKVictoryDigitsView *)self _updateFonts];

    [(NTKVictoryDigitsView *)self setNeedsLayout];
  }
}

- (void)setDimmingFactor:(double)factor isUpper:(BOOL)upper
{
  upperCopy = upper;
  factorCopy = factor;
  dimmingOverlay = self->_dimmingOverlay;
  if (!dimmingOverlay)
  {
    v8 = +[CAGradientLayer layer];
    v9 = self->_dimmingOverlay;
    self->_dimmingOverlay = v8;

    v10 = +[NSNull null];
    v13[0] = @"frame";
    v13[1] = @"colors";
    v14[0] = v10;
    v14[1] = v10;
    v13[2] = @"startPoint";
    v13[3] = @"endPoint";
    v14[2] = v10;
    v14[3] = v10;
    v13[4] = @"opacity";
    v14[4] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:5];
    [(CAGradientLayer *)self->_dimmingOverlay setActions:v11];

    [(CAGradientLayer *)self->_dimmingOverlay setStartPoint:0.0, 1.0];
    [(CAGradientLayer *)self->_dimmingOverlay setEndPoint:0.0, 0.0];
    self->_dimIsUpper = 1;
    [(NTKVictoryDigitsView *)self bounds];
    [(CAGradientLayer *)self->_dimmingOverlay setFrame:?];
    [(NTKVictoryDigitsView *)self _updateDimmingOverlayColors];
    layer = [(NTKVictoryDigitsView *)self layer];
    [layer addSublayer:self->_dimmingOverlay];

    dimmingOverlay = self->_dimmingOverlay;
  }

  if (self->_dimIsUpper != upperCopy)
  {
    [(CAGradientLayer *)dimmingOverlay setStartPoint:0.0, upperCopy];
    [(CAGradientLayer *)self->_dimmingOverlay setEndPoint:0.0, (upperCopy ^ 1)];
    self->_dimIsUpper = upperCopy;
    dimmingOverlay = self->_dimmingOverlay;
  }

  *&factor = factorCopy;
  [(CAGradientLayer *)dimmingOverlay setOpacity:factor];
}

- (void)setBackgroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = NTKVictoryDigitsView;
  [(NTKVictoryDigitsView *)&v4 setBackgroundColor:color];
  [(NTKVictoryDigitsView *)self _updateDimmingOverlayColors];
}

- (void)_updateDimmingOverlayColors
{
  if (self->_dimmingOverlay)
  {
    backgroundColor = [(NTKVictoryDigitsView *)self backgroundColor];
    v4 = [backgroundColor colorWithAlphaComponent:0.9];
    v8[0] = [v4 CGColor];
    backgroundColor2 = [(NTKVictoryDigitsView *)self backgroundColor];
    v6 = [backgroundColor2 colorWithAlphaComponent:0.7];
    v8[1] = [v6 CGColor];
    v7 = [NSArray arrayWithObjects:v8 count:2];
    [(CAGradientLayer *)self->_dimmingOverlay setColors:v7];
  }
}

- (void)setColor:(id)color
{
  colorCopy = color;
  cGColor = [(UIColor *)self->_color CGColor];
  v6 = colorCopy;
  if (!CGColorEqualToColor(cGColor, [colorCopy CGColor]))
  {
    objc_storeStrong(&self->_color, color);
    [(NTKVictoryDigitsView *)self applyColor];
  }
}

- (void)applyColor
{
  if ((self->_appearance & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    outlineBackgroundColor = [(NTKVictoryDigitsView *)self outlineBackgroundColor];
    [(NTKVictoryLabel *)self->_label setFillColor:outlineBackgroundColor];

    color = self->_color;
    label = self->_label;

    [(NTKVictoryLabel *)label setOutlineColor:color];
  }

  else
  {
    v6 = self->_color;
    v7 = self->_label;

    [(NTKVictoryLabel *)v7 setFillColor:v6];
  }
}

- (void)setDigitText:(id)text
{
  textCopy = text;
  text = [(NTKVictoryLabel *)self->_label text];
  v5 = [text length];
  if (v5 == [textCopy length])
  {

    [(NTKVictoryLabel *)self->_label setText:textCopy];
    [(NTKVictoryLabel *)self->_label sizeToFit];
  }

  else
  {
    tritiumOnFraction = self->_tritiumOnFraction;

    [(NTKVictoryLabel *)self->_label setText:textCopy];
    [(NTKVictoryLabel *)self->_label sizeToFit];
    if (tritiumOnFraction < 1.0)
    {
      [(NTKVictoryDigitsView *)self applyColor];
    }
  }
}

- (void)setScale:(double)scale
{
  self->_scale = scale;
  CGAffineTransformMakeScale(&v6, scale, scale);
  label = self->_label;
  v5 = v6;
  [(NTKVictoryLabel *)label setTransform:&v5];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKVictoryDigitsView;
  [(NTKVictoryDigitsView *)&v13 layoutSubviews];
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  sub_5F2C(self->_device, &v10);
  [(NTKVictoryLabel *)self->_label bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(NTKVictoryDigitsView *)self bounds];
  [(NTKVictoryLabel *)self->_label ntk_setBoundsAndPositionFromFrame:v9 - v6 - *(&v11 + 1), v4, v6, v8];
  [(NTKVictoryDigitsView *)self bounds];
  [(CAGradientLayer *)self->_dimmingOverlay setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  memset(v5, 0, sizeof(v5));
  sub_5F2C(self->_device, v5);
  v4 = *(v5 + 1);
  v3 = *v5;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateFonts
{
  v3 = [objc_opt_class() _fontForAppearance:1 forDevice:self->_device];
  [(NTKVictoryLabel *)self->_label setFont:v3];

  v4 = 0.0;
  if ((self->_appearance & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = 1.0;
  }

  [(NTKVictoryLabel *)self->_label setOutlineAlpha:v4];

  [(NTKVictoryDigitsView *)self applyColor];
}

+ (id)_fontForAppearance:(int64_t)appearance forDevice:(id)device
{
  v4 = appearance != 1;
  sub_5F2C(device, &v7);
  v5 = v8;

  return [NTKVictoryLabel victoryFontWithSize:v4 style:v5];
}

- (id)_createLabel
{
  v3 = [[NTKVictoryLabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTextAlignment:2];
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  sub_5F2C(self->_device, v5);
  [v3 setAdditionalPaddingInsets:*&v6];
  [v3 setDrawingRectOffset:{*(&v6 + 1), 0.0}];

  return v3;
}

@end