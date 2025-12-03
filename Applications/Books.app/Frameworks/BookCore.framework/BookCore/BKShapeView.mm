@interface BKShapeView
- (BKShapeView)init;
- (UIBezierPath)path;
- (double)lineWidth;
- (id)_tintColorToUse;
- (void)_syncFillColor;
- (void)_syncStrokeColor;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)setFillColor:(id)color;
- (void)setIgnoresTintColorAlpha:(BOOL)alpha;
- (void)setLineWidth:(double)width;
- (void)setPath:(id)path;
- (void)setStrokeColor:(id)color;
- (void)tintColorDidChange;
@end

@implementation BKShapeView

- (BKShapeView)init
{
  v6.receiver = self;
  v6.super_class = BKShapeView;
  v2 = [(BKShapeView *)&v6 init];
  if (v2)
  {
    v3 = +[UITraitCollection bc_allAPITraits];
    v4 = [(BKShapeView *)v2 registerForTraitChanges:v3 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v2;
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v5 = [(BKShapeView *)self fillColor:change];
  cGColor = [v5 CGColor];
  layer = [(BKShapeView *)self layer];
  [layer setFillColor:cGColor];

  strokeColor = [(BKShapeView *)self strokeColor];
  v8 = strokeColor;
  cGColor2 = [strokeColor CGColor];
  layer2 = [(BKShapeView *)self layer];
  [layer2 setStrokeColor:cGColor2];
}

- (UIBezierPath)path
{
  layer = [(BKShapeView *)self layer];
  v3 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [layer path]);

  return v3;
}

- (void)setPath:(id)path
{
  pathCopy = path;
  cGPath = [path CGPath];
  layer = [(BKShapeView *)self layer];
  [layer setPath:cGPath];
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (self->_fillColor != colorCopy)
  {
    v9 = colorCopy;
    colorCopy = [(UIColor *)colorCopy isEqual:?];
    if ((colorCopy & 1) == 0)
    {
      objc_storeStrong(&self->_fillColor, color);
      v6 = v9;
      cGColor = [v9 CGColor];
      layer = [(BKShapeView *)self layer];
      [layer setFillColor:cGColor];
    }
  }

  _objc_release_x1(colorCopy);
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  if (self->_strokeColor != colorCopy)
  {
    v9 = colorCopy;
    colorCopy = [(UIColor *)colorCopy isEqual:?];
    if ((colorCopy & 1) == 0)
    {
      objc_storeStrong(&self->_strokeColor, color);
      v6 = v9;
      cGColor = [v9 CGColor];
      layer = [(BKShapeView *)self layer];
      [layer setStrokeColor:cGColor];
    }
  }

  _objc_release_x1(colorCopy);
}

- (double)lineWidth
{
  layer = [(BKShapeView *)self layer];
  [layer lineWidth];
  v4 = v3;

  return v4;
}

- (void)setLineWidth:(double)width
{
  layer = [(BKShapeView *)self layer];
  [layer setLineWidth:width];
}

- (void)setIgnoresTintColorAlpha:(BOOL)alpha
{
  self->_ignoresTintColorAlpha = alpha;
  [(BKShapeView *)self _syncFillColor];

  [(BKShapeView *)self _syncStrokeColor];
}

- (void)tintColorDidChange
{
  [(BKShapeView *)self _syncFillColor];

  [(BKShapeView *)self _syncStrokeColor];
}

- (id)_tintColorToUse
{
  ignoresTintColorAlpha = [(BKShapeView *)self ignoresTintColorAlpha];
  tintColor = [(BKShapeView *)self tintColor];
  v5 = tintColor;
  if (ignoresTintColorAlpha)
  {
    v6 = [tintColor colorWithAlphaComponent:1.0];

    v5 = v6;
  }

  return v5;
}

- (void)_syncStrokeColor
{
  if ([(BKShapeView *)self strokeColorUsesTintColor])
  {
    _tintColorToUse = [(BKShapeView *)self _tintColorToUse];
    [(BKShapeView *)self setStrokeColor:_tintColorToUse];
  }
}

- (void)_syncFillColor
{
  if ([(BKShapeView *)self fillColorUsesTintColor])
  {
    _tintColorToUse = [(BKShapeView *)self _tintColorToUse];
    [(BKShapeView *)self setFillColor:_tintColorToUse];
  }
}

@end