@interface CRLWPShapeItemAccessibility
- (CRLWPStorageAccessibility)crlaxContainedStorage;
- (NSString)crlaxShapeString;
- (id)crlaxTarget;
@end

@implementation CRLWPShapeItemAccessibility

- (NSString)crlaxShapeString
{
  crlaxContainedStorage = [(CRLWPShapeItemAccessibility *)self crlaxContainedStorage];
  crlaxString = [crlaxContainedStorage crlaxString];

  return crlaxString;
}

- (CRLWPStorageAccessibility)crlaxContainedStorage
{
  v8 = 0;
  crlaxTarget = [(CRLWPShapeItemAccessibility *)self crlaxTarget];
  textStorage = [crlaxTarget textStorage];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, textStorage, 1, &v8);
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
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, selfCopy, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

@end