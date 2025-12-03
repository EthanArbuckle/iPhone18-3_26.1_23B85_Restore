@interface CRLMutableTransformGradientFill
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEndPoint:(CGPoint)point inShapeWithNaturalSize:(CGSize)size;
- (void)setGradientAngleInDegrees:(double)degrees;
- (void)setLastColor:(id)color;
- (void)setStartPoint:(CGPoint)point inShapeWithNaturalSize:(CGSize)size;
- (void)upgradeIfNecessaryWithBaseNaturalSize:(CGSize)size;
@end

@implementation CRLMutableTransformGradientFill

- (void)setLastColor:(id)color
{
  v5 = [(NSArray *)[(CRLGradientFill *)self gradientStops] count]- 1;

  [(CRLMutableTransformGradientFill *)self setColorOfStopAtIndex:v5 toColor:color];
}

- (void)setStartPoint:(CGPoint)point inShapeWithNaturalSize:(CGSize)size
{
  [(CRLTransformGradientFill *)self p_scalePoint:point.x fromShapeWithNaturalSize:point.y, size.width, size.height];

  [(CRLTransformGradientFill *)self p_setStartPoint:?];
}

- (void)setEndPoint:(CGPoint)point inShapeWithNaturalSize:(CGSize)size
{
  [(CRLTransformGradientFill *)self p_scalePoint:point.x fromShapeWithNaturalSize:point.y, size.width, size.height];

  [(CRLTransformGradientFill *)self p_setEndPoint:?];
}

- (void)upgradeIfNecessaryWithBaseNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_mTransformBeforeUpgrade = &self->super.mTransformBeforeUpgrade;
  v5 = *&self->super.mTransformBeforeUpgrade.c;
  *&v10.a = *&self->super.mTransformBeforeUpgrade.a;
  *&v10.c = v5;
  *&v10.tx = *&self->super.mTransformBeforeUpgrade.tx;
  CGAffineTransformInvert(&v11, &v10);
  v6 = *&v11.c;
  *&p_mTransformBeforeUpgrade->a = *&v11.a;
  *&p_mTransformBeforeUpgrade->c = v6;
  *&p_mTransformBeforeUpgrade->tx = *&v11.tx;
  [(CRLMutableTransformGradientFill *)self setBaseNaturalSize:vmlaq_n_f64(vmulq_n_f64(*&p_mTransformBeforeUpgrade->c, height), *&p_mTransformBeforeUpgrade->a, width)];
  v7 = *&CGAffineTransformIdentity.c;
  *&p_mTransformBeforeUpgrade->a = *&CGAffineTransformIdentity.a;
  *&p_mTransformBeforeUpgrade->c = v7;
  *&p_mTransformBeforeUpgrade->tx = *&CGAffineTransformIdentity.tx;
}

- (void)setGradientAngleInDegrees:(double)degrees
{
  p_mStart = &self->super.mStart;
  p_mEnd = &self->super.mEnd;
  x = self->super.mStart.x;
  y = self->super.mStart.y;
  v8 = self->super.mEnd.x;
  v9 = sub_100120ABC(x, y, v8, self->super.mEnd.y, 0.5);
  v11 = v10;
  v12 = sub_10011F31C(x, y, v8);
  v14 = sub_100120074(v12, v13);
  v15 = sub_100120F98(degrees * 0.0174532925);
  v17 = sub_10011F340(-v15, v16, v14 * 0.5);
  p_mStart->x = sub_10011F334(v9, v11, v17);
  p_mStart->y = v18;
  p_mEnd->x = sub_10011F31C(v9, v11, v17);
  p_mEnd->y = v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLTransformGradientFill allocWithZone:zone];
  gradientStops = [(CRLGradientFill *)self gradientStops];
  gradientType = [(CRLGradientFill *)self gradientType];
  [(CRLGradientFill *)self opacity];
  v7 = [(CRLGradientFill *)v4 initWithGradientStops:gradientStops type:gradientType opacity:?];
  [(CRLGradientFill *)v7 i_setAdvancedGradientFlag:[(CRLGradientFill *)self i_advancedGradientFlag]];
  [(CRLTransformGradientFill *)self startPoint];
  [(CRLTransformGradientFill *)v7 p_setStartPoint:?];
  [(CRLTransformGradientFill *)self endPoint];
  [(CRLTransformGradientFill *)v7 p_setEndPoint:?];
  [(CRLTransformGradientFill *)self baseNaturalSize];
  [(CRLTransformGradientFill *)v7 p_setBaseNaturalSize:?];
  return v7;
}

@end