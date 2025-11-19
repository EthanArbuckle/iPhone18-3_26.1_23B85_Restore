@interface NTK_PUPhotoEditCircularIndicatorView
- (NTK_PUPhotoEditCircularIndicatorView)initWithFrame:(CGRect)a3;
- (UIColor)ringColor;
- (void)_layoutSubLayers;
- (void)_setupLayers;
- (void)_updateProgressLayer;
- (void)layoutSubviews;
- (void)resetToDefaults;
- (void)setCurrentValue:(double)a3;
- (void)setRingColor:(id)a3;
- (void)setThickness:(double)a3;
@end

@implementation NTK_PUPhotoEditCircularIndicatorView

- (NTK_PUPhotoEditCircularIndicatorView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = NTK_PUPhotoEditCircularIndicatorView;
  v3 = [(NTK_PUPhotoEditCircularIndicatorView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTK_PUPhotoEditCircularIndicatorView *)v3 _setupLayers];
    v5 = +[PUPhotoEditProtoSettings sharedInstance];
    [v5 strokeWidth];
    [(NTK_PUPhotoEditCircularIndicatorView *)v4 setThickness:?];

    v4->_minValue = -1.0;
    v4->_maxValue = 1.0;
    v4->_currentValue = 0.0;
    v6 = [UIColor colorWithWhite:0.8 alpha:0.3];
    -[CAShapeLayer setStrokeColor:](v4->_backgroundLayer, "setStrokeColor:", [v6 CGColor]);

    v7 = [UIColor colorWithWhite:0.8 alpha:1.0];
    -[CAShapeLayer setStrokeColor:](v4->_progressLayer, "setStrokeColor:", [v7 CGColor]);
  }

  return v4;
}

- (void)_setupLayers
{
  v3 = +[CAShapeLayer layer];
  [(NTK_PUPhotoEditCircularIndicatorView *)self setBackgroundLayer:v3];

  v4 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v4 setFillColor:0];

  v5 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v5 setStrokeEnd:1.0];

  v6 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v6 setLineWidth:2.5];

  v7 = [(NTK_PUPhotoEditCircularIndicatorView *)self layer];
  v8 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v7 addSublayer:v8];

  v9 = +[CAShapeLayer layer];
  [(NTK_PUPhotoEditCircularIndicatorView *)self setProgressLayer:v9];

  v10 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v10 setFillColor:0];

  v11 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v11 setLineWidth:2.0];

  v12 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v12 setLineCap:kCALineCapRound];

  v13 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v13 setStrokeEnd:0.0];

  v15 = [(NTK_PUPhotoEditCircularIndicatorView *)self layer];
  v14 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v15 addSublayer:v14];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTK_PUPhotoEditCircularIndicatorView;
  [(NTK_PUPhotoEditCircularIndicatorView *)&v3 layoutSubviews];
  [(NTK_PUPhotoEditCircularIndicatorView *)self _layoutSubLayers];
}

- (void)_layoutSubLayers
{
  [(NTK_PUPhotoEditCircularIndicatorView *)self bounds];
  v4 = v3 + -2.5;
  [(NTK_PUPhotoEditCircularIndicatorView *)self bounds];
  v6 = v5 + -2.5;
  v7 = [UIBezierPath _bezierPathWithPillRect:0.0 cornerRadius:0.0, v4, v5 + -2.5, v4 * 0.5];
  v8 = [v7 CGPath];

  v9 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v9 setFrame:{0.0, 0.0, v4, v6}];

  v10 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v10 setPath:v8];

  [(NTK_PUPhotoEditCircularIndicatorView *)self bounds];
  PXRectGetCenter();
  v12 = v11;
  v14 = v13;
  v15 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v15 setPosition:{v12, v14}];

  v16 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v16 setFrame:{0.0, 0.0, v4, v6}];

  v17 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v17 setPath:v8];

  v23 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v23 position];
  v19 = v18;
  v21 = v20;
  v22 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v22 setPosition:{v19, v21}];
}

- (void)setThickness:(double)a3
{
  if (self->_thickness != a3)
  {
    v5 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
    [v5 setLineWidth:a3];

    v6 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
    [v6 setLineWidth:a3 + -0.5];

    [(NTK_PUPhotoEditCircularIndicatorView *)self setNeedsLayout];
  }
}

- (void)setRingColor:(id)a3
{
  v4 = a3;
  v5 = [v4 colorWithAlphaComponent:0.3];
  v6 = [v5 CGColor];
  v7 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v7 setStrokeColor:v6];

  v8 = [v4 CGColor];
  v9 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v9 setStrokeColor:v8];
}

- (UIColor)ringColor
{
  v2 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 strokeColor]);

  return v3;
}

- (void)_updateProgressLayer
{
  v3 = +[CATransaction disableActions];
  [CATransaction setDisableActions:1];
  [(NTK_PUPhotoEditCircularIndicatorView *)self currentValue];
  if (v4 == 0.0)
  {
    v5 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
    [v5 setStrokeEnd:0.0];

    v6 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
    v7 = v6;
    v8 = 0.0;
LABEL_5:
    [v6 setStrokeStart:v8];
    goto LABEL_6;
  }

  [(NTK_PUPhotoEditCircularIndicatorView *)self currentValue];
  v10 = v9;
  v11 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  v12 = v11;
  if (v10 < 0.0)
  {
    [v11 setStrokeEnd:1.0];

    [(NTK_PUPhotoEditCircularIndicatorView *)self currentValue];
    v14 = v13 + 1.0;
    v6 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
    v7 = v6;
    v8 = v14;
    goto LABEL_5;
  }

  [v11 setStrokeStart:0.0];

  [(NTK_PUPhotoEditCircularIndicatorView *)self currentValue];
  v16 = v15;
  v17 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v17 setStrokeEnd:v16];

  v7 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v7 strokeEnd];
  v18 = &kCALineCapButt;
  if (v19 != 1.0)
  {
    v18 = &kCALineCapRound;
  }

  v20 = *v18;
  v21 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v21 setLineCap:v20];

LABEL_6:

  [CATransaction setDisableActions:v3];
}

- (void)setCurrentValue:(double)a3
{
  [(NTK_PUPhotoEditCircularIndicatorView *)self minValue];
  [(NTK_PUPhotoEditCircularIndicatorView *)self maxValue];
  PXClamp();
  if (self->_currentValue != a3)
  {
    self->_currentValue = a3;

    [(NTK_PUPhotoEditCircularIndicatorView *)self _updateProgressLayer];
  }
}

- (void)resetToDefaults
{
  self->_minValue = -1.0;
  self->_maxValue = 1.0;
  self->_currentValue = 0.0;
  [(NTK_PUPhotoEditCircularIndicatorView *)self _updateProgressLayer];
}

@end