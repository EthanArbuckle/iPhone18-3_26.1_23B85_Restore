@interface CRLBoardItemAccessibility
- (CRLItemGeometryAccessibility)crlaxGeometry;
- (NSString)crlaxUserProvidedDescription;
@end

@implementation CRLBoardItemAccessibility

- (NSString)crlaxUserProvidedDescription
{
  v7 = 0;
  v2 = [(CRLBoardItemAccessibility *)self crlaxValueForKey:@"accessibilityDescription"];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

- (CRLItemGeometryAccessibility)crlaxGeometry
{
  v7 = 0;
  v2 = [(CRLBoardItemAccessibility *)self crlaxValueForKey:@"geometry"];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsSafeCategory(v3, v2, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

@end