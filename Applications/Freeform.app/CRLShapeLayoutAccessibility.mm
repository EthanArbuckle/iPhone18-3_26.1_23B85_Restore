@interface CRLShapeLayoutAccessibility
+ (id)crlaxCastFrom:(id)from;
@end

@implementation CRLShapeLayoutAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

@end