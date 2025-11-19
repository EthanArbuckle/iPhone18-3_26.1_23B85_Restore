@interface COSTargetProgressView
- (CAShapeLayer)pathLayer;
- (COSTargetProgressView)initWithOutlinePath:(id)a3;
- (id)scaleAnimationWithScale:(float)a3 path:(CGPath *)a4;
- (void)animateToColor:(id)a3;
- (void)pulseAnimation;
- (void)removeAnimation;
@end

@implementation COSTargetProgressView

- (COSTargetProgressView)initWithOutlinePath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = COSTargetProgressView;
  v6 = [(COSTargetProgressView *)&v9 init];
  if (v6)
  {
    v7 = +[UIColor clearColor];
    [(COSTargetProgressView *)v6 setBackgroundColor:v7];

    objc_storeStrong(&v6->_outlinePath, a3);
    v6->_cachedProgress = -1.0;
  }

  return v6;
}

- (void)animateToColor:(id)a3
{
  v4 = a3;
  v5 = [(COSTargetProgressView *)self pathLayer];

  if (!v5)
  {
    v6 = +[CAShapeLayer layer];
    [v6 setPath:{-[UIBezierPath CGPath](self->_outlinePath, "CGPath")}];
    [v6 setFillColor:0];
    [v6 setLineWidth:6.0];
    v7 = [(COSTargetProgressView *)self layer];
    [v7 addSublayer:v6];

    [(COSTargetProgressView *)self setPathLayer:v6];
  }

  v11 = [CABasicAnimation animationWithKeyPath:@"strokeColor"];
  [v11 setDelegate:self];
  [v11 setToValue:{objc_msgSend(v4, "CGColor")}];
  [v11 setDuration:0.3];
  [v11 setRemovedOnCompletion:0];
  [v11 setFillMode:kCAFillModeForwards];
  v8 = [v4 description];

  v9 = [NSString stringWithFormat:@"strokeColor-%@", v8];

  v10 = [(COSTargetProgressView *)self pathLayer];
  [v10 addAnimation:v11 forKey:v9];
}

- (void)pulseAnimation
{
  v3 = [(COSTargetProgressView *)self pathLayer];
  v4 = [v3 path];
  LODWORD(v5) = 1061997773;
  v12 = [(COSTargetProgressView *)self scaleAnimationWithScale:v4 path:v5];

  v6 = [(COSTargetProgressView *)self pathLayer];
  v7 = [v6 path];
  LODWORD(v8) = 1063675494;
  v9 = [(COSTargetProgressView *)self scaleAnimationWithScale:v7 path:v8];

  [v9 setBeginTime:CACurrentMediaTime() + 0.1];
  v10 = [(COSTargetProgressView *)self pathLayer];
  [v10 addAnimation:v12 forKey:@"scaleDown"];

  v11 = [(COSTargetProgressView *)self pathLayer];
  [v11 addAnimation:v9 forKey:@"scaleUp"];
}

- (id)scaleAnimationWithScale:(float)a3 path:(CGPath *)a4
{
  v6 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v18 = *&CATransform3DIdentity.m33;
  *&v21.m31 = *&CATransform3DIdentity.m31;
  *&v21.m33 = v18;
  v17 = *&CATransform3DIdentity.m43;
  *&v21.m41 = *&CATransform3DIdentity.m41;
  *&v21.m43 = v17;
  v16 = *&CATransform3DIdentity.m13;
  *&v21.m11 = *&CATransform3DIdentity.m11;
  *&v21.m13 = v16;
  v15 = *&CATransform3DIdentity.m23;
  *&v21.m21 = *&CATransform3DIdentity.m21;
  *&v21.m23 = v15;
  BoundingBox = CGPathGetBoundingBox(a4);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  MidX = CGRectGetMidX(BoundingBox);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MidY = CGRectGetMidY(v24);
  *&v20.m31 = *&v21.m31;
  *&v20.m33 = v18;
  *&v20.m41 = *&v21.m41;
  *&v20.m43 = v17;
  *&v20.m11 = *&v21.m11;
  *&v20.m13 = v16;
  *&v20.m21 = *&v21.m21;
  *&v20.m23 = v15;
  CATransform3DTranslate(&v21, &v20, MidX, MidY, 0.0);
  v19 = v21;
  CATransform3DScale(&v20, &v19, a3, a3, 1.0);
  v21 = v20;
  v19 = v20;
  CATransform3DTranslate(&v20, &v19, -MidX, -MidY, 0.0);
  v21 = v20;
  v13 = [NSValue valueWithCATransform3D:&v20];
  [v6 setToValue:v13];

  [v6 setDuration:0.1];
  [v6 setRemovedOnCompletion:0];
  [v6 setFillMode:kCAFillModeForwards];

  return v6;
}

- (void)removeAnimation
{
  v2 = [(COSTargetProgressView *)self pathLayer];
  [v2 removeAllAnimations];
}

- (CAShapeLayer)pathLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_pathLayer);

  return WeakRetained;
}

@end