@interface NTKVictoryDigitsView
+ (id)_fontForAppearance:(int64_t)a3 forDevice:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_createLabel;
- (id)initForDevice:(id)a3;
- (void)_updateDimmingOverlayColors;
- (void)_updateFonts;
- (void)applyColor;
- (void)layoutSubviews;
- (void)setAppearance:(int64_t)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setColor:(id)a3;
- (void)setDigitText:(id)a3;
- (void)setDimmingFactor:(double)a3 isUpper:(BOOL)a4;
- (void)setScale:(double)a3;
@end

@implementation NTKVictoryDigitsView

- (id)initForDevice:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NTKVictoryDigitsView;
  v6 = [(NTKVictoryDigitsView *)&v12 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = +[UIColor blackColor];
    [(NTKVictoryDigitsView *)v7 setBackgroundColor:v8];

    [(NTKVictoryDigitsView *)v7 setOpaque:1];
    v9 = [(NTKVictoryDigitsView *)v7 _createLabel];
    label = v7->_label;
    v7->_label = v9;

    [(NTKVictoryDigitsView *)v7 addSubview:v7->_label];
    v7->_hasSetAppearance = 0;
    v7->_scale = 1.0;
  }

  return v7;
}

- (void)setAppearance:(int64_t)a3
{
  if (!self->_hasSetAppearance || self->_appearance != a3)
  {
    self->_appearance = a3;
    self->_hasSetAppearance = 1;
    [(NTKVictoryDigitsView *)self prepareAppearance:?];
    [(NTKVictoryDigitsView *)self _updateFonts];

    [(NTKVictoryDigitsView *)self setNeedsLayout];
  }
}

- (void)setDimmingFactor:(double)a3 isUpper:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
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
    v12 = [(NTKVictoryDigitsView *)self layer];
    [v12 addSublayer:self->_dimmingOverlay];

    dimmingOverlay = self->_dimmingOverlay;
  }

  if (self->_dimIsUpper != v4)
  {
    [(CAGradientLayer *)dimmingOverlay setStartPoint:0.0, v4];
    [(CAGradientLayer *)self->_dimmingOverlay setEndPoint:0.0, (v4 ^ 1)];
    self->_dimIsUpper = v4;
    dimmingOverlay = self->_dimmingOverlay;
  }

  *&a3 = v5;
  [(CAGradientLayer *)dimmingOverlay setOpacity:a3];
}

- (void)setBackgroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKVictoryDigitsView;
  [(NTKVictoryDigitsView *)&v4 setBackgroundColor:a3];
  [(NTKVictoryDigitsView *)self _updateDimmingOverlayColors];
}

- (void)_updateDimmingOverlayColors
{
  if (self->_dimmingOverlay)
  {
    v3 = [(NTKVictoryDigitsView *)self backgroundColor];
    v4 = [v3 colorWithAlphaComponent:0.9];
    v8[0] = [v4 CGColor];
    v5 = [(NTKVictoryDigitsView *)self backgroundColor];
    v6 = [v5 colorWithAlphaComponent:0.7];
    v8[1] = [v6 CGColor];
    v7 = [NSArray arrayWithObjects:v8 count:2];
    [(CAGradientLayer *)self->_dimmingOverlay setColors:v7];
  }
}

- (void)setColor:(id)a3
{
  v7 = a3;
  v5 = [(UIColor *)self->_color CGColor];
  v6 = v7;
  if (!CGColorEqualToColor(v5, [v7 CGColor]))
  {
    objc_storeStrong(&self->_color, a3);
    [(NTKVictoryDigitsView *)self applyColor];
  }
}

- (void)applyColor
{
  if ((self->_appearance & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = [(NTKVictoryDigitsView *)self outlineBackgroundColor];
    [(NTKVictoryLabel *)self->_label setFillColor:v3];

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

- (void)setDigitText:(id)a3
{
  v7 = a3;
  v4 = [(NTKVictoryLabel *)self->_label text];
  v5 = [v4 length];
  if (v5 == [v7 length])
  {

    [(NTKVictoryLabel *)self->_label setText:v7];
    [(NTKVictoryLabel *)self->_label sizeToFit];
  }

  else
  {
    tritiumOnFraction = self->_tritiumOnFraction;

    [(NTKVictoryLabel *)self->_label setText:v7];
    [(NTKVictoryLabel *)self->_label sizeToFit];
    if (tritiumOnFraction < 1.0)
    {
      [(NTKVictoryDigitsView *)self applyColor];
    }
  }
}

- (void)setScale:(double)a3
{
  self->_scale = a3;
  CGAffineTransformMakeScale(&v6, a3, a3);
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

- (CGSize)sizeThatFits:(CGSize)a3
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

+ (id)_fontForAppearance:(int64_t)a3 forDevice:(id)a4
{
  v4 = a3 != 1;
  sub_5F2C(a4, &v7);
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