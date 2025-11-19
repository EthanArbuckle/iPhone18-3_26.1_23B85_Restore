@interface CRLGradientFillStopAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CRLColorAccessibility)crlaxColor;
- (NSString)crlaxStyleInfoDescription;
@end

@implementation CRLGradientFillStopAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CRLColorAccessibility)crlaxColor
{
  v8 = 0;
  v2 = [(CRLGradientFillStopAccessibility *)self crlaxTarget];
  v3 = [v2 color];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (NSString)crlaxStyleInfoDescription
{
  v2 = [(CRLGradientFillStopAccessibility *)self crlaxColor];
  v3 = [v2 crlaxStyleInfoDescription];

  return v3;
}

@end