@interface CRLImageLayoutAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)crlaxIsInMaskEditMode;
@end

@implementation CRLImageLayoutAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (BOOL)crlaxIsInMaskEditMode
{
  v2 = [(CRLImageLayoutAccessibility *)self crlaxTarget];
  v3 = [v2 isInMaskEditMode];

  return v3;
}

@end