@interface CRLCanvasLayerAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CGSize)crlaxUnscaledSize;
@end

@implementation CRLCanvasLayerAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CGSize)crlaxUnscaledSize
{
  v2 = [(CRLCanvasLayerAccessibility *)self crlaxTarget];
  [v2 unscaledSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end