@interface CRLTextLayoutAccessibility
- (id)crlaxStorage;
@end

@implementation CRLTextLayoutAccessibility

- (id)crlaxStorage
{
  v8 = 0;
  crlaxTarget = [(CRLTextLayoutAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, info, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

@end