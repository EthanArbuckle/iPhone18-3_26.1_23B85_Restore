@interface CRLSmartStrokeAccessibility
+ (id)crlaxCastFrom:(id)from;
- (NSDictionary)crlaxKnownStrokePatternLocalizationStrings;
- (NSString)crlaxStrokePatternDescription;
- (id)crlaxStrokeFullDescription;
@end

@implementation CRLSmartStrokeAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (NSString)crlaxStrokePatternDescription
{
  crlaxTarget = [(CRLSmartStrokeAccessibility *)self crlaxTarget];
  strokeName = [crlaxTarget strokeName];

  if ([strokeName length])
  {
    crlaxKnownStrokePatternLocalizationStrings = [(CRLSmartStrokeAccessibility *)self crlaxKnownStrokePatternLocalizationStrings];
    v6 = [crlaxKnownStrokePatternLocalizationStrings objectForKeyedSubscript:strokeName];

    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      if (![v6 length])
      {
        ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
        crlaxTargetClassName = [objc_opt_class() crlaxTargetClassName];
        v13 = __CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Unknown stroke pattern %@. Please add an entry in crlaxKnownStrokePatternLocalizationStrings in %@Accessibility.", v8, v9, v10, v11, v12, strokeName);

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
    crlaxTargetClassName = [objc_opt_class() crlaxTargetClassName];
    v9 = __CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"crlaxKnownStrokePatternLocalizationStrings is abstract, please implement on %@Accessibility", v4, v5, v6, v7, v8, crlaxTargetClassName);

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
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsSafeCategory(v3, selfCopy, 1, &v19);
  if (v19 == 1)
  {
    abort();
  }

  v5 = v4;

  if (([v5 crlaxStrokeIsEmpty] & 1) != 0 || (objc_msgSend(v5, "crlaxStrokeWidth"), v6 <= 0.0))
  {
    crlaxStrokeColor = +[NSBundle mainBundle];
    v16 = [crlaxStrokeColor localizedStringForKey:@"None" value:0 table:0];
  }

  else
  {
    crlaxStrokeColor = [(CRLStrokeAccessibility *)selfCopy crlaxStrokeColor];
    crlaxApproximateColorDescriptionWithOpacity = [crlaxStrokeColor crlaxApproximateColorDescriptionWithOpacity];
    crlaxStrokeWidthDescription = [(CRLStrokeAccessibility *)selfCopy crlaxStrokeWidthDescription];
    crlaxStrokePatternDescription = [(CRLSmartStrokeAccessibility *)selfCopy crlaxStrokePatternDescription];
    v16 = __CRLAccessibilityStringForVariables(1, crlaxApproximateColorDescriptionWithOpacity, v10, v11, v12, v13, v14, v15, crlaxStrokeWidthDescription);
  }

  return v16;
}

@end