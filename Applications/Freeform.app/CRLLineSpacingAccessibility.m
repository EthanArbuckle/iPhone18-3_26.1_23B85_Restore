@interface CRLLineSpacingAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (NSString)crlaxLineSpacingDescription;
- (double)crlaxAmount;
- (int64_t)crlaxMode;
@end

@implementation CRLLineSpacingAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (int64_t)crlaxMode
{
  v2 = [(CRLLineSpacingAccessibility *)self crlaxTarget];
  v3 = [v2 mode];

  return v3;
}

- (double)crlaxAmount
{
  v2 = [(CRLLineSpacingAccessibility *)self crlaxTarget];
  [v2 amount];
  v4 = v3;

  return v4;
}

- (NSString)crlaxLineSpacingDescription
{
  v3 = [(CRLLineSpacingAccessibility *)self crlaxMode];
  if (v3 >= 5)
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Unknown line spacing, treat as relative format multiplier.", v6, v7, v8, v9, v10, v15))
      {
        abort();
      }
    }

    v4 = @"line.spacing.relative";
  }

  else
  {
    v4 = *(&off_1018713C0 + v3);
  }

  v11 = CRLAccessibilityStringsDictKey(v4);
  if (v11)
  {
    [(CRLLineSpacingAccessibility *)self crlaxAmount];
    v13 = [NSString stringWithFormat:v11, v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end