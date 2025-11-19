@interface HNDBubbleCursorLayer
- (HNDBubbleCursorLayer)init;
- (double)_opacityForTheme:(int)a3 level:(int)a4 pointerSizeMultiplier:(double)a5;
- (double)valueForPointerSizeMultipler:(double)a3 withBaseValue:(double)a4;
- (id)description;
- (void)_updatePresentationProperties;
- (void)ensureHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)updateLevel:(int)a3 animated:(BOOL)a4;
- (void)updatePath:(id)a3 frame:(CGRect)a4 isSimpleRect:(BOOL)a5 animated:(BOOL)a6;
- (void)updateTheme:(int)a3 animated:(BOOL)a4;
@end

@implementation HNDBubbleCursorLayer

- (HNDBubbleCursorLayer)init
{
  v5.receiver = self;
  v5.super_class = HNDBubbleCursorLayer;
  v2 = [(HNDBubbleCursorLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HNDBubbleCursorLayer *)v2 setLevel:0];
    [(HNDBubbleCursorLayer *)v3 setTheme:0];
    [(HNDBubbleCursorLayer *)v3 setOpaque:0];
    [(HNDBubbleCursorLayer *)v3 _updatePresentationProperties];
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSNumber numberWithBool:self->_ensureHidden];
  v6 = [NSNumber numberWithUnsignedInt:[(HNDBubbleCursorLayer *)self theme]];
  v7 = [NSNumber numberWithUnsignedInt:[(HNDBubbleCursorLayer *)self level]];
  v8 = [NSNumber numberWithDouble:sub_100042DE0()];
  v9 = [NSNumber numberWithBool:[(HNDBubbleCursorLayer *)self isHidden]];
  v13.receiver = self;
  v13.super_class = HNDBubbleCursorLayer;
  v10 = [(HNDBubbleCursorLayer *)&v13 debugDescription];
  v11 = [NSString stringWithFormat:@"%@<%p>. ensureHidden:%@ theme:%@ level:%@ normalizedPointerSizeMultiplier:%@. hidden:%@ %@", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)ensureHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_ensureHidden != a3)
  {
    self->_ensureHidden = a3;
    if (a4)
    {

      [(HNDBubbleCursorLayer *)self _updatePresentationProperties];
    }

    else
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [(HNDBubbleCursorLayer *)self _updatePresentationProperties];

      +[CATransaction commit];
    }
  }
}

- (void)updateTheme:(int)a3 animated:(BOOL)a4
{
  if (self->_theme != a3)
  {
    self->_theme = a3;
    if (a4)
    {

      [(HNDBubbleCursorLayer *)self _updatePresentationProperties];
    }

    else
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [(HNDBubbleCursorLayer *)self _updatePresentationProperties];

      +[CATransaction commit];
    }
  }
}

- (void)updateLevel:(int)a3 animated:(BOOL)a4
{
  if (self->_level != a3)
  {
    self->_level = a3;
    if (a4)
    {

      [(HNDBubbleCursorLayer *)self _updatePresentationProperties];
    }

    else
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [(HNDBubbleCursorLayer *)self _updatePresentationProperties];

      +[CATransaction commit];
    }
  }
}

- (void)updatePath:(id)a3 frame:(CGRect)a4 isSimpleRect:(BOOL)a5 animated:(BOOL)a6
{
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  [(HNDBubbleCursorLayer *)self setSimpleRect:v7];
  if (!a6)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
  }

  if (v14)
  {
    [(HNDBubbleCursorLayer *)self setFrame:x, y, width, height];
    [(HNDBubbleCursorLayer *)self _updatePresentationProperties];
    v13 = v14;
    -[HNDBubbleCursorLayer setPath:](self, "setPath:", [v14 CGPath]);
    if (a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(HNDBubbleCursorLayer *)self _updatePresentationProperties];
  if (!a6)
  {
LABEL_5:
    +[CATransaction commit];
  }

LABEL_6:
}

- (void)_updatePresentationProperties
{
  v3 = [(HNDBubbleCursorLayer *)self theme];
  v4 = [(HNDBubbleCursorLayer *)self level];
  v5 = sub_100042DE0();
  if (v4)
  {
    ensureHidden = self->_ensureHidden;
  }

  else
  {
    ensureHidden = 1;
  }

  [(HNDBubbleCursorLayer *)self setHidden:ensureHidden];
  v7 = [(HNDBubbleCursorLayer *)self _strokeColorForTheme:v3 level:v4 pointerSizeMultiplier:v5];
  [(HNDBubbleCursorLayer *)self setRestingStrokeColor:v7];

  v8 = [(HNDBubbleCursorLayer *)self restingStrokeColor];
  -[HNDBubbleCursorLayer setStrokeColor:](self, "setStrokeColor:", [v8 CGColor]);

  v9 = [(HNDBubbleCursorLayer *)self _fillColorForTheme:v3 level:v4 pointerSizeMultiplier:v5];
  [(HNDBubbleCursorLayer *)self setRestingFillColor:v9];

  v10 = [(HNDBubbleCursorLayer *)self restingFillColor];
  -[HNDBubbleCursorLayer setFillColor:](self, "setFillColor:", [v10 CGColor]);

  [(HNDBubbleCursorLayer *)self _boundsInsetForTheme:v3 level:v4 pointerSizeMultiplier:v5];
  [(HNDBubbleCursorLayer *)self setBoundsInset:?];
  [(HNDBubbleCursorLayer *)self _borderWidthForTheme:v3 level:v4 pointerSizeMultiplier:v5];
  [(HNDBubbleCursorLayer *)self setLineWidth:?];
  v11 = [(HNDBubbleCursorLayer *)self _borderPatternForTheme:v3 level:v4 pointerSizeMultiplier:v5];
  [(HNDBubbleCursorLayer *)self setLineDashPattern:v11];

  [(HNDBubbleCursorLayer *)self _opacityForTheme:v3 level:v4 pointerSizeMultiplier:v5];
  *&v12 = v12;

  [(HNDBubbleCursorLayer *)self setOpacity:v12];
}

- (double)valueForPointerSizeMultipler:(double)a3 withBaseValue:(double)a4
{
  if (sub_100042DE0() > 0.0)
  {
    return (sub_100042DE0() * (a3 + -1.0) + 1.0) * a4;
  }

  return a4;
}

- (double)_opacityForTheme:(int)a3 level:(int)a4 pointerSizeMultiplier:(double)a5
{
  result = 0.6;
  if (a4 != 2)
  {
    return 1.0;
  }

  return result;
}

@end