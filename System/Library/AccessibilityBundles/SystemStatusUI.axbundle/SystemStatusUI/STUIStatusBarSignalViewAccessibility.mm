@interface STUIStatusBarSignalViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation STUIStatusBarSignalViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarSignalView" hasInstanceMethod:@"signalMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"STUIStatusBarSignalView" hasInstanceMethod:@"numberOfBars" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"STUIStatusBarSignalView" hasInstanceMethod:@"numberOfActiveBars" withFullSignature:{"q", 0}];
}

- (id)accessibilityValue
{
  v3 = [(STUIStatusBarSignalViewAccessibility *)self safeIntegerForKey:@"signalMode"];
  if (v3 == 2)
  {
    v6 = [(STUIStatusBarSignalViewAccessibility *)self safeIntegerForKey:@"numberOfBars"];
    v7 = [(STUIStatusBarSignalViewAccessibility *)self safeIntegerForKey:@"numberOfActiveBars"];
    v8 = [(STUIStatusBarSignalViewAccessibility *)self _accessibilityValueForKey:@"AccessibilityStatusBarSignalViewLabelKey"];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x29EDBA0F8];
      v11 = accessibilityLocalizedString(v8);
      v12 = [v10 localizedStringWithFormat:v11, v7, v6];
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_13;
  }

  if (v3 == 1)
  {
    v4 = @"status.signal.searching";
  }

  else
  {
    if (v3)
    {
      v14.receiver = self;
      v14.super_class = STUIStatusBarSignalViewAccessibility;
      accessibilityLabel = [(STUIStatusBarSignalViewAccessibility *)&v14 accessibilityLabel];
      goto LABEL_10;
    }

    v4 = @"status.signal.no.signal";
  }

  accessibilityLabel = accessibilityLocalizedString(v4);
LABEL_10:
  v12 = accessibilityLabel;
LABEL_13:

  return v12;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarSignalViewAccessibility;
  return *MEMORY[0x29EDC7580] | [(STUIStatusBarSignalViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC74F8];
}

@end