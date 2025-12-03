@interface NTK_PUPhotoEditCircularIndicatorView
- (NTK_PUPhotoEditCircularIndicatorView)initWithFrame:(CGRect)frame;
- (UIColor)ringColor;
- (void)_layoutSubLayers;
- (void)_setupLayers;
- (void)_updateProgressLayer;
- (void)layoutSubviews;
- (void)resetToDefaults;
- (void)setCurrentValue:(double)value;
- (void)setRingColor:(id)color;
- (void)setThickness:(double)thickness;
@end

@implementation NTK_PUPhotoEditCircularIndicatorView

- (NTK_PUPhotoEditCircularIndicatorView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = NTK_PUPhotoEditCircularIndicatorView;
  v3 = [(NTK_PUPhotoEditCircularIndicatorView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  backgroundLayer = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer setFillColor:0];

  backgroundLayer2 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer2 setStrokeEnd:1.0];

  backgroundLayer3 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer3 setLineWidth:2.5];

  layer = [(NTK_PUPhotoEditCircularIndicatorView *)self layer];
  backgroundLayer4 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [layer addSublayer:backgroundLayer4];

  v9 = +[CAShapeLayer layer];
  [(NTK_PUPhotoEditCircularIndicatorView *)self setProgressLayer:v9];

  progressLayer = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer setFillColor:0];

  progressLayer2 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer2 setLineWidth:2.0];

  progressLayer3 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer3 setLineCap:kCALineCapRound];

  progressLayer4 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer4 setStrokeEnd:0.0];

  layer2 = [(NTK_PUPhotoEditCircularIndicatorView *)self layer];
  progressLayer5 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [layer2 addSublayer:progressLayer5];
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
  cGPath = [v7 CGPath];

  backgroundLayer = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer setFrame:{0.0, 0.0, v4, v6}];

  backgroundLayer2 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer2 setPath:cGPath];

  [(NTK_PUPhotoEditCircularIndicatorView *)self bounds];
  PXRectGetCenter();
  v12 = v11;
  v14 = v13;
  backgroundLayer3 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer3 setPosition:{v12, v14}];

  progressLayer = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer setFrame:{0.0, 0.0, v4, v6}];

  progressLayer2 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer2 setPath:cGPath];

  backgroundLayer4 = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer4 position];
  v19 = v18;
  v21 = v20;
  progressLayer3 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer3 setPosition:{v19, v21}];
}

- (void)setThickness:(double)thickness
{
  if (self->_thickness != thickness)
  {
    backgroundLayer = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
    [backgroundLayer setLineWidth:thickness];

    progressLayer = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
    [progressLayer setLineWidth:thickness + -0.5];

    [(NTK_PUPhotoEditCircularIndicatorView *)self setNeedsLayout];
  }
}

- (void)setRingColor:(id)color
{
  colorCopy = color;
  v5 = [colorCopy colorWithAlphaComponent:0.3];
  cGColor = [v5 CGColor];
  backgroundLayer = [(NTK_PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer setStrokeColor:cGColor];

  cGColor2 = [colorCopy CGColor];
  progressLayer = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer setStrokeColor:cGColor2];
}

- (UIColor)ringColor
{
  progressLayer = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [progressLayer strokeColor]);

  return v3;
}

- (void)_updateProgressLayer
{
  v3 = +[CATransaction disableActions];
  [CATransaction setDisableActions:1];
  [(NTK_PUPhotoEditCircularIndicatorView *)self currentValue];
  if (v4 == 0.0)
  {
    progressLayer = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
    [progressLayer setStrokeEnd:0.0];

    progressLayer2 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
    progressLayer5 = progressLayer2;
    v8 = 0.0;
LABEL_5:
    [progressLayer2 setStrokeStart:v8];
    goto LABEL_6;
  }

  [(NTK_PUPhotoEditCircularIndicatorView *)self currentValue];
  v10 = v9;
  progressLayer3 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  v12 = progressLayer3;
  if (v10 < 0.0)
  {
    [progressLayer3 setStrokeEnd:1.0];

    [(NTK_PUPhotoEditCircularIndicatorView *)self currentValue];
    v14 = v13 + 1.0;
    progressLayer2 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
    progressLayer5 = progressLayer2;
    v8 = v14;
    goto LABEL_5;
  }

  [progressLayer3 setStrokeStart:0.0];

  [(NTK_PUPhotoEditCircularIndicatorView *)self currentValue];
  v16 = v15;
  progressLayer4 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer4 setStrokeEnd:v16];

  progressLayer5 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer5 strokeEnd];
  v18 = &kCALineCapButt;
  if (v19 != 1.0)
  {
    v18 = &kCALineCapRound;
  }

  v20 = *v18;
  progressLayer6 = [(NTK_PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer6 setLineCap:v20];

LABEL_6:

  [CATransaction setDisableActions:v3];
}

- (void)setCurrentValue:(double)value
{
  [(NTK_PUPhotoEditCircularIndicatorView *)self minValue];
  [(NTK_PUPhotoEditCircularIndicatorView *)self maxValue];
  PXClamp();
  if (self->_currentValue != value)
  {
    self->_currentValue = value;

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