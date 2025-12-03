@interface ACSportsMatchupLineScoreViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axPeriodNameForPeriod:(id)period withValue:(id)value;
- (id)_axSportType;
- (id)accessibilityLabel;
@end

@implementation ACSportsMatchupLineScoreViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ACSportsMatchupLineScoreView" hasInstanceMethod:@"periodNameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ACSportsMatchupLineScoreView" hasInstanceMethod:@"firstScoreLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ACSportsMatchupLineScoreView" hasInstanceMethod:@"secondScoreLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SASportsMatchup" hasInstanceMethod:@"homeEntity" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SASportsMatchup" hasInstanceMethod:@"awayEntity" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SASportsEntity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SASportsEntity" hasInstanceMethod:@"league" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SASportsLeague" hasInstanceMethod:@"sport" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(ACSportsMatchupLineScoreViewAccessibility *)self safeValueForKey:@"periodNameLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(ACSportsMatchupLineScoreViewAccessibility *)self _accessibilityValueForKey:@"AXSportsScorePeriodType"];
  v6 = [(ACSportsMatchupLineScoreViewAccessibility *)self _axPeriodNameForPeriod:v5 withValue:accessibilityLabel];

  v7 = [(ACSportsMatchupLineScoreViewAccessibility *)self safeValueForKey:@"firstScoreLabel"];
  accessibilityLabel2 = [v7 accessibilityLabel];

  v9 = [(ACSportsMatchupLineScoreViewAccessibility *)self safeValueForKey:@"secondScoreLabel"];
  accessibilityLabel3 = [v9 accessibilityLabel];

  v11 = __UIAXStringForVariables();
  v12 = [(ACSportsMatchupLineScoreViewAccessibility *)self _accessibilityValueForKey:@"AXSportsMatchup", accessibilityLabel2, accessibilityLabel3, @"__AXStringForVariablesSentinel"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 safeValueForKey:@"homeEntity"];
    [v14 safeValueForKey:@"name"];
    v15 = v22 = accessibilityLabel;

    v16 = [v13 safeValueForKey:@"awayEntity"];
    v17 = [v16 safeValueForKey:@"name"];

    [v13 safeBoolForKey:@"ACSportsHomeIsFirst"];
    v18 = __UIAXStringForVariables();

    v19 = __UIAXStringForVariables();

    v20 = __UIAXStringForVariables();

    accessibilityLabel = v22;
    v11 = v20;
    accessibilityLabel3 = v19;
    accessibilityLabel2 = v18;
  }

  return v11;
}

- (id)_axPeriodNameForPeriod:(id)period withValue:(id)value
{
  periodCopy = period;
  valueCopy = value;
  if (_axPeriodNameForPeriod_withValue__onceToken != -1)
  {
    [ACSportsMatchupLineScoreViewAccessibility _axPeriodNameForPeriod:withValue:];
  }

  integerValue = [valueCopy integerValue];
  v9 = _axPeriodNameForPeriod_withValue__OrdinalNumberFormatter;
  v10 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(valueCopy, "integerValue")}];
  v11 = [v9 stringFromNumber:v10];

  _axSportType = [(ACSportsMatchupLineScoreViewAccessibility *)self _axSportType];
  if (([_axSportType isEqualToString:@"Baseball"] & 1) != 0 || !objc_msgSend(periodCopy, "isEqualToString:", @"total"))
  {
    if ([_axSportType isEqualToString:@"Baseball"])
    {
      if (periodCopy && !integerValue)
      {
        if ([periodCopy isEqualToString:@"total"])
        {
          v13 = @"sport.baseball.runs";
          goto LABEL_36;
        }

        if ([periodCopy isEqualToString:@"hits"])
        {
          v13 = @"sport.baseball.hits";
          goto LABEL_36;
        }

        if ([periodCopy isEqualToString:@"errors"])
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

    else if ([_axSportType isEqualToString:@"Football"])
    {
      if (periodCopy && !integerValue)
      {
        goto LABEL_18;
      }

      v14 = MEMORY[0x29EDBA0F8];
      v15 = @"sport.football.half";
    }

    else
    {
      if ([_axSportType isEqualToString:@"Soccer"])
      {
        goto LABEL_18;
      }

      if ([_axSportType isEqualToString:@"Hockey"])
      {
        if (periodCopy && !integerValue)
        {
          goto LABEL_18;
        }

        v14 = MEMORY[0x29EDBA0F8];
        v15 = @"sport.hockey.period";
      }

      else
      {
        v18 = [_axSportType isEqualToString:@"Basketball"];
        v17 = 0;
        if (periodCopy)
        {
          v19 = integerValue == 0;
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