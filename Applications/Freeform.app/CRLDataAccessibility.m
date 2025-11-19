@interface CRLDataAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (NSString)crlaxFilename;
- (NSString)crlaxLabel;
@end

@implementation CRLDataAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSString)crlaxLabel
{
  v2 = [(CRLDataAccessibility *)self crlaxFilename];
  v3 = CRLAccessibilityFriendlyFilename(v2);

  return v3;
}

- (NSString)crlaxFilename
{
  v2 = [(CRLDataAccessibility *)self crlaxTarget];
  v3 = [v2 filename];

  return v3;
}

@end