@interface COSTargetBackgroundView
- (COSTargetBackgroundView)initWithCutoutPath:(id)a3 gradientHeight:(double)a4;
- (id)scaleBackgroundAnimationWithScale:(float)a3 forPath:(CGPath *)a4;
- (void)drawRect:(CGRect)a3;
- (void)pulseBackground;
- (void)removeAnimation;
@end

@implementation COSTargetBackgroundView

- (COSTargetBackgroundView)initWithCutoutPath:(id)a3 gradientHeight:(double)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = COSTargetBackgroundView;
  v8 = [(COSTargetBackgroundView *)&v12 init];
  if (v8)
  {
    v9 = +[UIColor blackColor];
    v10 = [v9 colorWithAlphaComponent:0.5];
    [(COSTargetBackgroundView *)v8 setBackgroundColor:v10];

    objc_storeStrong(&v8->_cutoutPath, a3);
    v8->_gradientHeight = a4;
  }

  return v8;
}

- (void)drawRect:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = COSTargetBackgroundView;
  [(COSTargetBackgroundView *)&v18 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (self->_cutoutPath)
  {
    Mutable = CGPathCreateMutable();
    CGPathAddPath(Mutable, 0, [(UIBezierPath *)self->_cutoutPath CGPath]);
    [(COSTargetBackgroundView *)self bounds];
    CGPathAddRect(Mutable, 0, v20);
    maskLayer = self->_maskLayer;
    if (!maskLayer)
    {
      v6 = objc_opt_new();
      v7 = self->_maskLayer;
      self->_maskLayer = v6;

      [(CAShapeLayer *)self->_maskLayer setFillRule:kCAFillRuleEvenOdd];
      v8 = self->_maskLayer;
      v9 = [(COSTargetBackgroundView *)self layer];
      [v9 setMask:v8];

      maskLayer = self->_maskLayer;
    }

    [(CAShapeLayer *)maskLayer setPath:Mutable];
    if (!self->_gradientLayer)
    {
      v10 = objc_alloc_init(CAGradientLayer);
      gradientLayer = self->_gradientLayer;
      self->_gradientLayer = v10;

      v12 = +[UIColor blackColor];
      v19[0] = [v12 CGColor];
      v13 = +[UIColor clearColor];
      v19[1] = [v13 CGColor];
      v14 = [NSArray arrayWithObjects:v19 count:2];
      [(CAGradientLayer *)self->_gradientLayer setColors:v14];

      v15 = [(COSTargetBackgroundView *)self layer];
      [v15 addSublayer:self->_gradientLayer];
    }

    memset(&slice, 0, sizeof(slice));
    [(COSTargetBackgroundView *)self bounds:0];
    CGRectDivide(v21, &slice, &v16, self->_gradientHeight, CGRectMinYEdge);
    [(CAGradientLayer *)self->_gradientLayer setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }
}

- (void)pulseBackground
{
  v3 = [(COSTargetBackgroundView *)self cutoutPath];
  v4 = [v3 CGPath];
  LODWORD(v5) = 1061997773;
  v12 = [(COSTargetBackgroundView *)self scaleBackgroundAnimationWithScale:v4 forPath:v5];

  v6 = [(COSTargetBackgroundView *)self cutoutPath];
  v7 = [v6 CGPath];
  LODWORD(v8) = 1063675494;
  v9 = [(COSTargetBackgroundView *)self scaleBackgroundAnimationWithScale:v7 forPath:v8];

  v10 = [(COSTargetBackgroundView *)self maskLayer];
  [v10 addAnimation:v12 forKey:@"path"];

  v11 = [(COSTargetBackgroundView *)self maskLayer];
  [v11 addAnimation:v9 forKey:@"path"];
}

- (id)scaleBackgroundAnimationWithScale:(float)a3 forPath:(CGPath *)a4
{
  v6 = [CABasicAnimation animationWithKeyPath:@"path"];
  v21 = *&CATransform3DIdentity.m33;
  *&v24.m31 = *&CATransform3DIdentity.m31;
  *&v24.m33 = v21;
  v20 = *&CATransform3DIdentity.m43;
  *&v24.m41 = *&CATransform3DIdentity.m41;
  *&v24.m43 = v20;
  v19 = *&CATransform3DIdentity.m13;
  *&v24.m11 = *&CATransform3DIdentity.m11;
  *&v24.m13 = v19;
  v18 = *&CATransform3DIdentity.m23;
  *&v24.m21 = *&CATransform3DIdentity.m21;
  *&v24.m23 = v18;
  v7 = [(COSTargetBackgroundView *)self cutoutPath];
  BoundingBox = CGPathGetBoundingBox([v7 CGPath]);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MidY = CGRectGetMidY(v28);
  *&v23.m31 = *&v24.m31;
  *&v23.m33 = v21;
  *&v23.m41 = *&v24.m41;
  *&v23.m43 = v20;
  *&v23.m11 = *&v24.m11;
  *&v23.m13 = v19;
  *&v23.m21 = *&v24.m21;
  *&v23.m23 = v18;
  CATransform3DTranslate(&v24, &v23, MidX, MidY, 0.0);
  v22 = v24;
  CATransform3DScale(&v23, &v22, a3, a3, 1.0);
  v24 = v23;
  v22 = v23;
  CATransform3DTranslate(&v23, &v22, -MidX, -MidY, 0.0);
  v24 = v23;
  memset(&v22, 0, 48);
  CATransform3DGetAffineTransform(&v22, &v23);
  CopyByTransformingPath = CGPathCreateCopyByTransformingPath([(UIBezierPath *)self->_cutoutPath CGPath], &v22);
  Mutable = CGPathCreateMutable();
  CGPathAddPath(Mutable, 0, CopyByTransformingPath);
  [(COSTargetBackgroundView *)self bounds];
  CGPathAddRect(Mutable, 0, v29);
  v16 = [(COSTargetBackgroundView *)self maskLayer];
  [v6 setFromValue:{objc_msgSend(v16, "path")}];

  [v6 setToValue:Mutable];
  [v6 setDuration:0.1];
  [v6 setRemovedOnCompletion:0];
  [v6 setFillMode:kCAFillModeForwards];

  return v6;
}

- (void)removeAnimation
{
  v2 = [(COSTargetBackgroundView *)self maskLayer];
  [v2 removeAllAnimations];
}

@end