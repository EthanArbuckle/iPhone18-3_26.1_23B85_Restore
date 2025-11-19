@interface UIColorAccessibility_ElectricTouch_UIKit
+ (id)axHueNameForValue:(double)a3;
- (double)axHue;
- (double)axSaturation;
- (id)axApproximateColorDescription;
- (id)axColorStringForSpeaking;
- (id)axHueName;
- (id)axLightnessModifier;
- (id)axSaturationModifier;
@end

@implementation UIColorAccessibility_ElectricTouch_UIKit

- (double)axHue
{
  v3 = 0.0;
  [(UIColorAccessibility_ElectricTouch_UIKit *)self getHue:&v3 saturation:0 brightness:0 alpha:0];
  return v3;
}

- (double)axSaturation
{
  v3 = 0.0;
  [(UIColorAccessibility_ElectricTouch_UIKit *)self getHue:0 saturation:&v3 brightness:0 alpha:0];
  return v3;
}

- (id)axApproximateColorDescription
{
  v3 = [(UIColorAccessibility_ElectricTouch_UIKit *)self _axCachedApproximateColorDescription];
  if (!v3)
  {
    [(UIColorAccessibility_ElectricTouch_UIKit *)self axHue];
    v5 = v4;
    [(UIColorAccessibility_ElectricTouch_UIKit *)self axSaturation];
    v7 = v6;
    [(UIColorAccessibility_ElectricTouch_UIKit *)self axLuminance];
    v9 = v8;
    if (v8 <= 0.99000001)
    {
      if (v8 >= 0.00999999978)
      {
        if (v7 >= 0.0500000007)
        {
          v16 = MEMORY[0x29EDBA0F8];
          v17 = accessibilityLocalizedString(@"color.format.lightness.saturation.hue");
          v18 = [(UIColorAccessibility_ElectricTouch_UIKit *)self axLightnessModifier];
          v19 = [(UIColorAccessibility_ElectricTouch_UIKit *)self axSaturationModifier];
          if (v5 <= 0.0560000017 || v5 >= 0.111000001 || v9 >= 0.430000007)
          {
            v20 = [(UIColorAccessibility_ElectricTouch_UIKit *)self axHueName];
          }

          else
          {
            v20 = accessibilityLocalizedString(@"color.brown");
          }

          v21 = v20;
          v3 = [v16 stringWithFormat:v17, v18, v19, v20];
        }

        else
        {
          v12 = MEMORY[0x29EDBA0F8];
          v13 = accessibilityLocalizedString(@"color.format.lightness.hue");
          v14 = [(UIColorAccessibility_ElectricTouch_UIKit *)self axLightnessModifier];
          v15 = accessibilityLocalizedString(@"color.gray");
          v3 = [v12 stringWithFormat:v13, v14, v15];
        }

        goto LABEL_7;
      }

      v10 = @"color.black";
    }

    else
    {
      v10 = @"color.white";
    }

    v3 = accessibilityLocalizedString(v10);
LABEL_7:
    [(UIColorAccessibility_ElectricTouch_UIKit *)self _axSetCachedApproximateColorDescription:v3];
  }

  return v3;
}

- (id)axHueName
{
  v3 = objc_opt_class();
  [(UIColorAccessibility_ElectricTouch_UIKit *)self axHue];

  return [v3 axHueNameForValue:?];
}

- (id)axLightnessModifier
{
  [(UIColorAccessibility_ElectricTouch_UIKit *)self axLuminance];
  if (v2 < 0.349999994)
  {
    v3 = @"color.lightness.low";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  if (v2 > 0.850000024)
  {
    v3 = @"color.lightness.high";
    goto LABEL_5;
  }

  v4 = &stru_2A218CD88;
LABEL_7:

  return v4;
}

- (id)axSaturationModifier
{
  [(UIColorAccessibility_ElectricTouch_UIKit *)self axSaturation];
  if (v3 < 0.200000003)
  {
    v4 = @"color.saturation.low";
LABEL_3:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_8;
  }

  if (v3 > 0.899999976)
  {
    [(UIColorAccessibility_ElectricTouch_UIKit *)self axLuminance];
    if (v6 > 0.699999988)
    {
      v4 = @"color.saturation.high";
      goto LABEL_3;
    }
  }

  v5 = &stru_2A218CD88;
LABEL_8:

  return v5;
}

+ (id)axHueNameForValue:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    _AXAssert();
    v4 = 0;
    goto LABEL_40;
  }

  if (a3 >= 0.0280000009)
  {
    if (a3 < 0.0560000017)
    {
      v5 = @"color.hue.red.orange";
      goto LABEL_39;
    }

    if (a3 < 0.111000001)
    {
      v5 = @"color.hue.orange";
      goto LABEL_39;
    }

    if (a3 < 0.128999993)
    {
      v5 = @"color.hue.orange.yellow";
      goto LABEL_39;
    }

    if (a3 < 0.166999996)
    {
      v5 = @"color.hue.yellow";
      goto LABEL_39;
    }

    if (a3 < 0.222000003)
    {
      v5 = @"color.hue.yellow.green";
      goto LABEL_39;
    }

    if (a3 < 0.388999999)
    {
      v5 = @"color.hue.green";
      goto LABEL_39;
    }

    if (a3 < 0.469000012)
    {
      v5 = @"color.hue.green.cyan";
      goto LABEL_39;
    }

    if (a3 < 0.540000021)
    {
      v5 = @"color.hue.cyan";
      goto LABEL_39;
    }

    if (a3 < 0.611000001)
    {
      v5 = @"color.hue.cyan.blue";
      goto LABEL_39;
    }

    if (a3 < 0.666999996)
    {
      v5 = @"color.hue.blue";
      goto LABEL_39;
    }

    if (a3 < 0.800000012)
    {
      v5 = @"color.hue.blue.magenta";
      goto LABEL_39;
    }

    if (a3 < 0.888999999)
    {
      v5 = @"color.hue.magenta";
      goto LABEL_39;
    }

    if (a3 < 0.916999996)
    {
      v5 = @"color.hue.magenta.pink";
      goto LABEL_39;
    }

    if (a3 < 0.958000004)
    {
      v5 = @"color.hue.pink";
      goto LABEL_39;
    }

    if (a3 < 0.986000001)
    {
      v5 = @"color.hue.pink.red";
      goto LABEL_39;
    }
  }

  v5 = @"color.hue.red";
LABEL_39:
  v4 = accessibilityLocalizedString(v5);
LABEL_40:

  return v4;
}

- (id)axColorStringForSpeaking
{
  [(UIColorAccessibility_ElectricTouch_UIKit *)self axLuminance];
  v3 = MEMORY[0x29EDBA0F8];
  v4 = [(UIColorAccessibility_ElectricTouch_UIKit *)self axApproximateColorDescription];
  v5 = AXFormatInteger();
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end