@interface TUIProgressView
+ (id)renderModelWithIdentifier:(id)a3 progressId:(id)a4 mode:(id)a5 value:(double)a6 dynamicProgress:(id)a7 paused:(BOOL)a8 color:(id)a9;
- (double)_computeCurrentValue:(id)a3;
- (void)_configureWithModel:(id)a3;
- (void)_setupDeterminateBackgroundLayers;
- (void)_setupProgressLayer;
- (void)_teardownDeterminateBackgroundLayers;
- (void)_updateLayerGeometry:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)dynamicProgressChanged:(id)a3;
@end

@implementation TUIProgressView

+ (id)renderModelWithIdentifier:(id)a3 progressId:(id)a4 mode:(id)a5 value:(double)a6 dynamicProgress:(id)a7 paused:(BOOL)a8 color:(id)a9
{
  v10 = a8;
  v14 = a5;
  v15 = a9;
  v16 = a7;
  v17 = a3;
  v18 = objc_alloc_init(_TUIProgressRenderModel);
  v19 = [v14 lowercaseString];
  v20 = [v19 caseInsensitiveCompare:@"determinate"];

  if (v20)
  {
    v21 = [v14 lowercaseString];
    v22 = [v21 caseInsensitiveCompare:@"determinate-small"];

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 0;
  }

  [(_TUIProgressRenderModel *)v18 setMode:v23];
  [(_TUIProgressRenderModel *)v18 setValue:a6];
  [(_TUIProgressRenderModel *)v18 setDynamicProgress:v16];

  [(_TUIProgressRenderModel *)v18 setPaused:v10];
  [(_TUIProgressRenderModel *)v18 setColor:v15];

  v24 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierProgressView" identifier:v17 submodel:v18];

  return v24;
}

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = TUIProgressView;
  v4 = a3;
  [(TUIReusableBaseView *)&v7 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 submodel];
  [(TUIProgressView *)self _configureWithModel:v6];
}

- (void)_configureWithModel:(id)a3
{
  v12 = a3;
  v5 = [(TUIProgressView *)self dynamicProgress];
  [v5 unregisterProgressObserver:self];

  objc_storeStrong(&self->_renderModel, a3);
  self->_mode = [(_TUIProgressRenderModel *)self->_renderModel mode];
  [(_TUIProgressRenderModel *)self->_renderModel value];
  self->_value = v6;
  v7 = [(_TUIProgressRenderModel *)self->_renderModel dynamicProgress];
  dynamicProgress = self->_dynamicProgress;
  self->_dynamicProgress = v7;

  self->_paused = [(_TUIProgressRenderModel *)self->_renderModel paused];
  v9 = [(_TUIProgressRenderModel *)self->_renderModel color];
  v10 = v9;
  if (!v9)
  {
    v10 = +[UIColor redColor];
  }

  objc_storeStrong(&self->_color, v10);
  if (!v9)
  {
  }

  if ([(TUIProgressView *)self isDeterminate])
  {
    [(TUIProgressView *)self _setupDeterminateBackgroundLayers];
  }

  else
  {
    [(TUIProgressView *)self _teardownDeterminateBackgroundLayers];
  }

  [(TUIProgressView *)self _setupProgressLayer];
  v11 = [(TUIProgressView *)self dynamicProgress];
  [v11 registerProgressObserver:self];
}

