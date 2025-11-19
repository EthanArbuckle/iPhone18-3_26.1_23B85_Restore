@interface ACSportsMatchupLineScoreViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axPeriodNameForPeriod:(id)a3 withValue:(id)a4;
- (id)_axSportType;
- (id)accessibilityLabel;
@end

@implementation ACSportsMatchupLineScoreViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ACSportsMatchupLineScoreView" hasInstanceMethod:@"periodNameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ACSportsMatchupLineScoreView" hasInstanceMethod:@"firstScoreLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ACSportsMatchupLineScoreView" hasInstanceMethod:@"secondScoreLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsMatchup" hasInstanceMethod:@"homeEntity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsMatchup" hasInstanceMethod:@"awayEntity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsEntity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsEntity" hasInstanceMethod:@"league" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsLeague" hasInstanceMethod:@"sport" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(ACSportsMatchupLineScoreViewAccessibility *)self safeValueForKey:@"periodNameLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(ACSportsMatchupLineScoreViewAccessibility *)self _accessibilityValueForKey:@"AXSportsScorePeriodType"];
  v6 = [(ACSportsMatchupLineScoreViewAccessibility *)self _axPeriodNameForPeriod:v5 withValue:v4];

  v7 = [(ACSportsMatchupLineScoreViewAccessibility *)self safeValueForKey:@"firstScoreLabel"];
  v8 = [v7 accessibilityLabel];

  v9 = [(ACSportsMatchupLineScoreViewAccessibility *)self safeValueForKey:@"secondScoreLabel"];
  v10 = [v9 accessibilityLabel];

  v11 = __UIAXStringForVariables();
  v12 = [(ACSportsMatchupLineScoreViewAccessibility *)self _accessibilityValueForKey:@"AXSportsMatchup", v8, v10, @"__AXStringForVariablesSentinel"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 safeValueForKey:@"homeEntity"];
    [v14 safeValueForKey:@"name"];
    v15 = v22 = v4;

    v16 = [v13 safeValueForKey:@"awayEntity"];
    v17 = [v16 safeValueForKey:@"name"];

    [v13 safeBoolForKey:@"ACSportsHomeIsFirst"];
    v18 = __UIAXStringForVariables();

    v19 = __UIAXStringForVariables();

    v20 = __UIAXStringForVariables();

    v4 = v22;
    v11 = v20;
    v10 = v19;
    v8 = v18;
  }

  return v11;
}

- (id)_axPeriodNameForPeriod:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_axPeriodNameForPeriod_withValue__onceToken != -1)
  {
    [ACSportsMatchupLineScoreViewAccessibility _axPeriodNameForPeriod:withValue:];
  }

  v8 = [v7 integerValue];
  v9 = _axPeriodNameForPeriod_withValue__OrdinalNumberFormatter;
  v10 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v7, "integerValue")}];
  v11 = [v9 stringFromNumber:v10];

  v12 = [(ACSportsMatchupLineScoreViewAccessibility *)self _axSportType];
  if (([v12 isEqualToString:@"Baseball"] & 1) != 0 || !objc_msgSend(v6, "isEqualToString:", @"total"))
  {
    if ([v12 isEqualToString:@"Baseball"])
    {
      if (v6 && !v8)
      {
        if ([v6 isEqualToString:@"total"])
        {
          v13 = @"sport.baseball.runs";
          goto LABEL_36;
        }

        if ([v6 isEqualToString:@"hits"])
        {
          v13 = @"sport.baseball.hits";
          goto LABEL_36;
        }

        if ([v6 isEqualToString:@"errors"])
        {
          v13 = @"sport.baseball.errors";
          goto LABEL_36;
        }

LABEL_18:
        v17 = 0;
        goto LABEL_37;
      }

      v14 = MEMORY[0x29EDBA0F8];
      v15 = @"sport.baseball.inning";
    }

    else if ([v12 isEqualToString:@"Football"])
    {
      if (v6 && !v8)
      {
        goto LABEL_18;
      }

      v14 = MEMORY[0x29EDBA0F8];
      v15 = @"sport.football.half";
    }

    else
    {
      if ([v12 isEqualToString:@"Soccer"])
      {
        goto LABEL_18;
      }

      if ([v12 isEqualToString:@"Hockey"])
      {
        if (v6 && !v8)
        {
          goto LABEL_18;
        }

        v14 = MEMORY[0x29EDBA0F8];
        v15 = @"sport.hockey.period";
      }

      else
      {
        v18 = [v12 isEqualToString:@"Basketball"];
        v17 = 0;
        if (v6)
        {
          v19 = v8 == 0;
        }

        else
        {
          v19 = 0;
        }

        v20 = !v19;
        if (!v18 || !v20)
        {
          goto LABEL_37;
        }

        v14 = MEMORY[0x29EDBA0F8];
        v15 = @"sport.basketball.quarter";
      }
    }

    v16 = accessibilityLocalizedString(v15);
    v17 = [v14 stringWithFormat:v16, v11];

    goto LABEL_37;
  }

  v13 = @"sport.score.total";
LABEL_36:
  v17 = accessibilityLocalizedString(v13);
LABEL_37:

  return v17;
}

uint64_t __78__ACSportsMatchupLineScoreViewAccessibility__axPeriodNameForPeriod_withValue___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x29EDBA078]);
  v1 = _axPeriodNameForPeriod_withValue__OrdinalNumberFormatter;
  _axPeriodNameForPeriod_withValue__OrdinalNumberFormatter = v0;

  v2 = _axPeriodNameForPeriod_withValue__OrdinalNumberFormatter;

  return [v2 setNumberStyle:6];
}

- (id)_axSportType
{
  v2 = [(ACSportsMatchupLineScoreViewAccessibility *)self _accessibilityValueForKey:@"AXSportsMatchup"];
  v3 = [v2 safeValueForKey:@"awayEntity"];
  v4 = [v3 safeValueForKey:@"league"];
  v5 = [v4 safeValueForKey:@"sport"];

  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

@end