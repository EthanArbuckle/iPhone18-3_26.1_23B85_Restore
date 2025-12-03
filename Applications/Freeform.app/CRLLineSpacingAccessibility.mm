@interface CRLLineSpacingAccessibility
+ (id)crlaxCastFrom:(id)from;
- (NSString)crlaxLineSpacingDescription;
- (double)crlaxAmount;
- (int64_t)crlaxMode;
@end

@implementation CRLLineSpacingAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (int64_t)crlaxMode
{
  crlaxTarget = [(CRLLineSpacingAccessibility *)self crlaxTarget];
  mode = [crlaxTarget mode];

  return mode;
}

- (double)crlaxAmount
{
  crlaxTarget = [(CRLLineSpacingAccessibility *)self crlaxTarget];
  [crlaxTarget amount];
  v4 = v3;

  return v4;
}

- (NSString)crlaxLineSpacingDescription
{
  crlaxMode = [(CRLLineSpacingAccessibility *)self crlaxMode];
  if (crlaxMode >= 5)
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
    v4 = *(&off_1018713C0 + crlaxMode);
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