- (void)_updateLayerGeometry:(id)a3
{
  v16 = a3;
  [(TUIProgressView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v16 bounds];
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  if (!CGRectEqualToRect(v18, v21))
  {
    [v16 setBounds:{v5, v7, v9, v11}];
  }

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  MidY = CGRectGetMidY(v20);
  [v16 position];
  if (v15 != MidX || v14 != MidY)
  {
    [v16 setPosition:{MidX, MidY}];
  }
}

- (void)_setupDeterminateBackgroundLayers
{
  [(TUIProgressView *)self bounds];
  determinateOuterCircleLayer = self->_determinateOuterCircleLayer;
  v5 = v4 / 27.0;
  if (!determinateOuterCircleLayer)
  {
    v6 = +[CAShapeLayer layer];
    v7 = self->_determinateOuterCircleLayer;
    self->_determinateOuterCircleLayer = v6;

    v8 = [(TUIProgressView *)self layer];
    [v8 addSublayer:self->_determinateOuterCircleLayer];

    determinateOuterCircleLayer = self->_determinateOuterCircleLayer;
  }

  [(TUIProgressView *)self _updateLayerGeometry:determinateOuterCircleLayer];
  [(CAShapeLayer *)self->_determinateOuterCircleLayer setFillColor:0];
  [(CAShapeLayer *)self->_determinateOuterCircleLayer setStrokeColor:[(UIColor *)self->_color CGColor]];
  [(CAShapeLayer *)self->_determinateOuterCircleLayer setLineWidth:v5 * 1.5];
  [(TUIProgressView *)self bounds];
  v24 = CGRectInset(v23, v5 * 1.5 * 0.5, v5 * 1.5 * 0.5);
  v9 = CGPathCreateWithEllipseInRect(v24, 0);
  [(CAShapeLayer *)self->_determinateOuterCircleLayer setPath:v9];
  CGPathRelease(v9);
  determinateIconLayer = self->_determinateIconLayer;
  if (!determinateIconLayer)
  {
    if (self->_mode == 2)
    {
      determinateIconLayer = 0;
    }

    else
    {
      v11 = +[CAShapeLayer layer];
      v12 = self->_determinateIconLayer;
      self->_determinateIconLayer = v11;

      v13 = [(TUIProgressView *)self layer];
      [v13 addSublayer:self->_determinateIconLayer];

      determinateIconLayer = self->_determinateIconLayer;
    }
  }

  [(TUIProgressView *)self _updateLayerGeometry:determinateIconLayer];
  [(CAShapeLayer *)self->_determinateIconLayer setFillColor:[(UIColor *)self->_color CGColor]];
  [(CAShapeLayer *)self->_determinateIconLayer setStrokeColor:0];
  Mutable = CGPathCreateMutable();
  [(TUIProgressView *)self bounds];
  MidX = CGRectGetMidX(v25);
  [(TUIProgressView *)self bounds];
  MidY = CGRectGetMidY(v26);
  v17 = v5 * 8.0;
  if (self->_paused)
  {
    v18 = v5 * 3.0;
    v19 = MidX - v17 * 0.5;
    v20 = MidY - v17 * 0.5;
    v27.origin.x = v19;
    v27.origin.y = v20;
    v27.size.width = v5 * 3.0;
    v27.size.height = v5 * 8.0;
    CGPathAddRoundedRect(Mutable, 0, v27, v5, v5);
    v21 = v5 * 3.0 + v5 + v5 + v19;
  }

  else
  {
    v21 = MidX - v17 * 0.5;
    v20 = MidY - v17 * 0.5;
    v18 = v5 * 8.0;
  }

  v28.origin.x = v21;
  v28.origin.y = v20;
  v28.size.width = v18;
  v28.size.height = v5 * 8.0;
  CGPathAddRoundedRect(Mutable, 0, v28, v5, v5);
  [(CAShapeLayer *)self->_determinateIconLayer setPath:Mutable];

  CGPathRelease(Mutable);
}

- (void)_teardownDeterminateBackgroundLayers
{
  [(CAShapeLayer *)self->_determinateOuterCircleLayer removeFromSuperlayer];
  determinateOuterCircleLayer = self->_determinateOuterCircleLayer;
  self->_determinateOuterCircleLayer = 0;

  [(CAShapeLayer *)self->_determinateIconLayer removeFromSuperlayer];
  determinateIconLayer = self->_determinateIconLayer;
  self->_determinateIconLayer = 0;
}

- (double)_computeCurrentValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 progress], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 progress];
    [v7 floatValue];
    value = v8;
  }

  else
  {
    value = self->_value;
  }

  return value;
}

- (void)_setupProgressLayer
{
  progressLayer = self->_progressLayer;
  if (!progressLayer)
  {
    v4 = objc_opt_new();
    v5 = self->_progressLayer;
    self->_progressLayer = v4;

    v6 = [(TUIProgressView *)self layer];
    [v6 addSublayer:self->_progressLayer];

    progressLayer = self->_progressLayer;
  }

  [(TUIProgressView *)self _updateLayerGeometry:progressLayer];
  [(TUIRadialProgressLayer *)self->_progressLayer setStrokeColor:[(UIColor *)self->_color CGColor]];
  v7 = self->_progressLayer;
  mode = self->_mode;
  [(TUIRadialProgressLayer *)v7 bounds];
  [(TUIRadialProgressLayer *)v7 setupWithMode:mode rect:?];
  if ([(TUIProgressView *)self isDeterminate])
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(TUIProgressView *)self _computeCurrentValue:self->_dynamicProgress];
    [(TUIRadialProgressLayer *)self->_progressLayer setValue:?];
    CATransform3DMakeRotation(&v11, -1.57079633, 0.0, 0.0, 1.0);
    v9 = self->_progressLayer;
    v10 = v11;
    [(TUIRadialProgressLayer *)v9 setTransform:&v10];
    +[CATransaction commit];
  }
}

- (void)dynamicProgressChanged:(id)a3
{
  v4 = a3;
  if (+[NSThread isMainThread])
  {
    [(TUIProgressView *)self _computeCurrentValue:v4];
    [(TUIRadialProgressLayer *)self->_progressLayer setValue:?];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_5126C;
    v5[3] = &unk_25DCA0;
    v5[4] = self;
    v6 = v4;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)dealloc
{
  v3 = [(TUIProgressView *)self dynamicProgress];
  [v3 unregisterProgressObserver:self];

  v4.receiver = self;
  v4.super_class = TUIProgressView;
  [(TUIProgressView *)&v4 dealloc];
}

@end