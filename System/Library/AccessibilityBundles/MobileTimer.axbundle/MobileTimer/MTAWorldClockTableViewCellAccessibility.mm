@interface MTAWorldClockTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityCityName;
- (id)accessibilityLabel;
@end

@implementation MTAWorldClockTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAWorldClockTableViewCell" hasInstanceMethod:@"city" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WorldClockCity" hasInstanceMethod:@"alCity" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WorldClockCity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ALCity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTUIWorldClockCellView" hasInstanceMethod:@"digitalClock" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTUIWorldClockCellView" hasInstanceMethod:@"combinedLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAWorldClockTableViewCell" hasInstanceVariable:@"_clockCellView" withType:"MTUIWorldClockCellView"];
  [validationsCopy validateClass:@"MTUIAnalogClockView" hasInstanceVariable:@"_nighttime" withType:"c"];
  [validationsCopy validateClass:@"MTUIWorldClockCellView" hasInstanceVariable:@"_timeZone" withType:"NSTimeZone"];
}

- (id)_accessibilityCityName
{
  v2 = [(MTAWorldClockTableViewCellAccessibility *)self safeValueForKey:@"city"];
  v3 = [v2 safeValueForKey:@"alCity"];
  v4 = [v3 safeValueForKey:@"name"];
  if (!v4)
  {
    v4 = [v2 safeValueForKey:@"name"];
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(MTAWorldClockTableViewCellAccessibility *)self safeValueForKey:@"_clockCellView"];
  v4 = [v3 safeValueForKey:@"combinedLabel"];
  accessibilityLabel = [v4 accessibilityLabel];

  _accessibilityCityName = [(MTAWorldClockTableViewCellAccessibility *)self _accessibilityCityName];
  v7 = [v3 safeValueForKey:@"_timeZone"];
  secondsFromGMT = [v7 secondsFromGMT];
  systemTimeZone = [MEMORY[0x29EDB8E60] systemTimeZone];
  v10 = secondsFromGMT - [systemTimeZone secondsFromGMT];

  v11 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:v10];
  v14 = AXDateStringForFormat();
  v12 = __UIAXStringForVariables();

  return v12;
}

@end