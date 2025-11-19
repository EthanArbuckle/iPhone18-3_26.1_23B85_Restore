@interface CRLShadowAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)crlaxIsShadowEnabled;
- (CRLColorAccessibility)_crlaxShadowColor;
- (NSString)crlaxShadowAngleDescription;
- (NSString)crlaxShadowColorDescription;
- (NSString)crlaxShadowTypeDescription;
- (NSString)crlaxStyleInfoDescription;
- (double)_crlaxShadowAngle;
@end

@implementation CRLShadowAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (BOOL)crlaxIsShadowEnabled
{
  v2 = [(CRLShadowAccessibility *)self crlaxTarget];
  v3 = [v2 isEnabled];

  return v3;
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
  v2 = [(CRLShadowAccessibility *)self _crlaxShadowColor];
  v3 = [v2 crlaxStyleInfoDescription];

  return v3;
}

- (NSString)crlaxStyleInfoDescription
{
  if ([(CRLShadowAccessibility *)self crlaxIsShadowEnabled])
  {
    v3 = [(CRLShadowAccessibility *)self crlaxShadowTypeDescription];
    v4 = [(CRLShadowAccessibility *)self crlaxShadowAngleDescription];
    v13 = [(CRLShadowAccessibility *)self crlaxShadowColorDescription];
    v11 = __CRLAccessibilityStringForVariables(1, v3, v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v11 = [v3 localizedStringForKey:@"No shadow" value:0 table:0];
  }

  return v11;
}

- (double)_crlaxShadowAngle
{
  v2 = [(CRLShadowAccessibility *)self crlaxTarget];
  [v2 angle];
  v4 = v3;

  return v4;
}

- (CRLColorAccessibility)_crlaxShadowColor
{
  v8 = 0;
  v2 = [(CRLShadowAccessibility *)self crlaxTarget];
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

@end