@interface CRLStrokePatternAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (id)_crlaxLocalizedDescriptionForPattern:(id)a3 omittingStroke:(BOOL)a4;
- (id)_crlaxStrokePatternName;
- (id)_crlaxStyleInfoDescription:(BOOL)a3;
- (int64_t)_crlaxStrokePattern;
@end

@implementation CRLStrokePatternAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (id)_crlaxStyleInfoDescription:(BOOL)a3
{
  v3 = a3;
  if ([(CRLStrokePatternAccessibility *)self crlaxIsDefaultStroke])
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    if (v3)
    {
      v7 = @"Default";
    }

    else
    {
      v7 = @"Default stroke";
    }

    v8 = [v5 localizedStringForKey:v7 value:0 table:0];
    goto LABEL_8;
  }

  v6 = [(CRLStrokePatternAccessibility *)self _crlaxStrokePatternName];
  if (v6)
  {
    v8 = [(CRLStrokePatternAccessibility *)self _crlaxLocalizedDescriptionForPattern:v6 omittingStroke:v3];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_crlaxStrokePatternName
{
  v3 = +[CRLStrokePattern solidPattern];
  v4 = [(CRLStrokePatternAccessibility *)self isEqual:v3];

  if (v4)
  {
    return @"solidPattern";
  }

  v6 = +[CRLStrokePattern emptyPattern];
  v7 = [(CRLStrokePatternAccessibility *)self isEqual:v6];

  if (v7)
  {
    return @"emptyPattern";
  }

  v8 = +[CRLStrokePattern shortDashPattern];
  v9 = [(CRLStrokePatternAccessibility *)self isEqual:v8];

  if (v9)
  {
    return @"shortDashPattern";
  }

  v10 = +[CRLStrokePattern mediumDashPattern];
  v11 = [(CRLStrokePatternAccessibility *)self isEqual:v10];

  if (v11)
  {
    return @"mediumDashPattern";
  }

  v12 = +[CRLStrokePattern longDashPattern];
  v13 = [(CRLStrokePatternAccessibility *)self isEqual:v12];

  if (v13)
  {
    return @"longDashPattern";
  }

  v14 = +[CRLStrokePattern roundDashPattern];
  v15 = [(CRLStrokePatternAccessibility *)self isEqual:v14];

  if (v15)
  {
    return @"roundDashPattern";
  }

  else
  {
    return 0;
  }
}

- (id)_crlaxLocalizedDescriptionForPattern:(id)a3 omittingStroke:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (qword_101A353B0)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v4;
  }

  if (!v6)
  {
    v46[0] = @"solidPattern";
    v42 = +[NSBundle mainBundle];
    v40 = [v42 localizedStringForKey:@"Solid" value:0 table:0];
    v47[0] = v40;
    v46[1] = @"emptyPattern";
    v38 = +[NSBundle mainBundle];
    v36 = [v38 localizedStringForKey:@"Empty" value:0 table:0];
    v47[1] = v36;
    v46[2] = @"shortDashPattern";
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Short dash" value:0 table:0];
    v47[2] = v8;
    v46[3] = @"mediumDashPattern";
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Medium dash" value:0 table:0];
    v47[3] = v10;
    v46[4] = @"longDashPattern";
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Long dash" value:0 table:0];
    v47[4] = v12;
    v46[5] = @"roundDashPattern";
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Rounded dash" value:0 table:0];
    v47[5] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:6];
    v16 = qword_101A353B0;
    qword_101A353B0 = v15;
  }

  if (!qword_101A353A8 && !v4)
  {
    v44[0] = @"solidPattern";
    v43 = +[NSBundle mainBundle];
    v41 = [v43 localizedStringForKey:@"Solid stroke" value:0 table:0];
    v45[0] = v41;
    v44[1] = @"emptyPattern";
    v39 = +[NSBundle mainBundle];
    v37 = [v39 localizedStringForKey:@"Empty stroke" value:0 table:0];
    v45[1] = v37;
    v44[2] = @"shortDashPattern";
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Short dash stroke" value:0 table:0];
    v45[2] = v18;
    v44[3] = @"mediumDashPattern";
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Medium dash stroke" value:0 table:0];
    v45[3] = v20;
    v44[4] = @"longDashPattern";
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"Long dash stroke" value:0 table:0];
    v45[4] = v22;
    v44[5] = @"roundDashPattern";
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"Rounded dash stroke" value:0 table:0];
    v45[5] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:6];
    v26 = qword_101A353A8;
    qword_101A353A8 = v25;
  }

  v27 = &qword_101A353B0;
  if (!v4)
  {
    v27 = &qword_101A353A8;
  }

  v28 = [*v27 objectForKeyedSubscript:v5];
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    if (![v28 length])
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Unrecognized pattern %@, could not get localization key", v30, v31, v32, v33, v34, v5))
      {
        abort();
      }
    }
  }

  return v28;
}

- (int64_t)_crlaxStrokePattern
{
  v2 = [(CRLStrokePatternAccessibility *)self crlaxTarget];
  v3 = [v2 patternType];

  return v3;
}

@end