@interface ACSportsPeriodicScoreboardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (void)didChangeMatchupFromMatchup:(id)a3;
@end

@implementation ACSportsPeriodicScoreboardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ACSportsPeriodicScoreboardView" isKindOfClass:@"ACSportsScoreboardView"];
  [v3 validateClass:@"ACSportsScoreboardView" hasInstanceVariable:@"_headerLabel" withType:"SiriUIContentLabel"];
  [v3 validateClass:@"ACSportsScoreboardView" hasInstanceVariable:@"_subtitleLabel" withType:"SiriUIContentLabel"];
  [v3 validateClass:@"ACSportsScoreboardView" hasInstanceVariable:@"_venueNameLabel" withType:"UILabel"];
  [v3 validateClass:@"ACSportsPeriodicScoreboardView" hasInstanceVariable:@"_lineScoreViews" withType:"NSMutableArray"];
  [v3 validateClass:@"ACSportsPeriodicScoreboardView" hasInstanceVariable:@"_totalLineScoreView" withType:"ACSportsMatchupLineScoreView"];
  [v3 validateClass:@"ACSportsScoreboardView" hasInstanceMethod:@"matchup" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsMatchup" hasInstanceMethod:@"homeEntity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsMatchup" hasInstanceMethod:@"homeScore" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsMatchup" hasInstanceMethod:@"awayEntity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsMatchup" hasInstanceMethod:@"awayScore" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsEntity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ACSportsPeriodicScoreboardView" hasInstanceMethod:@"didChangeMatchupFromMatchup:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityElements
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = [(ACSportsPeriodicScoreboardViewAccessibility *)self _accessibilityValueForKey:@"AXScoreboardElements"];
  if (!v3)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = [(ACSportsPeriodicScoreboardViewAccessibility *)self safeValueForKey:@"_headerLabel"];
    v5 = [(ACSportsPeriodicScoreboardViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
    v6 = [(ACSportsPeriodicScoreboardViewAccessibility *)self safeValueForKey:@"matchup"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 safeValueForKey:@"homeEntity"];
      v9 = [v8 safeValueForKey:@"name"];

      v10 = [v7 safeValueForKey:@"homeScore"];
      v11 = [v7 safeValueForKey:@"awayEntity"];
      v12 = [v11 safeValueForKey:@"name"];

      v13 = [v7 safeValueForKey:@"awayScore"];
      v33 = v5;
      v27 = [v5 accessibilityLabel];
      v29 = v13;
      v30 = v12;
      v31 = v10;
      v32 = v9;
      v14 = __UIAXStringForVariables();

      v28 = v14;
      [v4 setAccessibilityLabel:{v14, v10, v12, v13, v27, @"__AXStringForVariablesSentinel"}];
      [v3 axSafelyAddObject:v4];
      v38 = 0;
      objc_opt_class();
      v15 = [(ACSportsPeriodicScoreboardViewAccessibility *)self safeValueForKey:@"_lineScoreViews"];
      v16 = __UIAccessibilityCastAsClass();

      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v35;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v34 + 1) + 8 * i);
            [v22 _accessibilitySetRetainedValue:v7 forKey:@"AXSportsMatchup"];
            [v3 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v19);
      }

      v23 = [(ACSportsPeriodicScoreboardViewAccessibility *)self safeValueForKey:@"_totalLineScoreView"];
      [v23 _accessibilitySetRetainedValue:@"total" forKey:@"AXSportsScorePeriodType"];
      [v23 _accessibilitySetRetainedValue:v7 forKey:@"AXSportsMatchup"];
      [v3 axSafelyAddObject:v23];
      v24 = [(ACSportsPeriodicScoreboardViewAccessibility *)self safeValueForKey:@"_venueNameLabel"];
      [v24 _accessibilitySetRetainedValue:MEMORY[0x29EDB8EB0] forKey:@"AXIsSportsPeriodVenueLabel"];
      [v3 axSafelyAddObject:v24];

      v5 = v33;
    }

    [(ACSportsPeriodicScoreboardViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"AXScoreboardElements"];
  }

  v25 = *MEMORY[0x29EDCA608];

  return v3;
}

- (void)didChangeMatchupFromMatchup:(id)a3
{
  v4.receiver = self;
  v4.super_class = ACSportsPeriodicScoreboardViewAccessibility;
  [(ACSportsPeriodicScoreboardViewAccessibility *)&v4 didChangeMatchupFromMatchup:a3];
  [(ACSportsPeriodicScoreboardViewAccessibility *)self _accessibilityRemoveValueForKey:@"AXScoreboardElements"];
}

@end