@interface CRLRulerUnitsAccessibility
+ (double)crlaxConvertPoints:(double)a3 toMeasurementUnits:(unint64_t)a4;
+ (id)crlaxCastFrom:(id)a3;
+ (id)crlaxLocalizedDescriptionForUnits:(unint64_t)a3;
+ (id)crlaxLocalizedDescriptionForUnits:(unint64_t)a3 value:(double)a4;
+ (unint64_t)crlaxMeasurementUnitsForCurrentLocale;
- (NSString)crlaxLocalizedCompatibleRulerUnitsForCanvas;
- (double)crlaxConvertPointsToRulerUnits:(double)a3;
- (unint64_t)crlaxRulerUnits;
@end

@implementation CRLRulerUnitsAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

+ (unint64_t)crlaxMeasurementUnitsForCurrentLocale
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 objectForKey:NSLocaleUsesMetricSystem];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (double)crlaxConvertPoints:(double)a3 toMeasurementUnits:(unint64_t)a4
{
  if (a4 == 1)
  {
    v5 = &qword_101462BC0;
    goto LABEL_5;
  }

  if (!a4)
  {
    v5 = &qword_101462BB8;
LABEL_5:
    v6 = *v5;
    return a3 / v6;
  }

  v6 = 1.0;
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Measurement units must be CRLRulerUnitTypeCentimeters or CRLRulerUnitTypeInches.", v9, v10, v11, v12, v13, v14))
    {
      abort();
    }
  }

  return a3 / v6;
}

+ (id)crlaxLocalizedDescriptionForUnits:(unint64_t)a3
{
  if (a3 >= 5)
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Unknown CRLRulerUnitType", v7, v8, v9, v10, v11, v13))
      {
        abort();
      }
    }

    v5 = 0;
  }

  else
  {
    v3 = *(&off_10184D3C8 + a3);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

+ (id)crlaxLocalizedDescriptionForUnits:(unint64_t)a3 value:(double)a4
{
  if (a3 >= 5)
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Unknown CRLRulerUnitType", v8, v9, v10, v11, v12, v14))
      {
        abort();
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = CRLAccessibilityStringsDictKey(*(&off_10184D3F0 + a3));
    if (v5)
    {
      v6 = [NSString localizedStringWithFormat:v5, *&a4];
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (double)crlaxConvertPointsToRulerUnits:(double)a3
{
  v4 = [(CRLRulerUnitsAccessibility *)self crlaxTarget];
  [v4 convertPointsToRulerUnits:a3];
  v6 = v5;

  return v6;
}

- (NSString)crlaxLocalizedCompatibleRulerUnitsForCanvas
{
  v3 = objc_opt_class();
  v4 = [(CRLRulerUnitsAccessibility *)self crlaxRulerUnits];

  return [v3 crlaxLocalizedDescriptionForUnits:v4];
}

- (unint64_t)crlaxRulerUnits
{
  v2 = [(CRLRulerUnitsAccessibility *)self crlaxTarget];
  v3 = [v2 rulerUnits];

  return v3;
}

@end