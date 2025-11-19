@interface CRLFillAccessibility
+ (id)crlaxCastFrom:(id)a3;
+ (id)crlaxDescriptionForFill:(id)a3;
- (CRLColorAccessibility)crlaxReferenceColor;
- (NSString)crlaxStyleInfoDescription;
- (int64_t)crlaxFillType;
@end

@implementation CRLFillAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (int64_t)crlaxFillType
{
  v2 = [(CRLFillAccessibility *)self crlaxTarget];
  v3 = [v2 fillType];

  return v3;
}

- (CRLColorAccessibility)crlaxReferenceColor
{
  v8 = 0;
  v2 = [(CRLFillAccessibility *)self crlaxTarget];
  v3 = [v2 referenceColor];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

+ (id)crlaxDescriptionForFill:(id)a3
{
  v3 = a3;
  if (!v3 || (+[NSNull null], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == v3))
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"No fill" value:0 table:0];
LABEL_7:
    v10 = v9;

    goto LABEL_8;
  }

  +[(CRLAccessibilitySafeCategory *)CRLFillAccessibility];
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    v5 = v3;
    v6 = objc_opt_class();
    v7 = __CRLAccessibilityCastAsSafeCategory(v6, v5, 1, &v12);
    if (v12 == 1)
    {
      abort();
    }

    v8 = v7;

    v9 = [v8 crlaxStyleInfoDescription];
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