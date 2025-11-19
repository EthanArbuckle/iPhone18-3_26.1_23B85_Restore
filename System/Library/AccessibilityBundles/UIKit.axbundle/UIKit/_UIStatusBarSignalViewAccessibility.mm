@interface _UIStatusBarSignalViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIStatusBarSignalViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIStatusBarSignalView";
  v4 = "q";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"numberOfBars" withFullSignature:{v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"numberOfActiveBars" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityValue
{
  v20 = self;
  v19[1] = a2;
  v19[0] = 0;
  v18 = [(_UIStatusBarSignalViewAccessibility *)self safeIntegerForKey:@"signalMode"];
  if (v18)
  {
    if (v18 == 1)
    {
      v4 = accessibilityLocalizedString(@"status.signal.searching");
      v5 = v19[0];
      v19[0] = v4;
      MEMORY[0x29EDC9740](v5);
    }

    else if (v18 == 2)
    {
      v17 = [(_UIStatusBarSignalViewAccessibility *)v20 safeIntegerForKey:@"numberOfBars"];
      v16 = [(_UIStatusBarSignalViewAccessibility *)v20 safeIntegerForKey:@"numberOfActiveBars"];
      location = [(_UIStatusBarSignalViewAccessibility *)v20 _accessibilityValueForKey:@"AccessibilityStatusBarSignalViewLabelKey"];
      if (location)
      {
        v12 = MEMORY[0x29EDBA0F8];
        v13 = accessibilityLocalizedString(location);
        v6 = [v12 localizedStringWithFormat:v16, v17];
        v7 = v19[0];
        v19[0] = v6;
        MEMORY[0x29EDC9740](v7);
        MEMORY[0x29EDC9740](v13);
      }

      objc_storeStrong(&location, 0);
    }

    else
    {
      v14.receiver = v20;
      v14.super_class = _UIStatusBarSignalViewAccessibility;
      v8 = [(_UIStatusBarSignalViewAccessibility *)&v14 accessibilityLabel];
      v9 = v19[0];
      v19[0] = v8;
      MEMORY[0x29EDC9740](v9);
    }
  }

  else
  {
    v2 = accessibilityLocalizedString(@"status.signal.no.signal");
    v3 = v19[0];
    v19[0] = v2;
    MEMORY[0x29EDC9740](v3);
  }

  v11 = MEMORY[0x29EDC9748](v19[0]);
  objc_storeStrong(v19, 0);

  return v11;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIStatusBarSignalViewAccessibility;
  return [(_UIStatusBarSignalViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580] | *MEMORY[0x29EDC74F8];
}

@end