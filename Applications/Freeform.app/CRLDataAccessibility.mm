@interface CRLDataAccessibility
+ (id)crlaxCastFrom:(id)from;
- (NSString)crlaxFilename;
- (NSString)crlaxLabel;
@end

@implementation CRLDataAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (NSString)crlaxLabel
{
  crlaxFilename = [(CRLDataAccessibility *)self crlaxFilename];
  v3 = CRLAccessibilityFriendlyFilename(crlaxFilename);

  return v3;
}

- (NSString)crlaxFilename
{
  crlaxTarget = [(CRLDataAccessibility *)self crlaxTarget];
  filename = [crlaxTarget filename];

  return filename;
}

@end