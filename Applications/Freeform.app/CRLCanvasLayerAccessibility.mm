@interface CRLCanvasLayerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (CGSize)crlaxUnscaledSize;
@end

@implementation CRLCanvasLayerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CGSize)crlaxUnscaledSize
{
  crlaxTarget = [(CRLCanvasLayerAccessibility *)self crlaxTarget];
  [crlaxTarget unscaledSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end