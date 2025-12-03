@interface TrailingFadeLabel
- (BOOL)isTextTruncated;
- (TrailingFadeLabel)initWithFrame:(CGRect)frame;
- (void)_updateFadeDirection;
- (void)_updateFadeVisibility;
- (void)_updateFadeWidth;
- (void)layoutSubviews;
@end

@implementation TrailingFadeLabel

- (TrailingFadeLabel)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = TrailingFadeLabel;
  v3 = [(TrailingFadeLabel *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CAGradientLayer);
    gradientLayer = v3->_gradientLayer;
    v3->_gradientLayer = v4;

    v15 = +[UIColor whiteColor];
    v6 = [v15 colorWithAlphaComponent:1.0];
    v17[0] = [v6 CGColor];
    v7 = +[UIColor whiteColor];
    v8 = [v7 colorWithAlphaComponent:1.0];
    v17[1] = [v8 CGColor];
    v9 = +[UIColor whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.0];
    v17[2] = [v10 CGColor];
    v11 = +[UIColor whiteColor];
    v12 = [v11 colorWithAlphaComponent:0.0];
    v17[3] = [v12 CGColor];
    v13 = [NSArray arrayWithObjects:v17 count:4];
    [(CAGradientLayer *)v3->_gradientLayer setColors:v13];

    [(TrailingFadeLabel *)v3 _updateFadeDirection];
    [(TrailingFadeLabel *)v3 _updateFadeWidth];
    [(TrailingFadeLabel *)v3 _updateFadeVisibility];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TrailingFadeLabel;
  [(TrailingFadeLabel *)&v3 layoutSubviews];
  [(TrailingFadeLabel *)self _updateFadeWidth];
  [(TrailingFadeLabel *)self _updateFadeVisibility];
  [(TrailingFadeLabel *)self _updateFadeDirection];
}

- (void)_updateFadeWidth
{
  [(TrailingFadeLabel *)self bounds];
  [(CAGradientLayer *)self->_gradientLayer setFrame:?];
  [(TrailingFadeLabel *)self bounds];
  v4 = -14.0 / v3;
  [(TrailingFadeLabel *)self bounds];
  v11[0] = &off_10021A2B0;
  v5 = v4 + 1.0;
  v7 = -2.0 / v6;
  v8 = [NSNumber numberWithDouble:v5];
  v11[1] = v8;
  v9 = [NSNumber numberWithDouble:v7 + 1.0];
  v11[2] = v9;
  v11[3] = &off_10021A2C0;
  v10 = [NSArray arrayWithObjects:v11 count:4];
  [(CAGradientLayer *)self->_gradientLayer setLocations:v10];

  [(CAGradientLayer *)self->_gradientLayer setNeedsDisplay];
}

- (void)_updateFadeDirection
{
  effectiveUserInterfaceLayoutDirection = [(TrailingFadeLabel *)self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(CAGradientLayer *)self->_gradientLayer setStartPoint:v4];
  gradientLayer = self->_gradientLayer;

  [(CAGradientLayer *)gradientLayer setEndPoint:v5, 0.0];
}

- (void)_updateFadeVisibility
{
  if ([(TrailingFadeLabel *)self isTextTruncated])
  {
    gradientLayer = self->_gradientLayer;
  }

  else
  {
    gradientLayer = 0;
  }

  layer = [(TrailingFadeLabel *)self layer];
  [layer setMask:gradientLayer];
}

- (BOOL)isTextTruncated
{
  attributedText = [(TrailingFadeLabel *)self attributedText];
  [(TrailingFadeLabel *)self bounds];
  [attributedText boundingRectWithSize:1 options:0 context:{1.79769313e308, v4}];
  v6 = v5;

  [(TrailingFadeLabel *)self bounds];
  return v6 > v7;
}

@end