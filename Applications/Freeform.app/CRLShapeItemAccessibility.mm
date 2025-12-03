@interface CRLShapeItemAccessibility
- (CRLPathSourceAccessibility)crlaxPathSource;
- (NSString)crlaxShapeTypeHint;
- (NSString)crlaxShapeTypeLabel;
@end

@implementation CRLShapeItemAccessibility

- (CRLPathSourceAccessibility)crlaxPathSource
{
  v8 = 0;
  crlaxTarget = [(CRLShapeItemAccessibility *)self crlaxTarget];
  pathSource = [crlaxTarget pathSource];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, pathSource, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (NSString)crlaxShapeTypeLabel
{
  crlaxPathSource = [(CRLShapeItemAccessibility *)self crlaxPathSource];
  crlaxLabel = [crlaxPathSource crlaxLabel];

  return crlaxLabel;
}

- (NSString)crlaxShapeTypeHint
{
  crlaxPathSource = [(CRLShapeItemAccessibility *)self crlaxPathSource];
  crlaxHint = [crlaxPathSource crlaxHint];

  return crlaxHint;
}

@end