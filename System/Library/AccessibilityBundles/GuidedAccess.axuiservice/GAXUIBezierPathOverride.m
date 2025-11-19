@interface GAXUIBezierPathOverride
+ (id)bezierPathWithRect:(CGRect)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addArcWithCenter:(CGPoint)a3 radius:(double)a4 startAngle:(double)a5 endAngle:(double)a6 clockwise:(BOOL)a7;
- (void)addCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5;
- (void)addLineToPoint:(CGPoint)a3;
- (void)addQuadCurveToPoint:(CGPoint)a3 controlPoint:(CGPoint)a4;
- (void)appendPath:(id)a3;
- (void)applyTransform:(CGAffineTransform *)a3;
- (void)closePath;
- (void)moveToPoint:(CGPoint)a3;
- (void)removeAllPoints;
@end

@implementation GAXUIBezierPathOverride

+ (id)bezierPathWithRect:(CGRect)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___GAXUIBezierPathOverride;
  v3 = objc_msgSendSuper2(&v5, "bezierPathWithRect:", a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  [v3 _gaxSetSimpleRectangle:1];

  return v3;
}

- (void)moveToPoint:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v4 moveToPoint:a3.x, a3.y];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)addLineToPoint:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v4 addLineToPoint:a3.x, a3.y];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)addCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
{
  v6.receiver = self;
  v6.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v6 addCurveToPoint:a3.x controlPoint1:a3.y controlPoint2:a4.x, a4.y, a5.x, a5.y];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)addQuadCurveToPoint:(CGPoint)a3 controlPoint:(CGPoint)a4
{
  v5.receiver = self;
  v5.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v5 addQuadCurveToPoint:a3.x controlPoint:a3.y, a4.x, a4.y];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)addArcWithCenter:(CGPoint)a3 radius:(double)a4 startAngle:(double)a5 endAngle:(double)a6 clockwise:(BOOL)a7
{
  v8.receiver = self;
  v8.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v8 addArcWithCenter:a7 radius:a3.x startAngle:a3.y endAngle:a4 clockwise:a5, a6];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)closePath
{
  v3.receiver = self;
  v3.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v3 closePath];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)removeAllPoints
{
  v3.receiver = self;
  v3.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v3 removeAllPoints];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)appendPath:(id)a3
{
  v4 = a3;
  v5 = [(GAXUIBezierPathOverride *)self safeValueForKey:@"isEmpty"];
  v6 = [v5 BOOLValue];

  v7.receiver = self;
  v7.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v7 appendPath:v4];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
  if (v6 && [v4 _gaxIsSimpleRectangle])
  {
    [(GAXUIBezierPathOverride *)self _gaxSetSimpleRectangle:1];
  }
}

- (void)applyTransform:(CGAffineTransform *)a3
{
  v4 = self;
  v5 = [(GAXUIBezierPathOverride *)v4 _gaxIsSimpleRectangle];
  v8.receiver = v4;
  v8.super_class = GAXUIBezierPathOverride;
  v6 = *&a3->c;
  v7[0] = *&a3->a;
  v7[1] = v6;
  v7[2] = *&a3->tx;
  [(GAXUIBezierPathOverride *)&v8 applyTransform:v7];
  [(GAXUIBezierPathOverride *)v4 _gaxUnderlyingPathDidChange];
  if (v5 && fabs(a3->b) < 2.22044605e-16 && fabs(a3->c) < 2.22044605e-16)
  {
    [(GAXUIBezierPathOverride *)v4 _gaxSetSimpleRectangle:1];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = GAXUIBezierPathOverride;
  v4 = [(GAXUIBezierPathOverride *)&v6 copyWithZone:a3];
  if ([(GAXUIBezierPathOverride *)self _gaxIsSimpleRectangle])
  {
    [v4 _gaxSetSimpleRectangle:1];
  }

  return v4;
}

@end