@interface CRLSmartStrokeAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (NSDictionary)crlaxKnownStrokePatternLocalizationStrings;
- (NSString)crlaxStrokePatternDescription;
- (id)crlaxStrokeFullDescription;
@end

@implementation CRLSmartStrokeAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSString)crlaxStrokePatternDescription
{
  v3 = [(CRLSmartStrokeAccessibility *)self crlaxTarget];
  v4 = [v3 strokeName];

  if ([v4 length])
  {
    v5 = [(CRLSmartStrokeAccessibility *)self crlaxKnownStrokePatternLocalizationStrings];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      if (![v6 length])
      {
        ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
        v15 = [objc_opt_class() crlaxTargetClassName];
        v13 = __CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Unknown stroke pattern %@. Please add an entry in crlaxKnownStrokePatternLocalizationStrings in %@Accessibility.", v8, v9, v10, v11, v12, v4);

        if (v13)
        {
          abort();
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)crlaxKnownStrokePatternLocalizationStrings
{
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    v3 = [objc_opt_class() crlaxTargetClassName];
    v9 = __CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"crlaxKnownStrokePatternLocalizationStrings is abstract, please implement on %@Accessibility", v4, v5, v6, v7, v8, v3);

    if (v9)
    {
      abort();
    }
  }

  return 0;
}

- (id)crlaxStrokeFullDescription
{
  v19 = 0;
  v2 = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsSafeCategory(v3, v2, 1, &v19);
  if (v19 == 1)
  {
    abort();
  }

  v5 = v4;

  if (([v5 crlaxStrokeIsEmpty] & 1) != 0 || (objc_msgSend(v5, "crlaxStrokeWidth"), v6 <= 0.0))
  {
    v7 = +[NSBundle mainBundle];
    v16 = [v7 localizedStringForKey:@"None" value:0 table:0];
  }

  else
  {
    v7 = [(CRLStrokeAccessibility *)v2 crlaxStrokeColor];
    v8 = [v7 crlaxApproximateColorDescriptionWithOpacity];
    v9 = [(CRLStrokeAccessibility *)v2 crlaxStrokeWidthDescription];
    v18 = [(CRLSmartStrokeAccessibility *)v2 crlaxStrokePatternDescription];
    v16 = __CRLAccessibilityStringForVariables(1, v8, v10, v11, v12, v13, v14, v15, v9);
  }

  return v16;
}

@end