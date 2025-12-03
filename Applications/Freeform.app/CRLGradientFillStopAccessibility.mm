@interface CRLGradientFillStopAccessibility
+ (id)crlaxCastFrom:(id)from;
- (CRLColorAccessibility)crlaxColor;
- (NSString)crlaxStyleInfoDescription;
@end

@implementation CRLGradientFillStopAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLColorAccessibility)crlaxColor
{
  v8 = 0;
  crlaxTarget = [(CRLGradientFillStopAccessibility *)self crlaxTarget];
  color = [crlaxTarget color];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, color, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (NSString)crlaxStyleInfoDescription
{
  crlaxColor = [(CRLGradientFillStopAccessibility *)self crlaxColor];
  crlaxStyleInfoDescription = [crlaxColor crlaxStyleInfoDescription];

  return crlaxStyleInfoDescription;
}

@end