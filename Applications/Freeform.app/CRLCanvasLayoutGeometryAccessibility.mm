@interface CRLCanvasLayoutGeometryAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CGRect)_crlaxFrame;
- (CGSize)crlaxSize;
- (double)crlaxAngleInDegrees;
- (double)crlaxAngleInRadians;
@end

@implementation CRLCanvasLayoutGeometryAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (double)crlaxAngleInDegrees
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v2 = [(CRLCanvasLayoutGeometryAccessibility *)self crlaxTarget];
  v3 = v2;
  if (v2)
  {
    [v2 transform];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  v4 = sub_100139980(v6);
  sub_1001208E0(-v4);
  return result;
}

- (double)crlaxAngleInRadians
{
  v2 = [(CRLCanvasLayoutGeometryAccessibility *)self crlaxTarget];
  v3 = v2;
  if (v2)
  {
    [v2 transform];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v4 = sub_1001399C0(v8);
  sub_1001210C4(-v4);
  v6 = v5;

  return v6;
}

- (CGSize)crlaxSize
{
  [(CRLCanvasLayoutGeometryAccessibility *)self _crlaxFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGRect)_crlaxFrame
{
  v2 = [(CRLCanvasLayoutGeometryAccessibility *)self crlaxTarget];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end