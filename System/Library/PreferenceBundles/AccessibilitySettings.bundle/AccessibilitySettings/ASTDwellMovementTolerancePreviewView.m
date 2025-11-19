@interface ASTDwellMovementTolerancePreviewView
- (ASTDwellMovementTolerancePreviewView)initWithSpecifier:(id)a3;
- (double)_movementToleranceRadius;
- (double)preferredHeightForWidth:(double)a3;
- (void)_updateCurrentAppearanceIfNeeded;
- (void)didMoveToSuperview;
- (void)drawCircleWithRadius:(double)a3;
- (void)layoutSubviews;
- (void)setupPreview;
@end

@implementation ASTDwellMovementTolerancePreviewView

- (ASTDwellMovementTolerancePreviewView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ASTDwellMovementTolerancePreviewView;
  v5 = [(ASTDwellMovementTolerancePreviewView *)&v17 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(ASTDwellMovementTolerancePreviewView *)v5 setupPreview];
    v7 = [v4 propertyForKey:@"DwellMovementToleranceClientType"];

    if (v7)
    {
      objc_initWeak(&location, v6);
      v8 = [v4 propertyForKey:@"DwellMovementToleranceClientType"];
      v6->_clientType = [v8 unsignedIntegerValue];

      if (v6->_clientType == 1)
      {
        v9 = +[AXSettings sharedInstance];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = __58__ASTDwellMovementTolerancePreviewView_initWithSpecifier___block_invoke;
        v14[3] = &unk_255388;
        v10 = &v15;
        objc_copyWeak(&v15, &location);
        [v9 registerUpdateBlock:v14 forRetrieveSelector:"switchControlCameraPointPickerDwellMovementToleranceRadius" withListener:v6];
      }

      else
      {
        v9 = +[AXSettings sharedInstance];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = __58__ASTDwellMovementTolerancePreviewView_initWithSpecifier___block_invoke_2;
        v12[3] = &unk_255388;
        v10 = &v13;
        objc_copyWeak(&v13, &location);
        [v9 registerUpdateBlock:v12 forRetrieveSelector:"assistiveTouchMouseDwellControlMovementToleranceRadius" withListener:v6];
      }

      objc_destroyWeak(v10);
      objc_destroyWeak(&location);
    }
  }

  return v6;
}

void __58__ASTDwellMovementTolerancePreviewView_initWithSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  [v1 switchControlCameraPointPickerDwellMovementToleranceRadius];
  [WeakRetained drawCircleWithRadius:?];
}

void __58__ASTDwellMovementTolerancePreviewView_initWithSpecifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  [v1 assistiveTouchMouseDwellControlMovementToleranceRadius];
  [WeakRetained drawCircleWithRadius:?];
}

- (double)preferredHeightForWidth:(double)a3
{
  v4 = kAXSAssistiveTouchMouseDwellControlMovementToleranceMax;
  [(ASTDwellMovementTolerancePreviewView *)self layoutMargins];
  v6 = v5 + v4 * 2.0;
  [(ASTDwellMovementTolerancePreviewView *)self layoutMargins];
  return v6 + v7;
}

- (double)_movementToleranceRadius
{
  v3 = [(ASTDwellMovementTolerancePreviewView *)self clientType];
  if (!v3)
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMouseDwellControlMovementToleranceRadius];
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = +[AXSettings sharedInstance];
    [v4 switchControlCameraPointPickerDwellMovementToleranceRadius];
LABEL_5:
    v2 = v5;
  }

  return v2;
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = ASTDwellMovementTolerancePreviewView;
  [(ASTDwellMovementTolerancePreviewView *)&v4 didMoveToSuperview];
  v3 = [(ASTDwellMovementTolerancePreviewView *)self superview];

  if (v3)
  {
    [(ASTDwellMovementTolerancePreviewView *)self _movementToleranceRadius];
    [(ASTDwellMovementTolerancePreviewView *)self drawCircleWithRadius:?];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ASTDwellMovementTolerancePreviewView;
  [(ASTDwellMovementTolerancePreviewView *)&v3 layoutSubviews];
  [(ASTDwellMovementTolerancePreviewView *)self _updateCurrentAppearanceIfNeeded];
}

- (void)_updateCurrentAppearanceIfNeeded
{
  v3 = [(ASTDwellMovementTolerancePreviewView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = 1;
  if (v4 == &dword_0 + 2)
  {
    v5 = 2;
  }

  if (self->_currentAppearance != v5)
  {
    self->_currentAppearance = v5;
    [(CAShapeLayer *)self->_circleLayer removeFromSuperlayer];
    [(ASTDwellMovementTolerancePreviewView *)self setupPreview];
    [(ASTDwellMovementTolerancePreviewView *)self _movementToleranceRadius];

    [(ASTDwellMovementTolerancePreviewView *)self drawCircleWithRadius:?];
  }
}

- (void)setupPreview
{
  v3 = +[CAShapeLayer layer];
  circleLayer = self->_circleLayer;
  self->_circleLayer = v3;

  v5 = self->_circleLayer;
  v6 = +[UIColor labelColor];
  -[CAShapeLayer setStrokeColor:](v5, "setStrokeColor:", [v6 CGColor]);

  v7 = self->_circleLayer;
  v8 = +[UIColor tertiaryLabelColor];
  -[CAShapeLayer setFillColor:](v7, "setFillColor:", [v8 CGColor]);

  v9 = [(ASTDwellMovementTolerancePreviewView *)self layer];
  [v9 addSublayer:self->_circleLayer];
}

- (void)drawCircleWithRadius:(double)a3
{
  [(ASTDwellMovementTolerancePreviewView *)self bounds];
  AX_CGRectGetCenter();
  v6 = v5 - a3;
  v8 = v7 - a3;
  v9 = a3 + a3;
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

@end