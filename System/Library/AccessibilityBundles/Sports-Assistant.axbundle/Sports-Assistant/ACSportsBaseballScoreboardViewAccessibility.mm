@interface ACSportsBaseballScoreboardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation ACSportsBaseballScoreboardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ACSportsBaseballScoreboardView" isKindOfClass:@"ACSportsPeriodicScoreboardView"];
  [validationsCopy validateClass:@"ACSportsBaseballScoreboardView" hasInstanceVariable:@"_hitsLineScoreView" withType:"ACSportsMatchupLineScoreView"];
  [validationsCopy validateClass:@"ACSportsBaseballScoreboardView" hasInstanceVariable:@"_errorsLineScoreView" withType:"ACSportsMatchupLineScoreView"];
  [validationsCopy validateClass:@"ACSportsBaseballScoreboardView" hasInstanceMethod:@"matchup" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = ACSportsBaseballScoreboardViewAccessibility;
  accessibilityElements = [(ACSportsBaseballScoreboardViewAccessibility *)&v19 accessibilityElements];
  v4 = [accessibilityElements mutableCopy];

  v5 = [(ACSportsBaseballScoreboardViewAccessibility *)self safeValueForKey:@"_hitsLineScoreView"];
  v6 = [(ACSportsBaseballScoreboardViewAccessibility *)self safeValueForKey:@"_errorsLineScoreView"];
  [v5 _accessibilitySetRetainedValue:@"hits" forKey:@"AXSportsScorePeriodType"];
  [v6 _accessibilitySetRetainedValue:@"errors" forKey:@"AXSportsScorePeriodType"];
  [v4 axSafelyAddObject:v5];
  [v4 axSafelyAddObject:v6];
  v7 = [(ACSportsBaseballScoreboardViewAccessibility *)self safeValueForKey:@"matchup"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * i) _accessibilitySetRetainedValue:v7 forKey:{@"AXSportsMatchup", v15}];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x29EDCA608];

  return v8;
}

@end