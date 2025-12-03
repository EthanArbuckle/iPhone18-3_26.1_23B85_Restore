@interface AXGestureDistancePreviewView
- (AXGestureDistancePreviewView)initWithSpecifier:(id)specifier;
- (SEL)settingsGetter;
- (double)circleRadius;
- (double)maximumCircleRadius;
- (void)drawCircleWithRadius:(double)radius;
- (void)layoutSubviews;
- (void)setupPreview;
@end

@implementation AXGestureDistancePreviewView

- (AXGestureDistancePreviewView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = AXGestureDistancePreviewView;
  v5 = [(AXGestureDistancePreviewView *)&v13 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(AXGestureDistancePreviewView *)v5 setupPreview];
    objc_initWeak(&location, v6);
    v7 = +[AXSettings sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __50__AXGestureDistancePreviewView_initWithSpecifier___block_invoke;
    v9[3] = &unk_255818;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    [v7 registerUpdateBlock:v9 forRetrieveSelector:-[AXGestureDistancePreviewView settingsGetter](v10 withListener:{"settingsGetter"), v10}];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __50__AXGestureDistancePreviewView_initWithSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) circleRadius];
  [WeakRetained drawCircleWithRadius:?];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = AXGestureDistancePreviewView;
  [(AXGestureDistancePreviewView *)&v11 layoutSubviews];
  [(AXGestureDistancePreviewView *)self bounds];
  v12.origin.x = v3;
  v12.origin.y = v4;
  v12.size.width = v5;
  v12.size.height = v6;
  if (!CGRectEqualToRect(self->_lastSeenBounds, v12))
  {
    [(AXGestureDistancePreviewView *)self bounds];
    self->_lastSeenBounds.origin.x = v7;
    self->_lastSeenBounds.origin.y = v8;
    self->_lastSeenBounds.size.width = v9;
    self->_lastSeenBounds.size.height = v10;
    [(AXGestureDistancePreviewView *)self circleRadius];
    [(AXGestureDistancePreviewView *)self drawCircleWithRadius:?];
  }
}

- (void)setupPreview
{
  v3 = +[CAShapeLayer layer];
  circleLayer = self->_circleLayer;
  self->_circleLayer = v3;

  v5 = self->_circleLayer;
  v6 = +[UIColor darkGrayColor];
  -[CAShapeLayer setStrokeColor:](v5, "setStrokeColor:", [v6 CGColor]);

  v7 = self->_circleLayer;
  v8 = [UIColor colorWithWhite:0.75 alpha:0.75];
  -[CAShapeLayer setFillColor:](v7, "setFillColor:", [v8 CGColor]);

  layer = [(AXGestureDistancePreviewView *)self layer];
  [layer addSublayer:self->_circleLayer];
}

- (void)drawCircleWithRadius:(double)radius
{
  [(AXGestureDistancePreviewView *)self bounds];
  AX_CGRectGetCenter();
  v6 = v5 - radius;
  v8 = v7 - radius;
  v9 = radius + radius;
  v13 = [CABasicAnimation animationWithKeyPath:@"path"];
  [v13 setFromValue:{-[CAShapeLayer path](self->_circleLayer, "path")}];
  v10 = [UIBezierPath bezierPathWithOvalInRect:v6, v8, v9, v9];
  [v13 setToValue:{objc_msgSend(v10, "CGPath")}];

  v11 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  [v13 setTimingFunction:v11];

  v12 = [UIBezierPath bezierPathWithOvalInRect:v6, v8, v9, v9];
  -[CAShapeLayer setPath:](self->_circleLayer, "setPath:", [v12 CGPath]);

  [(CAShapeLayer *)self->_circleLayer addAnimation:v13 forKey:@"changePathAnimation"];
}

- (double)circleRadius
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  return 0.0;
}

- (double)maximumCircleRadius
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  return 0.0;
}

- (SEL)settingsGetter
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  return 0;
}

@end