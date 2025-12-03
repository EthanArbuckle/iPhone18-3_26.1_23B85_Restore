@interface HKActivitySummaryAccessibility
- (id)accessibilityLabel;
@end

@implementation HKActivitySummaryAccessibility

- (id)accessibilityLabel
{
  v2 = __UIAccessibilitySafeClass();
  activeEnergyBurnedGoal = [v2 activeEnergyBurnedGoal];
  kilocalorieUnit = [MEMORY[0x29EDBAE50] kilocalorieUnit];
  [activeEnergyBurnedGoal doubleValueForUnit:kilocalorieUnit];
  v6 = v5;

  if (v6 > 0.0)
  {
    activeEnergyBurned = [v2 activeEnergyBurned];
    kilocalorieUnit2 = [MEMORY[0x29EDBAE50] kilocalorieUnit];
    [activeEnergyBurned doubleValueForUnit:kilocalorieUnit2];
  }

  appleExerciseTimeGoal = [v2 appleExerciseTimeGoal];
  minuteUnit = [MEMORY[0x29EDBAE50] minuteUnit];
  [appleExerciseTimeGoal doubleValueForUnit:minuteUnit];
  v12 = v11;

  if (v12 > 0.0)
  {
    appleExerciseTime = [v2 appleExerciseTime];
    minuteUnit2 = [MEMORY[0x29EDBAE50] minuteUnit];
    [appleExerciseTime doubleValueForUnit:minuteUnit2];
  }

  appleStandHoursGoal = [v2 appleStandHoursGoal];
  countUnit = [MEMORY[0x29EDBAE50] countUnit];
  [appleStandHoursGoal doubleValueForUnit:countUnit];
  v18 = v17;

  if (v18 > 0.0)
  {
    appleStandHours = [v2 appleStandHours];
    countUnit2 = [MEMORY[0x29EDBAE50] countUnit];
    [appleStandHours doubleValueForUnit:countUnit2];
  }

  v35 = v2;
  v21 = MEMORY[0x29EDBA0F8];
  v22 = accessibilityLocalizedString(@"move.percentage");
  v23 = AXFormatFloatWithPercentage();
  v24 = [v21 stringWithFormat:v22, v23];
  v25 = MEMORY[0x29EDBA0F8];
  v26 = accessibilityLocalizedString(@"exercise.percentage");
  v27 = AXFormatFloatWithPercentage();
  v28 = [v25 stringWithFormat:v26, v27];
  v29 = MEMORY[0x29EDBA0F8];
  v30 = accessibilityLocalizedString(@"stand.percentage");
  v31 = AXFormatFloatWithPercentage();
  v34 = [v29 stringWithFormat:v30, v31];
  v32 = __UIAXStringForVariables();

  return v32;
}

@end