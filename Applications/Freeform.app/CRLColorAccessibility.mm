@interface CRLColorAccessibility
+ (id)crlaxCastFrom:(id)a3;
+ (id)crlaxHueNameForValue:(double)a3;
+ (id)crlaxOpacityDescriptionStringForAlphaComponent:(double)a3;
- (NSString)crlaxApproximateColorDescription;
- (NSString)crlaxApproximateColorDescriptionWithOpacity;
- (NSString)crlaxHueName;
- (NSString)crlaxLightnessModifier;
- (NSString)crlaxSaturationModifier;
- (NSString)crlaxStyleInfoDescription;
- (UIColor)crlaxUIColor;
- (double)crlaxHue;
- (double)crlaxLuminance;
- (double)crlaxSaturation;
- (id)_crlaxColorDescriptionForAttributes:(id)a3;
@end

@implementation CRLColorAccessibility

- (UIColor)crlaxUIColor
{
  v2 = [(CRLColorAccessibility *)self crlaxTarget];
  v3 = [v2 UIColor];

  return v3;
}

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (double)crlaxHue
{
  v2 = [(CRLColorAccessibility *)self crlaxTarget];
  [v2 hueComponent];
  v4 = v3;

  return v4;
}

- (double)crlaxSaturation
{
  v2 = [(CRLColorAccessibility *)self crlaxTarget];
  [v2 saturationComponent];
  v4 = v3;

  return v4;
}

- (double)crlaxLuminance
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004C4000;
  v4[3] = &unk_10183A0A8;
  v4[4] = self;
  v4[5] = &v5;
  if (__CRLAccessibilityPerformSafeBlock(v4))
  {
    abort();
  }

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSString)crlaxApproximateColorDescription
{
  v3 = [(CRLColorAccessibility *)self _crlaxCachedApproximateColorDescription];
  if (!v3)
  {
    [(CRLColorAccessibility *)self crlaxHue];
    v5 = v4;
    [(CRLColorAccessibility *)self crlaxSaturation];
    v7 = v6;
    [(CRLColorAccessibility *)self crlaxLuminance];
    v9 = v8;
    if (v8 > 0.99000001)
    {
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"White";
LABEL_6:
      v3 = [v10 localizedStringForKey:v12 value:0 table:0];
LABEL_16:

      [(CRLColorAccessibility *)self _crlaxSetCachedApproximateColorDescription:v3];
      goto LABEL_17;
    }

    if (v8 < 0.00999999978)
    {
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"Black";
      goto LABEL_6;
    }

    if (v7 >= 0.0500000007)
    {
      v17 = [(CRLColorAccessibility *)self crlaxLightnessModifier];
      v11 = v17;
      if (v5 > 0.0560000017 && v5 < 0.111000001 && v9 < 0.430000007)
      {
        v22[0] = v17;
        v13 = [(CRLColorAccessibility *)self crlaxSaturationModifier];
        v22[1] = v13;
        v14 = +[NSBundle mainBundle];
        v18 = [v14 localizedStringForKey:@"Brown" value:0 table:0];
        v22[2] = v18;
        v19 = [NSArray arrayWithObjects:v22 count:3];
        v3 = [(CRLColorAccessibility *)self _crlaxColorDescriptionForAttributes:v19];

LABEL_15:
        goto LABEL_16;
      }

      v21[0] = v17;
      v13 = [(CRLColorAccessibility *)self crlaxSaturationModifier];
      v21[1] = v13;
      v14 = [(CRLColorAccessibility *)self crlaxHueName];
      v21[2] = v14;
      v15 = v21;
      v16 = 3;
    }

    else
    {
      v11 = [(CRLColorAccessibility *)self crlaxLightnessModifier];
      v23[0] = v11;
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Gray" value:0 table:0];
      v23[1] = v14;
      v15 = v23;
      v16 = 2;
    }

    v18 = [NSArray arrayWithObjects:v15 count:v16];
    v3 = [(CRLColorAccessibility *)self _crlaxColorDescriptionForAttributes:v18];
    goto LABEL_15;
  }

LABEL_17:

  return v3;
}

- (NSString)crlaxApproximateColorDescriptionWithOpacity
{
  v3 = [(CRLColorAccessibility *)self crlaxTarget];
  v4 = [v3 isClear];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Clear" value:0 table:0];
  }

  else
  {
    v7 = [(CRLColorAccessibility *)self crlaxTarget];
    v8 = [v7 isOpaque];

    v5 = [(CRLColorAccessibility *)self crlaxApproximateColorDescription];
    if (v8)
    {
      goto LABEL_6;
    }

    v9 = [(CRLColorAccessibility *)self crlaxTarget];
    [v9 alphaComponent];
    v10 = [CRLColorAccessibility crlaxOpacityDescriptionStringForAlphaComponent:?];
    v6 = __CRLAccessibilityStringForVariables(1, v5, v11, v12, v13, v14, v15, v16, v10);
  }

  v5 = v6;
LABEL_6:

  return v5;
}

- (NSString)crlaxHueName
{
  v3 = objc_opt_class();
  [(CRLColorAccessibility *)self crlaxHue];

  return [v3 crlaxHueNameForValue:?];
}

