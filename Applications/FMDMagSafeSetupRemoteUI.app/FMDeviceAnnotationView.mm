@interface FMDeviceAnnotationView
- (FMDeviceAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (FMDeviceAnnotationView)initWithCoder:(id)coder;
- (id)_bezierPathWithBalloonRadius:(double)radius tailLength:(double)length;
- (void)_applyCircularShadowToLayer:(id)layer bounds:(CGRect)bounds;
- (void)_setupLayers;
- (void)_updateAnnotation:(id)annotation;
- (void)_updateAppearance;
- (void)_updateDynamicLayers;
- (void)prepareForDisplay;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMDeviceAnnotationView

- (FMDeviceAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = FMDeviceAnnotationView;
  v4 = [(FMDeviceAnnotationView *)&v8 initWithAnnotation:annotation reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(CAShapeLayer);
    [(FMDeviceAnnotationView *)v4 setBalloonLayer:v5];

    v6 = objc_alloc_init(CALayer);
    [(FMDeviceAnnotationView *)v4 setBalloonImage:v6];

    [(FMDeviceAnnotationView *)v4 setCanShowCallout:1];
    [(FMDeviceAnnotationView *)v4 _setupLayers];
    [(FMDeviceAnnotationView *)v4 _updateAppearance];
  }

  return v4;
}

- (FMDeviceAnnotationView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = FMDeviceAnnotationView;
  return [(FMDeviceAnnotationView *)&v4 initWithCoder:coder];
}

- (void)prepareForDisplay
{
  v4.receiver = self;
  v4.super_class = FMDeviceAnnotationView;
  [(FMDeviceAnnotationView *)&v4 prepareForDisplay];
  annotation = [(FMDeviceAnnotationView *)self annotation];
  [(FMDeviceAnnotationView *)self _updateAnnotation:annotation];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = FMDeviceAnnotationView;
  [(FMDeviceAnnotationView *)&v4 traitCollectionDidChange:change];
  [(FMDeviceAnnotationView *)self _updateAppearance];
}

- (void)_setupLayers
{
  v3 = [(FMDeviceAnnotationView *)self _bezierPathWithBalloonRadius:30.0 tailLength:7.5];
  cGPath = [v3 CGPath];
  balloonLayer = [(FMDeviceAnnotationView *)self balloonLayer];
  [balloonLayer setPath:cGPath];

  balloonLayer2 = [(FMDeviceAnnotationView *)self balloonLayer];
  [balloonLayer2 setFrame:{4.0, 0.0, 60.0, 67.5}];

  balloonLayer3 = [(FMDeviceAnnotationView *)self balloonLayer];
  balloonImage = [(FMDeviceAnnotationView *)self balloonImage];
  [balloonLayer3 addSublayer:balloonImage];

  balloonLayer4 = [(FMDeviceAnnotationView *)self balloonLayer];
  balloonLayer5 = [(FMDeviceAnnotationView *)self balloonLayer];
  [balloonLayer5 bounds];
  [(FMDeviceAnnotationView *)self _applyCircularShadowToLayer:balloonLayer4 bounds:?];

  layer = [(FMDeviceAnnotationView *)self layer];
  balloonLayer6 = [(FMDeviceAnnotationView *)self balloonLayer];
  [layer addSublayer:balloonLayer6];

  layer2 = [(FMDeviceAnnotationView *)self layer];
  [layer2 setFrame:{0.0, 0.0, 68.0, 161.0}];

  [(FMDeviceAnnotationView *)self _updateDynamicLayers];
  balloonLayer7 = [(FMDeviceAnnotationView *)self balloonLayer];
  v15 = *&CATransform3DIdentity.m33;
  v19[4] = *&CATransform3DIdentity.m31;
  v19[5] = v15;
  v16 = *&CATransform3DIdentity.m43;
  v19[6] = *&CATransform3DIdentity.m41;
  v19[7] = v16;
  v17 = *&CATransform3DIdentity.m13;
  v19[0] = *&CATransform3DIdentity.m11;
  v19[1] = v17;
  v18 = *&CATransform3DIdentity.m23;
  v19[2] = *&CATransform3DIdentity.m21;
  v19[3] = v18;
  [balloonLayer7 setTransform:v19];
}

- (void)_updateDynamicLayers
{
  balloonImage = [(FMDeviceAnnotationView *)self balloonImage];
  [balloonImage setFrame:{0.0, 0.0, 60.0, 60.0}];
}

- (void)_updateAnnotation:(id)annotation
{
  [(FMDeviceAnnotationView *)self _updateDynamicLayers];
  deviceImage = [(FMDeviceAnnotationView *)self deviceImage];
  cGImage = [deviceImage CGImage];
  balloonImage = [(FMDeviceAnnotationView *)self balloonImage];
  [balloonImage setContents:cGImage];

  layer = [(FMDeviceAnnotationView *)self layer];
  [layer setAnchorPoint:{0.5, 0.5}];
}

- (void)_updateAppearance
{
  v3 = +[UITraitCollection currentTraitCollection];
  userInterfaceStyle = [v3 userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    +[UIColor systemGray3Color];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v8 = ;
  v5 = v8;
  cGColor = [v8 CGColor];
  balloonLayer = [(FMDeviceAnnotationView *)self balloonLayer];
  [balloonLayer setFillColor:cGColor];
}

- (id)_bezierPathWithBalloonRadius:(double)radius tailLength:(double)length
{
  v6 = length / 6.0;
  v13 = radius * 0.448;
  v12 = radius * 0.385;
  v7 = length / 3.0;
  v8 = objc_alloc_init(UIBezierPath);
  [v8 moveToPoint:{radius + radius, radius}];
  v9 = length * 0.5;
  [v8 addCurveToPoint:v7 + length * 0.5 + radius controlPoint1:radius + radius controlPoint2:radius + radius];
  v10 = radius + radius + length;
  [v8 addCurveToPoint:radius controlPoint1:v10 controlPoint2:{v7 + radius, radius + radius + v7, v6 + radius, v10}];
  [v8 addCurveToPoint:radius - (v9 + v7) controlPoint1:radius + radius controlPoint2:{radius - v6, v10, radius - v7, radius + radius + v7}];
  [v8 addCurveToPoint:0.0 controlPoint1:radius controlPoint2:{v12, radius + radius - v7, 0.0, radius * 1.5}];
  [v8 addCurveToPoint:radius controlPoint1:0.0 controlPoint2:{0.0, v13, v13, 0.0}];
  [v8 addCurveToPoint:radius + radius controlPoint1:radius controlPoint2:{radius + radius - v13, 0.0, radius + radius, v13}];
  [v8 closePath];

  return v8;
}

- (void)_applyCircularShadowToLayer:(id)layer bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = *&CGAffineTransformIdentity.c;
  *&v13.a = *&CGAffineTransformIdentity.a;
  *&v13.c = v8;
  *&v13.tx = *&CGAffineTransformIdentity.tx;
  layerCopy = layer;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = CGPathCreateWithEllipseInRect(v14, &v13);
  [layerCopy setShadowPath:{v10, *&v13.a, *&v13.c, *&v13.tx}];
  v11 = +[UIColor blackColor];
  [layerCopy setShadowColor:{objc_msgSend(v11, "CGColor")}];

  [layerCopy setShadowOffset:{0.0, 0.0}];
  LODWORD(v12) = 1045220557;
  [layerCopy setShadowOpacity:v12];
  [layerCopy setShadowRadius:4.0];
}

@end