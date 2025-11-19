@interface CRLItemGeometryAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CGPoint)crlaxPosition;
- (int64_t)_crlaxCompareCGFloat:(double)a3 toCGFloat:(double)a4;
- (int64_t)crlaxCompareToInfoGeometry:(id)a3;
@end

@implementation CRLItemGeometryAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CGPoint)crlaxPosition
{
  v2 = [(CRLItemGeometryAccessibility *)self crlaxTarget];
  [v2 position];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (int64_t)crlaxCompareToInfoGeometry:(id)a3
{
  v4 = a3;
  [(CRLItemGeometryAccessibility *)self crlaxPosition];
  v6 = v5;
  [v4 crlaxPosition];
  v7 = [(CRLItemGeometryAccessibility *)self _crlaxCompareCGFloat:v6 toCGFloat:?];
  if (!v7)
  {
    [(CRLItemGeometryAccessibility *)self crlaxPosition];
    v9 = v8;
    [v4 crlaxPosition];
    v7 = [(CRLItemGeometryAccessibility *)self _crlaxCompareCGFloat:v9 toCGFloat:v10];
  }

  return v7;
}

- (int64_t)_crlaxCompareCGFloat:(double)a3 toCGFloat:(double)a4
{
  if (a3 < a4)
  {
    return -1;
  }

  else
  {
    return a3 != a4;
  }
}

@end