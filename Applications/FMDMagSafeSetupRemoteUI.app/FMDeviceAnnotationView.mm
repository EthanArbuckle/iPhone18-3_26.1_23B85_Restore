@interface FMDeviceAnnotationView
- (FMDeviceAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (FMDeviceAnnotationView)initWithCoder:(id)a3;
- (id)_bezierPathWithBalloonRadius:(double)a3 tailLength:(double)a4;
- (void)_applyCircularShadowToLayer:(id)a3 bounds:(CGRect)a4;
- (void)_setupLayers;
- (void)_updateAnnotation:(id)a3;
- (void)_updateAppearance;
- (void)_updateDynamicLayers;
- (void)prepareForDisplay;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMDeviceAnnotationView

- (FMDeviceAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = FMDeviceAnnotationView;
  v4 = [(FMDeviceAnnotationView *)&v8 initWithAnnotation:a3 reuseIdentifier:a4];
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

- (FMDeviceAnnotationView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = FMDeviceAnnotationView;
  return [(FMDeviceAnnotationView *)&v4 initWithCoder:a3];
}

- (void)prepareForDisplay
{
  v4.receiver = self;
  v4.super_class = FMDeviceAnnotationView;
  [(FMDeviceAnnotationView *)&v4 prepareForDisplay];
  v3 = [(FMDeviceAnnotationView *)self annotation];
  [(FMDeviceAnnotationView *)self _updateAnnotation:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = FMDeviceAnnotationView;
  [(FMDeviceAnnotationView *)&v4 traitCollectionDidChange:a3];
  [(FMDeviceAnnotationView *)self _updateAppearance];
}

- (void)_setupLayers
{
  v3 = [(FMDeviceAnnotationView *)self _bezierPathWithBalloonRadius:30.0 tailLength:7.5];
  v4 = [v3 CGPath];
  v5 = [(FMDeviceAnnotationView *)self balloonLayer];
  [v5 setPath:v4];

  v6 = [(FMDeviceAnnotationView *)self balloonLayer];
  [v6 setFrame:{4.0, 0.0, 60.0, 67.5}];

  v7 = [(FMDeviceAnnotationView *)self balloonLayer];
  v8 = [(FMDeviceAnnotationView *)self balloonImage];
  [v7 addSublayer:v8];

  v9 = [(FMDeviceAnnotationView *)self balloonLayer];
  v10 = [(FMDeviceAnnotationView *)self balloonLayer];
  [v10 bounds];
  [(FMDeviceAnnotationView *)self _applyCircularShadowToLayer:v9 bounds:?];

  v11 = [(FMDeviceAnnotationView *)self layer];
  v12 = [(FMDeviceAnnotationView *)self balloonLayer];
  [v11 addSublayer:v12];

  v13 = [(FMDeviceAnnotationView *)self layer];
  [v13 setFrame:{0.0, 0.0, 68.0, 161.0}];

  [(FMDeviceAnnotationView *)self _updateDynamicLayers];
  v14 = [(FMDeviceAnnotationView *)self balloonLayer];
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
  [v14 setTransform:v19];
}

- (void)_updateDynamicLayers
{
  v2 = [(FMDeviceAnnotationView *)self balloonImage];
  [v2 setFrame:{0.0, 0.0, 60.0, 60.0}];
}

- (void)_updateAnnotation:(id)a3
{
  [(FMDeviceAnnotationView *)self _updateDynamicLayers];
  v4 = [(FMDeviceAnnotationView *)self deviceImage];
  v5 = [v4 CGImage];
  v6 = [(FMDeviceAnnotationView *)self balloonImage];
  [v6 setContents:v5];

  v7 = [(FMDeviceAnnotationView *)self layer];
  [v7 setAnchorPoint:{0.5, 0.5}];
}

- (void)_updateAppearance
{
  v3 = +[UITraitCollection currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    +[UIColor systemGray3Color];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v8 = ;
  v5 = v8;
  v6 = [v8 CGColor];
  v7 = [(FMDeviceAnnotationView *)self balloonLayer];
  [v7 setFillColor:v6];
}

- (id)_bezierPathWithBalloonRadius:(double)a3 tailLength:(double)a4
{
  v6 = a4 / 6.0;
  v13 = a3 * 0.448;
  v12 = a3 * 0.385;
  v7 = a4 / 3.0;
  v8 = objc_alloc_init(UIBezierPath);
  [v8 moveToPoint:{a3 + a3, a3}];
  v9 = a4 * 0.5;
  [v8 addCurveToPoint:v7 + a4 * 0.5 + a3 controlPoint1:a3 + a3 controlPoint2:a3 + a3];
  v10 = a3 + a3 + a4;
  [v8 addCurveToPoint:a3 controlPoint1:v10 controlPoint2:{v7 + a3, a3 + a3 + v7, v6 + a3, v10}];
  [v8 addCurveToPoint:a3 - (v9 + v7) controlPoint1:a3 + a3 controlPoint2:{a3 - v6, v10, a3 - v7, a3 + a3 + v7}];
  [v8 addCurveToPoint:0.0 controlPoint1:a3 controlPoint2:{v12, a3 + a3 - v7, 0.0, a3 * 1.5}];
  [v8 addCurveToPoint:a3 controlPoint1:0.0 controlPoint2:{0.0, v13, v13, 0.0}];
  [v8 addCurveToPoint:a3 + a3 controlPoint1:a3 controlPoint2:{a3 + a3 - v13, 0.0, a3 + a3, v13}];
  [v8 closePath];

  return v8;
}

- (void)_applyCircularShadowToLayer:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = *&CGAffineTransformIdentity.c;
  *&v13.a = *&CGAffineTransformIdentity.a;
  *&v13.c = v8;
  *&v13.tx = *&CGAffineTransformIdentity.tx;
  v9 = a3;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = CGPathCreateWithEllipseInRect(v14, &v13);
  [v9 setShadowPath:{v10, *&v13.a, *&v13.c, *&v13.tx}];
  v11 = +[UIColor blackColor];
  [v9 setShadowColor:{objc_msgSend(v11, "CGColor")}];

  [v9 setShadowOffset:{0.0, 0.0}];
  LODWORD(v12) = 1045220557;
  [v9 setShadowOpacity:v12];
  [v9 setShadowRadius:4.0];
}

@end