- (NSString)crlaxLightnessModifier
{
  [(CRLColorAccessibility *)self crlaxLuminance];
  if (v2 < 0.349999994)
  {
    v3 = @"dark";
LABEL_5:
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];

    goto LABEL_7;
  }

  if (v2 > 0.850000024)
  {
    v3 = @"light";
    goto LABEL_5;
  }

  v5 = &stru_1018BCA28;
LABEL_7:

  return v5;
}

- (NSString)crlaxSaturationModifier
{
  [(CRLColorAccessibility *)self crlaxSaturation];
  if (v3 < 0.200000003)
  {
    v4 = @"grayish";
LABEL_3:
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:0 table:0];

    goto LABEL_8;
  }

  if (v3 > 0.899999976)
  {
    [(CRLColorAccessibility *)self crlaxLuminance];
    if (v7 > 0.699999988)
    {
      v4 = @"vibrant";
      goto LABEL_3;
    }
  }

  v6 = &stru_1018BCA28;
LABEL_8:

  return v6;
}

+ (id)crlaxHueNameForValue:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Hue value should be in range [0..1f], got %f", v6, v7, v8, v9, v10, *&a3))
      {
        abort();
      }
    }

    v11 = 0;
  }

  else
  {
    if (a3 >= 0.0280000009)
    {
      if (a3 >= 0.0560000017)
      {
        if (a3 >= 0.111000001)
        {
          if (a3 >= 0.128999993)
          {
            if (a3 >= 0.166999996)
            {
              if (a3 >= 0.222000003)
              {
                if (a3 >= 0.388999999)
                {
                  if (a3 >= 0.469000012)
                  {
                    if (a3 >= 0.540000021)
                    {
                      if (a3 >= 0.611000001)
                      {
                        if (a3 >= 0.666999996)
                        {
                          if (a3 >= 0.800000012)
                          {
                            if (a3 >= 0.888999999)
                            {
                              if (a3 >= 0.916999996)
                              {
                                if (a3 >= 0.958000004)
                                {
                                  v12 = +[NSBundle mainBundle];
                                  v13 = v12;
                                  if (a3 >= 0.986000001)
                                  {
                                    v14 = @"red";
                                  }

                                  else
                                  {
                                    v14 = @"pink red";
                                  }
                                }

                                else
                                {
                                  v12 = +[NSBundle mainBundle];
                                  v13 = v12;
                                  v14 = @"pink";
                                }
                              }

                              else
                              {
                                v12 = +[NSBundle mainBundle];
                                v13 = v12;
                                v14 = @"magenta pink";
                              }
                            }

                            else
                            {
                              v12 = +[NSBundle mainBundle];
                              v13 = v12;
                              v14 = @"magenta";
                            }
                          }

                          else
                          {
                            v12 = +[NSBundle mainBundle];
                            v13 = v12;
                            v14 = @"purple";
                          }
                        }

                        else
                        {
                          v12 = +[NSBundle mainBundle];
                          v13 = v12;
                          v14 = @"blue";
                        }
                      }

                      else
                      {
                        v12 = +[NSBundle mainBundle];
                        v13 = v12;
                        v14 = @"cyan blue";
                      }
                    }

                    else
                    {
                      v12 = +[NSBundle mainBundle];
                      v13 = v12;
                      v14 = @"cyan";
                    }
                  }

                  else
                  {
                    v12 = +[NSBundle mainBundle];
                    v13 = v12;
                    v14 = @"blue green";
                  }
                }

                else
                {
                  v12 = +[NSBundle mainBundle];
                  v13 = v12;
                  v14 = @"green";
                }
              }

              else
              {
                v12 = +[NSBundle mainBundle];
                v13 = v12;
                v14 = @"yellow green";
              }
            }

            else
            {
              v12 = +[NSBundle mainBundle];
              v13 = v12;
              v14 = @"yellow";
            }
          }

          else
          {
            v12 = +[NSBundle mainBundle];
            v13 = v12;
            v14 = @"yellow orange";
          }
        }

        else
        {
          v12 = +[NSBundle mainBundle];
          v13 = v12;
          v14 = @"orange";
        }
      }

      else
      {
        v12 = +[NSBundle mainBundle];
        v13 = v12;
        v14 = @"red orange";
      }
    }

    else
    {
      v12 = +[NSBundle mainBundle];
      v13 = v12;
      v14 = @"red";
    }

    v11 = [v12 localizedStringForKey:v14 value:0 table:0];
  }

  return v11;
}

+ (id)crlaxOpacityDescriptionStringForAlphaComponent:(double)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"%d percent opaque" value:0 table:0];

  v6 = [NSString localizedStringWithFormat:v5, sub_1004C31F4(a3 * 100.0)];

  return v6;
}

- (NSString)crlaxStyleInfoDescription
{
  [(CRLColorAccessibility *)self crlaxLuminance];
  v4 = vcvtad_u64_f64(v3 * 100.0);
  v5 = [(CRLColorAccessibility *)self crlaxApproximateColorDescription];
  v6 = CRLAccessibilityLocalizedUnsignedInteger(v4);
  v7 = [NSString stringWithFormat:@"%@ %@", v5, v6];

  return v7;
}

- (id)_crlaxColorDescriptionForAttributes:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v4 length])
        {
          if ([v10 length])
          {
            [v4 appendFormat:@" %@", v10];
          }
        }

        else
        {
          [v4 appendString:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [NSString stringWithString:v4];

  return v11;
}

@end