@interface UIColor(PKAccessibility)
+ (id)pkaxHueNameForValue:()PKAccessibility;
- (__CFString)pkaxLightnessModifier;
- (__CFString)pkaxSaturationModifier;
- (double)pkaxHue;
- (double)pkaxLuma;
- (double)pkaxSaturation;
- (id)_pkaxColorDescriptionForHue:()PKAccessibility saturation:lightness:;
- (id)_pkaxLightnessHueFormatString;
- (id)_pkaxLightnessSaturationHueFormatString;
- (id)_pkaxSaturationHueFormatString;
- (id)pkaxApproximateColorDescription;
- (id)pkaxDescriptionWithLuma;
- (uint64_t)pkaxHueName;
@end

@implementation UIColor(PKAccessibility)

- (double)pkaxHue
{
  v2 = 0.0;
  [self getHue:&v2 saturation:0 brightness:0 alpha:0];
  return v2;
}

- (double)pkaxSaturation
{
  v2 = 0.0;
  [self getHue:0 saturation:&v2 brightness:0 alpha:0];
  return v2;
}

- (double)pkaxLuma
{
  v5 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v2 = 0.0;
  [self getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  result = fmax(v2 * (v4 * 0.715200007 + v5 * 0.212599993 + v3 * 0.0722000003), 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (id)pkaxApproximateColorDescription
{
  _pkaxCachedApproximateColorDescription = [self _pkaxCachedApproximateColorDescription];
  if (!_pkaxCachedApproximateColorDescription)
  {
    v18 = 0.0;
    v19 = 0.0;
    [self pkaxLuma];
    v4 = v3;
    [self getHue:&v19 saturation:&v18 brightness:&v17 alpha:&v16];
    if (v4 > 0.99000001)
    {
      v5 = _PencilKitBundle();
      pkaxHueName = v5;
      v7 = @"white";
LABEL_6:
      _pkaxCachedApproximateColorDescription = [v5 localizedStringForKey:v7 value:v7 table:@"Localizable"];
LABEL_16:

      [self _pkaxSetCachedApproximateColorDescription:_pkaxCachedApproximateColorDescription];
      goto LABEL_17;
    }

    if (v4 < 0.00999999978)
    {
      v5 = _PencilKitBundle();
      pkaxHueName = v5;
      v7 = @"black";
      goto LABEL_6;
    }

    if (v18 >= 0.0500000007)
    {
      v13 = v19;
      if (v19 > 0.0560000017 && v19 < 0.111000001)
      {
        v13 = 0.430000007;
        if (v4 < 0.430000007)
        {
          pkaxHueName = _PencilKitBundle();
          pkaxSaturationModifier2 = [pkaxHueName localizedStringForKey:@"brown" value:@"brown" table:@"Localizable"];
          pkaxSaturationModifier = [self pkaxSaturationModifier];
          pkaxLightnessModifier = [self pkaxLightnessModifier];
          _pkaxCachedApproximateColorDescription = [self _pkaxColorDescriptionForHue:pkaxSaturationModifier2 saturation:pkaxSaturationModifier lightness:pkaxLightnessModifier];

LABEL_15:
          goto LABEL_16;
        }
      }

      pkaxHueName = [self pkaxHueName];
      pkaxSaturationModifier2 = [self pkaxSaturationModifier];
      pkaxSaturationModifier = [self pkaxLightnessModifier];
      selfCopy2 = self;
      v11 = pkaxHueName;
      v12 = pkaxSaturationModifier2;
    }

    else
    {
      pkaxHueName = _PencilKitBundle();
      pkaxSaturationModifier2 = [pkaxHueName localizedStringForKey:@"gray" value:@"gray" table:@"Localizable"];
      pkaxSaturationModifier = [self pkaxLightnessModifier];
      selfCopy2 = self;
      v11 = pkaxSaturationModifier2;
      v12 = 0;
    }

    _pkaxCachedApproximateColorDescription = [selfCopy2 _pkaxColorDescriptionForHue:v11 saturation:v12 lightness:pkaxSaturationModifier];
    goto LABEL_15;
  }

LABEL_17:

  return _pkaxCachedApproximateColorDescription;
}

- (uint64_t)pkaxHueName
{
  v2 = objc_opt_class();
  [self pkaxHue];

  return [v2 pkaxHueNameForValue:?];
}

- (__CFString)pkaxLightnessModifier
{
  [self pkaxLuma];
  if (v1 < 0.349999994)
  {
    v2 = _PencilKitBundle();
    v3 = v2;
    v4 = @"dark shade";
    v5 = @"dark";
LABEL_5:
    v6 = [v2 localizedStringForKey:v4 value:v5 table:@"Localizable"];

    goto LABEL_7;
  }

  if (v1 > 0.850000024)
  {
    v2 = _PencilKitBundle();
    v3 = v2;
    v4 = @"light shade";
    v5 = @"light";
    goto LABEL_5;
  }

  v6 = &stru_1F476BD20;
LABEL_7:

  return v6;
}

- (__CFString)pkaxSaturationModifier
{
  [self pkaxSaturation];
  if (v2 < 0.200000003)
  {
    v3 = _PencilKitBundle();
    v4 = v3;
    v5 = @"grayish";
LABEL_3:
    v6 = [v3 localizedStringForKey:v5 value:v5 table:@"Localizable"];

    goto LABEL_8;
  }

  if (v2 > 0.899999976)
  {
    [self pkaxLuma];
    if (v7 > 0.699999988)
    {
      v3 = _PencilKitBundle();
      v4 = v3;
      v5 = @"vibrant";
      goto LABEL_3;
    }
  }

  v6 = &stru_1F476BD20;
LABEL_8:

  return v6;
}

+ (id)pkaxHueNameForValue:()PKAccessibility
{
  if (self < 0.0 || self > 1.0)
  {
    v2 = 0;
  }

  else
  {
    if (self >= 0.0280000009)
    {
      if (self >= 0.0560000017)
      {
        if (self >= 0.111000001)
        {
          if (self >= 0.128999993)
          {
            if (self >= 0.166999996)
            {
              if (self >= 0.222000003)
              {
                if (self >= 0.388999999)
                {
                  if (self >= 0.469000012)
                  {
                    if (self >= 0.540000021)
                    {
                      if (self >= 0.611000001)
                      {
                        if (self >= 0.666999996)
                        {
                          if (self >= 0.800000012)
                          {
                            if (self >= 0.888999999)
                            {
                              if (self >= 0.916999996)
                              {
                                if (self >= 0.958000004)
                                {
                                  v3 = _PencilKitBundle();
                                  v4 = v3;
                                  if (self >= 0.986000001)
                                  {
                                    v5 = @"red hue";
                                    v6 = @"red";
                                  }

                                  else
                                  {
                                    v5 = @"pink red hue";
                                    v6 = @"pink red";
                                  }
                                }

                                else
                                {
                                  v3 = _PencilKitBundle();
                                  v4 = v3;
                                  v5 = @"pink hue";
                                  v6 = @"pink";
                                }
                              }

                              else
                              {
                                v3 = _PencilKitBundle();
                                v4 = v3;
                                v5 = @"magenta pink hue";
                                v6 = @"magenta pink";
                              }
                            }

                            else
                            {
                              v3 = _PencilKitBundle();
                              v4 = v3;
                              v5 = @"magenta hue";
                              v6 = @"magenta";
                            }
                          }

                          else
                          {
                            v3 = _PencilKitBundle();
                            v4 = v3;
                            v5 = @"purple hue";
                            v6 = @"purple";
                          }
                        }

                        else
                        {
                          v3 = _PencilKitBundle();
                          v4 = v3;
                          v5 = @"blue hue";
                          v6 = @"blue";
                        }
                      }

                      else
                      {
                        v3 = _PencilKitBundle();
                        v4 = v3;
                        v5 = @"cyan blue hue";
                        v6 = @"cyan blue";
                      }
                    }

                    else
                    {
                      v3 = _PencilKitBundle();
                      v4 = v3;
                      v5 = @"cyan hue";
                      v6 = @"cyan";
                    }
                  }

                  else
                  {
                    v3 = _PencilKitBundle();
                    v4 = v3;
                    v5 = @"blue green hue";
                    v6 = @"blue green";
                  }
                }

                else
                {
                  v3 = _PencilKitBundle();
                  v4 = v3;
                  v5 = @"green hue";
                  v6 = @"green";
                }
              }

              else
              {
                v3 = _PencilKitBundle();
                v4 = v3;
                v5 = @"yellow green hue";
                v6 = @"yellow green";
              }
            }

            else
            {
              v3 = _PencilKitBundle();
              v4 = v3;
              v5 = @"yellow hue";
              v6 = @"yellow";
            }
          }

          else
          {
            v3 = _PencilKitBundle();
            v4 = v3;
            v5 = @"yellow orange hue";
            v6 = @"yellow orange";
          }
        }

        else
        {
          v3 = _PencilKitBundle();
          v4 = v3;
          v5 = @"orange hue";
          v6 = @"orange";
        }
      }

      else
      {
        v3 = _PencilKitBundle();
        v4 = v3;
        v5 = @"red orange hue";
        v6 = @"red orange";
      }
    }

    else
    {
      v3 = _PencilKitBundle();
      v4 = v3;
      v5 = @"red hue";
      v6 = @"red";
    }

    v2 = [v3 localizedStringForKey:v5 value:v6 table:@"Localizable"];
  }

  return v2;
}

- (id)pkaxDescriptionWithLuma
{
  [self pkaxLuma];
  v3 = vcvtad_u64_f64(v2 * 100.0);
  v4 = MEMORY[0x1E696AEC0];
  pkaxApproximateColorDescription = [self pkaxApproximateColorDescription];
  v6 = PKAccessibilityLocalizedUnsignedInteger(v3);
  v7 = [v4 stringWithFormat:@"%@ %@", pkaxApproximateColorDescription, v6];

  return v7;
}

- (id)_pkaxColorDescriptionForHue:()PKAccessibility saturation:lightness:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 length];
  v12 = [v9 length];
  if (v11)
  {
    if (v12)
    {
      _pkaxLightnessSaturationHueFormatString = [self _pkaxLightnessSaturationHueFormatString];
      [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:_pkaxLightnessSaturationHueFormatString validFormatSpecifiers:@"%@%@%@" error:0, v10, v9, v8];
      v15 = LABEL_8:;

      goto LABEL_9;
    }

    _pkaxLightnessSaturationHueFormatString = [self _pkaxLightnessHueFormatString];
    v14 = MEMORY[0x1E696AEC0];
    v17 = v10;
    v18 = v8;
LABEL_7:
    [v14 localizedStringWithValidatedFormat:_pkaxLightnessSaturationHueFormatString validFormatSpecifiers:@"%@%@" error:0, v17, v18, v19];
    goto LABEL_8;
  }

  if (v12)
  {
    _pkaxLightnessSaturationHueFormatString = [self _pkaxSaturationHueFormatString];
    v14 = MEMORY[0x1E696AEC0];
    v17 = v9;
    v18 = v8;
    goto LABEL_7;
  }

  v15 = v8;
LABEL_9:

  return v15;
}

- (id)_pkaxLightnessHueFormatString
{
  v0 = _PencilKitBundle();
  v1 = [v0 localizedStringForKey:@"ax.color.format.lightness.hue" value:@"%1$@ %2$@" table:@"Localizable"];

  return v1;
}

- (id)_pkaxSaturationHueFormatString
{
  v0 = _PencilKitBundle();
  v1 = [v0 localizedStringForKey:@"ax.color.format.saturation.hue" value:@"%1$@ %2$@" table:@"Localizable"];

  return v1;
}

- (id)_pkaxLightnessSaturationHueFormatString
{
  v0 = _PencilKitBundle();
  v1 = [v0 localizedStringForKey:@"ax.color.format.lightness.saturation.hue" value:@"%1$@ %2$@ %3$@" table:@"Localizable"];

  return v1;
}

@end