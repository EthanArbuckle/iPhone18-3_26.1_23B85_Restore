@interface CRLWPShapeItemAccessibility
- (CRLWPStorageAccessibility)crlaxContainedStorage;
- (NSString)crlaxShapeString;
- (id)crlaxTarget;
@end

@implementation CRLWPShapeItemAccessibility

- (NSString)crlaxShapeString
{
  v2 = [(CRLWPShapeItemAccessibility *)self crlaxContainedStorage];
  v3 = [v2 crlaxString];

  return v3;
}

- (CRLWPStorageAccessibility)crlaxContainedStorage
{
  v8 = 0;
  v2 = [(CRLWPShapeItemAccessibility *)self crlaxTarget];
  v3 = [v2 textStorage];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)crlaxTarget
{
  v7 = 0;
  v2 = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

@end