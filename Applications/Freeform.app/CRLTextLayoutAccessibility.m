@interface CRLTextLayoutAccessibility
- (id)crlaxStorage;
@end

@implementation CRLTextLayoutAccessibility

- (id)crlaxStorage
{
  v8 = 0;
  v2 = [(CRLTextLayoutAccessibility *)self crlaxTarget];
  v3 = [v2 info];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

@end