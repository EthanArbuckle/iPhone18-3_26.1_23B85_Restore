@interface GAXUIBezierPathOverride
+ (id)bezierPathWithRect:(CGRect)rect;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise;
- (void)addCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)addLineToPoint:(CGPoint)point;
- (void)addQuadCurveToPoint:(CGPoint)point controlPoint:(CGPoint)controlPoint;
- (void)appendPath:(id)path;
- (void)applyTransform:(CGAffineTransform *)transform;
- (void)closePath;
- (void)moveToPoint:(CGPoint)point;
- (void)removeAllPoints;
@end

@implementation GAXUIBezierPathOverride

+ (id)bezierPathWithRect:(CGRect)rect
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___GAXUIBezierPathOverride;
  v3 = objc_msgSendSuper2(&v5, "bezierPathWithRect:", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  [v3 _gaxSetSimpleRectangle:1];

  return v3;
}

- (void)moveToPoint:(CGPoint)point
{
  v4.receiver = self;
  v4.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v4 moveToPoint:point.x, point.y];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)addLineToPoint:(CGPoint)point
{
  v4.receiver = self;
  v4.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v4 addLineToPoint:point.x, point.y];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)addCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  v6.receiver = self;
  v6.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v6 addCurveToPoint:point.x controlPoint1:point.y controlPoint2:point1.x, point1.y, point2.x, point2.y];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)addQuadCurveToPoint:(CGPoint)point controlPoint:(CGPoint)controlPoint
{
  v5.receiver = self;
  v5.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v5 addQuadCurveToPoint:point.x controlPoint:point.y, controlPoint.x, controlPoint.y];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
}

- (void)addArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise
{
  v8.receiver = self;
  v8.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v8 addArcWithCenter:clockwise radius:center.x startAngle:center.y endAngle:radius clockwise:angle, endAngle];
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

- (void)appendPath:(id)path
{
  pathCopy = path;
  v5 = [(GAXUIBezierPathOverride *)self safeValueForKey:@"isEmpty"];
  bOOLValue = [v5 BOOLValue];

  v7.receiver = self;
  v7.super_class = GAXUIBezierPathOverride;
  [(GAXUIBezierPathOverride *)&v7 appendPath:pathCopy];
  [(GAXUIBezierPathOverride *)self _gaxUnderlyingPathDidChange];
  if (bOOLValue && [pathCopy _gaxIsSimpleRectangle])
  {
    [(GAXUIBezierPathOverride *)self _gaxSetSimpleRectangle:1];
  }
}

- (void)applyTransform:(CGAffineTransform *)transform
{
  selfCopy = self;
  _gaxIsSimpleRectangle = [(GAXUIBezierPathOverride *)selfCopy _gaxIsSimpleRectangle];
  v8.receiver = selfCopy;
  v8.super_class = GAXUIBezierPathOverride;
  v6 = *&transform->c;
  v7[0] = *&transform->a;
  v7[1] = v6;
  v7[2] = *&transform->tx;
  [(GAXUIBezierPathOverride *)&v8 applyTransform:v7];
  [(GAXUIBezierPathOverride *)selfCopy _gaxUnderlyingPathDidChange];
  if (_gaxIsSimpleRectangle && fabs(transform->b) < 2.22044605e-16 && fabs(transform->c) < 2.22044605e-16)
  {
    [(GAXUIBezierPathOverride *)selfCopy _gaxSetSimpleRectangle:1];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = GAXUIBezierPathOverride;
  v4 = [(GAXUIBezierPathOverride *)&v6 copyWithZone:zone];
  if ([(GAXUIBezierPathOverride *)self _gaxIsSimpleRectangle])
  {
    [v4 _gaxSetSimpleRectangle:1];
  }

  return v4;
}

@end