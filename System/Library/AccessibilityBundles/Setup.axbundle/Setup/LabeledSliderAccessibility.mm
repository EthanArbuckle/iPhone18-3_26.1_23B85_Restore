@interface LabeledSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)_accessibilityIncreaseAmount:(BOOL)amount;
- (float)_accessibilityLabeledSliderValue;
- (id)accessibilityValue;
- (void)_accessibilityReportModeChanged;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation LabeledSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Setup.LabeledSlider" hasSwiftField:@"labels" withSwiftType:"Array<UILabel>"];
  [validationsCopy validateClass:@"Setup.BuddyAppearanceController" hasInstanceMethod:@"modeChanged" withFullSignature:{"v", 0}];
}

- (float)_accessibilityLabeledSliderValue
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 value];
  v4 = v3;

  return v4;
}

- (double)_accessibilityIncreaseAmount:(BOOL)amount
{
  amountCopy = amount;
  [(LabeledSliderAccessibility *)self _accessibilityLabeledSliderValue];
  v5 = -1.01;
  if (amountCopy)
  {
    v5 = 1.01;
  }

  return (v5 + v4);
}

- (void)_accessibilityReportModeChanged
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  [v3 allTargets];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 modeChanged];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
  v10 = *MEMORY[0x29EDCA608];
}

- (void)accessibilityIncrement
{
  v3.receiver = self;
  v3.super_class = LabeledSliderAccessibility;
  [(LabeledSliderAccessibility *)&v3 accessibilityIncrement];
  [(LabeledSliderAccessibility *)self _accessibilityReportModeChanged];
}

- (void)accessibilityDecrement
{
  v3.receiver = self;
  v3.super_class = LabeledSliderAccessibility;
  [(LabeledSliderAccessibility *)&v3 accessibilityDecrement];
  [(LabeledSliderAccessibility *)self _accessibilityReportModeChanged];
}

- (id)accessibilityValue
{
  v3 = [(LabeledSliderAccessibility *)self safeSwiftArrayForKey:@"labels"];
  [(LabeledSliderAccessibility *)self _accessibilityLabeledSliderValue];
  v5 = llroundf(v4);
  v6 = v5 & ~(v5 >> 31);
  if ([v3 count] <= v6)
  {
    accessibilityLabel = 0;
  }

  else
  {
    objc_opt_class();
    v7 = [v3 objectAtIndexedSubscript:v6];
    v8 = __UIAccessibilityCastAsClass();

    accessibilityLabel = [v8 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end