@interface DisplayFilterSingleColorSliderCell
+ (id)colorNameForHue:(double)a3 saturation:(double)a4;
- (id)accessibilityValue;
@end

@implementation DisplayFilterSingleColorSliderCell

+ (id)colorNameForHue:(double)a3 saturation:(double)a4
{
  v5 = @"DISPLAY_FILTER_HUE_RED";
  if (a3 >= 25.0)
  {
    if (a3 >= 50.0)
    {
      if (a3 >= 80.0)
      {
        if (a3 >= 130.0)
        {
          if (a3 >= 185.0)
          {
            if (a3 >= 236.0)
            {
              if (a3 >= 265.0)
              {
                if (a3 >= 300.0)
                {
                  if (a3 < 330.0)
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
  v3 = [(DisplayFilterSingleColorSliderCell *)self controlValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    [v3 floatValue];
    v6 = [v4 colorNameForHue:v5 * 360.0 saturation:1.0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DisplayFilterSingleColorSliderCell;
    v6 = [(DisplayFilterSingleColorSliderCell *)&v9 accessibilityValue];
  }

  v7 = v6;

  return v7;
}

@end