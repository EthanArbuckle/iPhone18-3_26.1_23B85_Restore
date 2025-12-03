@interface CRLItemGeometryAccessibility
+ (id)crlaxCastFrom:(id)from;
- (CGPoint)crlaxPosition;
- (int64_t)_crlaxCompareCGFloat:(double)float toCGFloat:(double)gFloat;
- (int64_t)crlaxCompareToInfoGeometry:(id)geometry;
@end

@implementation CRLItemGeometryAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CGPoint)crlaxPosition
{
  crlaxTarget = [(CRLItemGeometryAccessibility *)self crlaxTarget];
  [crlaxTarget position];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (int64_t)crlaxCompareToInfoGeometry:(id)geometry
{
  geometryCopy = geometry;
  [(CRLItemGeometryAccessibility *)self crlaxPosition];
  v6 = v5;
  [geometryCopy crlaxPosition];
  v7 = [(CRLItemGeometryAccessibility *)self _crlaxCompareCGFloat:v6 toCGFloat:?];
  if (!v7)
  {
    [(CRLItemGeometryAccessibility *)self crlaxPosition];
    v9 = v8;
    [geometryCopy crlaxPosition];
    v7 = [(CRLItemGeometryAccessibility *)self _crlaxCompareCGFloat:v9 toCGFloat:v10];
  }

  return v7;
}

- (int64_t)_crlaxCompareCGFloat:(double)float toCGFloat:(double)gFloat
{
  if (float < gFloat)
  {
    return -1;
  }

  else
  {
    return float != gFloat;
  }
}

@end