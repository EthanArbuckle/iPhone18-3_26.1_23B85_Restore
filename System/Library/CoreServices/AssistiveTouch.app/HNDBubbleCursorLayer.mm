@interface HNDBubbleCursorLayer
- (HNDBubbleCursorLayer)init;
- (double)_opacityForTheme:(int)theme level:(int)level pointerSizeMultiplier:(double)multiplier;
- (double)valueForPointerSizeMultipler:(double)multipler withBaseValue:(double)value;
- (id)description;
- (void)_updatePresentationProperties;
- (void)ensureHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)updateLevel:(int)level animated:(BOOL)animated;
- (void)updatePath:(id)path frame:(CGRect)frame isSimpleRect:(BOOL)rect animated:(BOOL)animated;
- (void)updateTheme:(int)theme animated:(BOOL)animated;
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

- (void)ensureHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_ensureHidden != hidden)
  {
    self->_ensureHidden = hidden;
    if (animated)
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

- (void)updateTheme:(int)theme animated:(BOOL)animated
{
  if (self->_theme != theme)
  {
    self->_theme = theme;
    if (animated)
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

- (void)updateLevel:(int)level animated:(BOOL)animated
{
  if (self->_level != level)
  {
    self->_level = level;
    if (animated)
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

- (void)updatePath:(id)path frame:(CGRect)frame isSimpleRect:(BOOL)rect animated:(BOOL)animated
{
  rectCopy = rect;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pathCopy = path;
  [(HNDBubbleCursorLayer *)self setSimpleRect:rectCopy];
  if (!animated)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
  }

  if (pathCopy)
  {
    [(HNDBubbleCursorLayer *)self setFrame:x, y, width, height];
    [(HNDBubbleCursorLayer *)self _updatePresentationProperties];
    v13 = pathCopy;
    -[HNDBubbleCursorLayer setPath:](self, "setPath:", [pathCopy CGPath]);
    if (animated)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(HNDBubbleCursorLayer *)self _updatePresentationProperties];
  if (!animated)
  {
LABEL_5:
    +[CATransaction commit];
  }

LABEL_6:
}

- (void)_updatePresentationProperties
{
  theme = [(HNDBubbleCursorLayer *)self theme];
  level = [(HNDBubbleCursorLayer *)self level];
  v5 = sub_100042DE0();
  if (level)
  {
    ensureHidden = self->_ensureHidden;
  }

  else
  {
    ensureHidden = 1;
  }

  [(HNDBubbleCursorLayer *)self setHidden:ensureHidden];
  v7 = [(HNDBubbleCursorLayer *)self _strokeColorForTheme:theme level:level pointerSizeMultiplier:v5];
  [(HNDBubbleCursorLayer *)self setRestingStrokeColor:v7];

  restingStrokeColor = [(HNDBubbleCursorLayer *)self restingStrokeColor];
  -[HNDBubbleCursorLayer setStrokeColor:](self, "setStrokeColor:", [restingStrokeColor CGColor]);

  v9 = [(HNDBubbleCursorLayer *)self _fillColorForTheme:theme level:level pointerSizeMultiplier:v5];
  [(HNDBubbleCursorLayer *)self setRestingFillColor:v9];

  restingFillColor = [(HNDBubbleCursorLayer *)self restingFillColor];
  -[HNDBubbleCursorLayer setFillColor:](self, "setFillColor:", [restingFillColor CGColor]);

  [(HNDBubbleCursorLayer *)self _boundsInsetForTheme:theme level:level pointerSizeMultiplier:v5];
  [(HNDBubbleCursorLayer *)self setBoundsInset:?];
  [(HNDBubbleCursorLayer *)self _borderWidthForTheme:theme level:level pointerSizeMultiplier:v5];
  [(HNDBubbleCursorLayer *)self setLineWidth:?];
  v11 = [(HNDBubbleCursorLayer *)self _borderPatternForTheme:theme level:level pointerSizeMultiplier:v5];
  [(HNDBubbleCursorLayer *)self setLineDashPattern:v11];

  [(HNDBubbleCursorLayer *)self _opacityForTheme:theme level:level pointerSizeMultiplier:v5];
  *&v12 = v12;

  [(HNDBubbleCursorLayer *)self setOpacity:v12];
}

- (double)valueForPointerSizeMultipler:(double)multipler withBaseValue:(double)value
{
  if (sub_100042DE0() > 0.0)
  {
    return (sub_100042DE0() * (multipler + -1.0) + 1.0) * value;
  }

  return value;
}

- (double)_opacityForTheme:(int)theme level:(int)level pointerSizeMultiplier:(double)multiplier
{
  result = 0.6;
  if (level != 2)
  {
    return 1.0;
  }

  return result;
}

@end