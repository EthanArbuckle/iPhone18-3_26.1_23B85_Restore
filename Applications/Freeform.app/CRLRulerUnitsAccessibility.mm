@interface CRLRulerUnitsAccessibility
+ (double)crlaxConvertPoints:(double)points toMeasurementUnits:(unint64_t)units;
+ (id)crlaxCastFrom:(id)from;
+ (id)crlaxLocalizedDescriptionForUnits:(unint64_t)units;
+ (id)crlaxLocalizedDescriptionForUnits:(unint64_t)units value:(double)value;
+ (unint64_t)crlaxMeasurementUnitsForCurrentLocale;
- (NSString)crlaxLocalizedCompatibleRulerUnitsForCanvas;
- (double)crlaxConvertPointsToRulerUnits:(double)units;
- (unint64_t)crlaxRulerUnits;
@end

@implementation CRLRulerUnitsAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

+ (unint64_t)crlaxMeasurementUnitsForCurrentLocale
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 objectForKey:NSLocaleUsesMetricSystem];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (double)crlaxConvertPoints:(double)points toMeasurementUnits:(unint64_t)units
{
  if (units == 1)
  {
    v5 = &qword_101462BC0;
    goto LABEL_5;
  }

  if (!units)
  {
    v5 = &qword_101462BB8;
LABEL_5:
    v6 = *v5;
    return points / v6;
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

  return points / v6;
}

+ (id)crlaxLocalizedDescriptionForUnits:(unint64_t)units
{
  if (units >= 5)
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
    v3 = *(&off_10184D3C8 + units);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

+ (id)crlaxLocalizedDescriptionForUnits:(unint64_t)units value:(double)value
{
  if (units >= 5)
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
    v5 = CRLAccessibilityStringsDictKey(*(&off_10184D3F0 + units));
    if (v5)
    {
      v6 = [NSString localizedStringWithFormat:v5, *&value];
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (double)crlaxConvertPointsToRulerUnits:(double)units
{
  crlaxTarget = [(CRLRulerUnitsAccessibility *)self crlaxTarget];
  [crlaxTarget convertPointsToRulerUnits:units];
  v6 = v5;

  return v6;
}

- (NSString)crlaxLocalizedCompatibleRulerUnitsForCanvas
{
  v3 = objc_opt_class();
  crlaxRulerUnits = [(CRLRulerUnitsAccessibility *)self crlaxRulerUnits];

  return [v3 crlaxLocalizedDescriptionForUnits:crlaxRulerUnits];
}

- (unint64_t)crlaxRulerUnits
{
  crlaxTarget = [(CRLRulerUnitsAccessibility *)self crlaxTarget];
  rulerUnits = [crlaxTarget rulerUnits];

  return rulerUnits;
}

@end