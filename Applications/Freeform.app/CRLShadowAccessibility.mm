@interface CRLShadowAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)crlaxIsShadowEnabled;
- (CRLColorAccessibility)_crlaxShadowColor;
- (NSString)crlaxShadowAngleDescription;
- (NSString)crlaxShadowColorDescription;
- (NSString)crlaxShadowTypeDescription;
- (NSString)crlaxStyleInfoDescription;
- (double)_crlaxShadowAngle;
@end

@implementation CRLShadowAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (BOOL)crlaxIsShadowEnabled
{
  crlaxTarget = [(CRLShadowAccessibility *)self crlaxTarget];
  isEnabled = [crlaxTarget isEnabled];

  return isEnabled;
}

- (NSString)crlaxShadowTypeDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Shadow" value:0 table:0];

  return v3;
}

- (NSString)crlaxShadowAngleDescription
{
  [(CRLShadowAccessibility *)self _crlaxShadowAngle];
  if (v2 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v3 = v2;
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"%.0f degrees" value:0 table:0];
    v6 = [NSString stringWithFormat:v5, *&v3];
  }

  return v6;
}

- (NSString)crlaxShadowColorDescription
{
  _crlaxShadowColor = [(CRLShadowAccessibility *)self _crlaxShadowColor];
  crlaxStyleInfoDescription = [_crlaxShadowColor crlaxStyleInfoDescription];

  return crlaxStyleInfoDescription;
}

- (NSString)crlaxStyleInfoDescription
{
  if ([(CRLShadowAccessibility *)self crlaxIsShadowEnabled])
  {
    crlaxShadowTypeDescription = [(CRLShadowAccessibility *)self crlaxShadowTypeDescription];
    crlaxShadowAngleDescription = [(CRLShadowAccessibility *)self crlaxShadowAngleDescription];
    crlaxShadowColorDescription = [(CRLShadowAccessibility *)self crlaxShadowColorDescription];
    v11 = __CRLAccessibilityStringForVariables(1, crlaxShadowTypeDescription, v5, v6, v7, v8, v9, v10, crlaxShadowAngleDescription);
  }

  else
  {
    crlaxShadowTypeDescription = +[NSBundle mainBundle];
    v11 = [crlaxShadowTypeDescription localizedStringForKey:@"No shadow" value:0 table:0];
  }

  return v11;
}

- (double)_crlaxShadowAngle
{
  crlaxTarget = [(CRLShadowAccessibility *)self crlaxTarget];
  [crlaxTarget angle];
  v4 = v3;

  return v4;
}

- (CRLColorAccessibility)_crlaxShadowColor
{
  v8 = 0;
  crlaxTarget = [(CRLShadowAccessibility *)self crlaxTarget];
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

@end