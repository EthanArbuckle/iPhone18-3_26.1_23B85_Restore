@interface CRLShapeItemAccessibility
- (CRLPathSourceAccessibility)crlaxPathSource;
- (NSString)crlaxShapeTypeHint;
- (NSString)crlaxShapeTypeLabel;
@end

@implementation CRLShapeItemAccessibility

- (CRLPathSourceAccessibility)crlaxPathSource
{
  v8 = 0;
  v2 = [(CRLShapeItemAccessibility *)self crlaxTarget];
  v3 = [v2 pathSource];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (NSString)crlaxShapeTypeLabel
{
  v2 = [(CRLShapeItemAccessibility *)self crlaxPathSource];
  v3 = [v2 crlaxLabel];

  return v3;
}

- (NSString)crlaxShapeTypeHint
{
  v2 = [(CRLShapeItemAccessibility *)self crlaxPathSource];
  v3 = [v2 crlaxHint];

  return v3;
}

@end