@interface TimelineDayCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axFertileLevel:(unint64_t)level;
- (id)_axInformationLogged:(id)logged;
- (id)_axMensturationLevel:(unint64_t)level;
- (id)_axPregnancyState:(unint64_t)state;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation TimelineDayCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.TimelineDayCell" hasInstanceMethod:@"axCycleDayViewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.TimelineDayCell" hasInstanceMethod:@"axCycleDay" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKMCDayViewModel" hasInstanceVariable:@"_menstruationLevel" withType:"NSUInteger"];
  [validationsCopy validateClass:@"HKMCDayViewModel" hasInstanceVariable:@"_fertileWindowLevel" withType:"NSUInteger"];
  [validationsCopy validateClass:@"HKMCDayViewModel" hasInstanceVariable:@"_pregnancyState" withType:"NSUInteger"];
  [validationsCopy validateClass:@"HKMCDayViewModel" hasInstanceVariable:@"_daySummary" withType:"HKMCDaySummary"];
  [validationsCopy validateClass:@"HKMCDaySummary" hasInstanceMethod:@"isSupplementaryDataLogged" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(TimelineDayCellAccessibility *)self safeValueForKey:@"axCycleDay"];
  v4 = __UIAccessibilityCastAsClass();

  date = [MEMORY[0x29EDB8DB0] date];
  v6 = objc_alloc(MEMORY[0x29EDB8D98]);
  v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x29EDB8CB0]];
  v8 = [v7 components:4 fromDate:date];
  v9 = [v7 dateFromComponents:v8];
  if ([v4 compare:v9] == 1)
  {
    _AXGetStringForDay(v4);
  }

  else
  {
    _AXGetStringForDayAndYear();
  }
  v10 = ;

  return v10;
}

- (id)accessibilityValue
{
  _axCycleDayViewModel = [(TimelineDayCellAccessibility *)self _axCycleDayViewModel];
  v4 = -[TimelineDayCellAccessibility _axMensturationLevel:](self, "_axMensturationLevel:", [_axCycleDayViewModel safeIntegerForKey:@"_menstruationLevel"]);
  v5 = -[TimelineDayCellAccessibility _axFertileLevel:](self, "_axFertileLevel:", [_axCycleDayViewModel safeIntegerForKey:@"_fertileWindowLevel"]);
  v6 = -[TimelineDayCellAccessibility _axPregnancyState:](self, "_axPregnancyState:", [_axCycleDayViewModel safeIntegerForKey:@"_pregnancyState"]);
  v7 = [_axCycleDayViewModel safeValueForKey:@"_daySummary"];
  v10 = [(TimelineDayCellAccessibility *)self _axInformationLogged:v7];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TimelineDayCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TimelineDayCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_axInformationLogged:(id)logged
{
  if ([logged safeBoolForKey:@"isSupplementaryDataLogged"])
  {
    v3 = accessibilityLocalizedString(@"data.logged");
  }

  else
  {
    v3 = &stru_2A2204690;
  }

  return v3;
}

- (id)_axMensturationLevel:(unint64_t)level
{
  if (level - 1 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2D1300[level - 1]);
  }

  return v4;
}

- (id)_axFertileLevel:(unint64_t)level
{
  if (level - 1 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2D1320[level - 1]);
  }

  return v4;
}

- (id)_axPregnancyState:(unint64_t)state
{
  if (state - 2 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2D1338[state - 2]);
  }

  return v4;
}

@end