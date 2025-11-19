@interface PKSegmentedBarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (id)accessibilityValueLabels;
@end

@implementation PKSegmentedBarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKRewardsSummaryChartBarConfiguration"];
  [v3 validateClass:@"PKSegmentedBarView" hasInstanceVariable:@"_configuration" withType:"<PKSegmentedBarConfiguration>"];
}

- (id)accessibilityValueLabels
{
  v12[4] = *MEMORY[0x29EDCA608];
  v3 = [(PKSegmentedBarViewAccessibility *)self safeValueForKey:@"_configuration"];
  v4 = __UIAccessibilityCastAsProtocol();

  NSClassFromString(&cfstr_Pkrewardssumma.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = AXFormatFloatWithPercentage();
    v12[0] = v5;
    v6 = AXFormatFloatWithPercentage();
    v12[1] = v6;
    v7 = AXFormatFloatWithPercentage();
    v12[2] = v7;
    v8 = accessibilityLocalizedString(@"bonus.category");
    v12[3] = v8;
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:4];
  }

  else
  {
    v9 = [(PKSegmentedBarViewAccessibility *)self _accessibilityValueForKey:@"accessibilityValueLabels"];
  }

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

- (id)accessibilityValue
{
  v29 = *MEMORY[0x29EDCA608];
  v27 = 0;
  v3 = [(PKSegmentedBarViewAccessibility *)self safeValueForKey:@"_configuration"];
  v4 = __UIAccessibilityCastAsProtocol();

  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(PKSegmentedBarViewAccessibility *)self accessibilityValueLabels];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    LODWORD(v8) = 0;
    v9 = 0;
    v10 = *v24;
    do
    {
      v11 = 0;
      v8 = v8;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        if ([v4 numberOfSegments] > v8)
        {
          NSClassFromString(&cfstr_Pkrewardssumma.isa);
          if (objc_opt_isKindOfClass())
          {
            v13 = MEMORY[0x29EDBA078];
            v14 = MEMORY[0x29EDBA070];
            [v4 valueForSegmentAtIndex:v8];
            v15 = [v14 numberWithDouble:?];
            v16 = [v13 localizedStringFromNumber:v15 numberStyle:2];
          }

          else
          {
            [v4 valueForSegmentAtIndex:v8];
            v16 = AXFormatFloat();
          }

          v21 = v16;
          v22 = @"__AXStringForVariablesSentinel";
          v20 = v12;
          v17 = __UIAXStringForVariables();

          v9 = v17;
        }

        ++v8;
        ++v11;
      }

      while (v7 != v11);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x29EDCA608];

  return v9;
}

@end