@interface DisplayFilterSingleColorSliderCell
+ (id)colorNameForHue:(double)hue saturation:(double)saturation;
- (id)accessibilityValue;
@end

@implementation DisplayFilterSingleColorSliderCell

+ (id)colorNameForHue:(double)hue saturation:(double)saturation
{
  v5 = @"DISPLAY_FILTER_HUE_RED";
  if (hue >= 25.0)
  {
    if (hue >= 50.0)
    {
      if (hue >= 80.0)
      {
        if (hue >= 130.0)
        {
          if (hue >= 185.0)
          {
            if (hue >= 236.0)
            {
              if (hue >= 265.0)
              {
                if (hue >= 300.0)
                {
                  if (hue < 330.0)
                  {
                    v5 = @"DISPLAY_FILTER_HUE_VIOLET";
                  }
                }

                else
                {
                  v5 = @"DISPLAY_FILTER_HUE_INDIGO";
                }
              }

              else
              {
                v5 = @"DISPLAY_FILTER_HUE_PURPLE";
              }
            }

            else
            {
              v5 = @"DISPLAY_FILTER_HUE_BLUE";
            }
          }

          else
          {
            v5 = @"DISPLAY_FILTER_HUE_TURQUOISE";
          }
        }

        else
        {
          v5 = @"DISPLAY_FILTER_HUE_GREEN";
        }
      }

      else
      {
        v5 = @"DISPLAY_FILTER_HUE_YELLOW";
      }
    }

    else
    {
      v5 = @"DISPLAY_FILTER_HUE_ORANGE";
    }
  }

  v6 = settingsLocString(v5, @"Accessibility");

  return v6;
}

- (id)accessibilityValue
{
  controlValue = [(DisplayFilterSingleColorSliderCell *)self controlValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    [controlValue floatValue];
    accessibilityValue = [v4 colorNameForHue:v5 * 360.0 saturation:1.0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DisplayFilterSingleColorSliderCell;
    accessibilityValue = [(DisplayFilterSingleColorSliderCell *)&v9 accessibilityValue];
  }

  v7 = accessibilityValue;

  return v7;
}

@end