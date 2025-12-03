@interface CRLFillAccessibility
+ (id)crlaxCastFrom:(id)from;
+ (id)crlaxDescriptionForFill:(id)fill;
- (CRLColorAccessibility)crlaxReferenceColor;
- (NSString)crlaxStyleInfoDescription;
- (int64_t)crlaxFillType;
@end

@implementation CRLFillAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (int64_t)crlaxFillType
{
  crlaxTarget = [(CRLFillAccessibility *)self crlaxTarget];
  fillType = [crlaxTarget fillType];

  return fillType;
}

- (CRLColorAccessibility)crlaxReferenceColor
{
  v8 = 0;
  crlaxTarget = [(CRLFillAccessibility *)self crlaxTarget];
  referenceColor = [crlaxTarget referenceColor];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, referenceColor, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

+ (id)crlaxDescriptionForFill:(id)fill
{
  fillCopy = fill;
  if (!fillCopy || (+[NSNull null], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == fillCopy))
  {
    v8 = +[NSBundle mainBundle];
    crlaxStyleInfoDescription = [v8 localizedStringForKey:@"No fill" value:0 table:0];
LABEL_7:
    v10 = crlaxStyleInfoDescription;

    goto LABEL_8;
  }

  +[(CRLAccessibilitySafeCategory *)CRLFillAccessibility];
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    v5 = fillCopy;
    v6 = objc_opt_class();
    v7 = __CRLAccessibilityCastAsSafeCategory(v6, v5, 1, &v12);
    if (v12 == 1)
    {
      abort();
    }

    v8 = v7;

    crlaxStyleInfoDescription = [v8 crlaxStyleInfoDescription];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (NSString)crlaxStyleInfoDescription
{
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    v3 = objc_opt_class();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"[CRLFillAccessibility crlaxStyleInfoDescription] is abstract. Please implement crlaxStyleInfoDescription in %@.", v4, v5, v6, v7, v8, v3))
    {
      abort();
    }
  }

  return 0;
}

@end