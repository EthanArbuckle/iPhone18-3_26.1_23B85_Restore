@interface BKShapeView
- (BKShapeView)init;
- (UIBezierPath)path;
- (double)lineWidth;
- (id)_tintColorToUse;
- (void)_syncFillColor;
- (void)_syncStrokeColor;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)setFillColor:(id)a3;
- (void)setIgnoresTintColorAlpha:(BOOL)a3;
- (void)setLineWidth:(double)a3;
- (void)setPath:(id)a3;
- (void)setStrokeColor:(id)a3;
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

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(BKShapeView *)self fillColor:a3];
  v6 = [v5 CGColor];
  v7 = [(BKShapeView *)self layer];
  [v7 setFillColor:v6];

  v11 = [(BKShapeView *)self strokeColor];
  v8 = v11;
  v9 = [v11 CGColor];
  v10 = [(BKShapeView *)self layer];
  [v10 setStrokeColor:v9];
}

- (UIBezierPath)path
{
  v2 = [(BKShapeView *)self layer];
  v3 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [v2 path]);

  return v3;
}

- (void)setPath:(id)a3
{
  v5 = a3;
  v6 = [a3 CGPath];
  v7 = [(BKShapeView *)self layer];
  [v7 setPath:v6];
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (self->_fillColor != v5)
  {
    v9 = v5;
    v5 = [(UIColor *)v5 isEqual:?];
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_fillColor, a3);
      v6 = v9;
      v7 = [v9 CGColor];
      v8 = [(BKShapeView *)self layer];
      [v8 setFillColor:v7];
    }
  }

  _objc_release_x1(v5);
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  if (self->_strokeColor != v5)
  {
    v9 = v5;
    v5 = [(UIColor *)v5 isEqual:?];
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_strokeColor, a3);
      v6 = v9;
      v7 = [v9 CGColor];
      v8 = [(BKShapeView *)self layer];
      [v8 setStrokeColor:v7];
    }
  }

  _objc_release_x1(v5);
}

- (double)lineWidth
{
  v2 = [(BKShapeView *)self layer];
  [v2 lineWidth];
  v4 = v3;

  return v4;
}

- (void)setLineWidth:(double)a3
{
  v4 = [(BKShapeView *)self layer];
  [v4 setLineWidth:a3];
}

- (void)setIgnoresTintColorAlpha:(BOOL)a3
{
  self->_ignoresTintColorAlpha = a3;
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
  v3 = [(BKShapeView *)self ignoresTintColorAlpha];
  v4 = [(BKShapeView *)self tintColor];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 colorWithAlphaComponent:1.0];

    v5 = v6;
  }

  return v5;
}

- (void)_syncStrokeColor
{
  if ([(BKShapeView *)self strokeColorUsesTintColor])
  {
    v3 = [(BKShapeView *)self _tintColorToUse];
    [(BKShapeView *)self setStrokeColor:v3];
  }
}

- (void)_syncFillColor
{
  if ([(BKShapeView *)self fillColorUsesTintColor])
  {
    v3 = [(BKShapeView *)self _tintColorToUse];
    [(BKShapeView *)self setFillColor:v3];
  }
}

@end