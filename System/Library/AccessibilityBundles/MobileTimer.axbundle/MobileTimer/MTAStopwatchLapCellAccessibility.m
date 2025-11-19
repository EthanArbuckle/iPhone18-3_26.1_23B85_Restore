@interface MTAStopwatchLapCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MTAStopwatchLapCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTAStopwatchLapCell" hasInstanceMethod:@"timeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAStopwatchLapCell" hasInstanceMethod:@"runningTotalLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAStopwatchLapCell" hasInstanceMethod:@"lap" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MTAStopwatchLapCellAccessibility *)self safeValueForKey:@"lap"];
  v4 = [v3 stringValue];

  v5 = [(MTAStopwatchLapCellAccessibility *)self safeValueForKey:@"timeLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = AXLocalizeDurationTime();

  v8 = [(MTAStopwatchLapCellAccessibility *)self safeValueForKey:@"runningTotalLabel"];
  v9 = [v8 accessibilityLabel];
  v10 = AXLocalizeDurationTime();

  v11 = [v10 length];
  v12 = MEMORY[0x29EDBA0F8];
  if (v11)
  {
    v13 = accessibilityLocalizedString(@"lap.cell.long.text");
    [v12 stringWithFormat:v13, v4, v7, v10];
  }

  else
  {
    v13 = accessibilityLocalizedString(@"lap.cell.short.text");
    [v12 stringWithFormat:v13, v4, v7, v16];
  }
  v14 = ;

  return v14;
}

- (id)accessibilityValue
{
  v14 = 0;
  objc_opt_class();
  v3 = [(MTAStopwatchLapCellAccessibility *)self safeValueForKey:@"color"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [MEMORY[0x29EDC7A00] systemGreenColor];
  v6 = UIAccessibilityColorEqualToColor();

  if (v6)
  {
    v7 = @"stopwatch.fastest";
LABEL_5:
    v10 = accessibilityLocalizedString(v7);
    goto LABEL_7;
  }

  v8 = [MEMORY[0x29EDC7A00] systemRedColor];
  v9 = UIAccessibilityColorEqualToColor();

  if (v9)
  {
    v7 = @"stopwatch.slowest";
    goto LABEL_5;
  }

  v13.receiver = self;
  v13.super_class = MTAStopwatchLapCellAccessibility;
  v10 = [(MTAStopwatchLapCellAccessibility *)&v13 accessibilityValue];
LABEL_7:
  v11 = v10;

  return v11;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(MTAStopwatchLapCellAccessibility *)self safeValueForKey:@"lap"];
  v4 = [v3 integerValue];

  if (v4 == -1)
  {
    v5 = *MEMORY[0x29EDC7578];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTAStopwatchLapCellAccessibility;
    v5 = [(MTAStopwatchLapCellAccessibility *)&v7 accessibilityTraits];
  }

  return *MEMORY[0x29EDC7FF0] | v5;
}

@end