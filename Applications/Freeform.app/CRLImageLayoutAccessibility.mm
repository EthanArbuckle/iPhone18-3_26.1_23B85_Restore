@interface CRLImageLayoutAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)crlaxIsInMaskEditMode;
@end

@implementation CRLImageLayoutAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (BOOL)crlaxIsInMaskEditMode
{
  crlaxTarget = [(CRLImageLayoutAccessibility *)self crlaxTarget];
  isInMaskEditMode = [crlaxTarget isInMaskEditMode];

  return isInMaskEditMode;
}

@end