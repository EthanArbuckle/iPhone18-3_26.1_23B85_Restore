@interface UIStatusBarBatteryPercentItemViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)_accessibilityIsBatteryItemVisible;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarBatteryPercentItemViewAccessibility

- (id)_accessibilityIsBatteryItemVisible
{
  v17 = *MEMORY[0x29EDCA608];
  v14 = a1;
  if (a1)
  {
    v7 = [v14 superview];
    location = [v7 subviews];
    MEMORY[0x29EDC9740](v7);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](location);
    v9 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
    if (v9)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v9;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(__b[1] + 8 * v5);
        NSClassFromString(&cfstr_Uistatusbarbat.isa);
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
          if (!v6)
          {
            goto LABEL_11;
          }
        }
      }

      v15 = MEMORY[0x29EDC9748](v12);
      v10 = 1;
    }

    else
    {
LABEL_11:
      v10 = 0;
    }

    MEMORY[0x29EDC9740](obj);
    if (!v10)
    {
      v15 = 0;
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v15 = 0;
  }

  v1 = v15;

  return v1;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(UIStatusBarBatteryPercentItemViewAccessibility *)self _accessibilityIsBatteryItemVisible];
  v4 = v2 == 0;
  MEMORY[0x29EDC9740](v2);
  return v4;
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"status.battery.capacity");
  v4 = [(UIStatusBarBatteryPercentItemViewAccessibility *)self safeValueForKey:@"_percentString"];
  v6 = [v3 stringWithFormat:v5, v4];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarBatteryPercentItemViewAccessibility;
  return [(UIStatusBarBatteryPercentItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end