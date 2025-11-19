@interface MTAWorldClockTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityCityName;
- (id)accessibilityLabel;
@end

@implementation MTAWorldClockTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTAWorldClockTableViewCell" hasInstanceMethod:@"city" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WorldClockCity" hasInstanceMethod:@"alCity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WorldClockCity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ALCity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTUIWorldClockCellView" hasInstanceMethod:@"digitalClock" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTUIWorldClockCellView" hasInstanceMethod:@"combinedLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAWorldClockTableViewCell" hasInstanceVariable:@"_clockCellView" withType:"MTUIWorldClockCellView"];
  [v3 validateClass:@"MTUIAnalogClockView" hasInstanceVariable:@"_nighttime" withType:"c"];
  [v3 validateClass:@"MTUIWorldClockCellView" hasInstanceVariable:@"_timeZone" withType:"NSTimeZone"];
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
  v5 = [v4 accessibilityLabel];

  v6 = [(MTAWorldClockTableViewCellAccessibility *)self _accessibilityCityName];
  v7 = [v3 safeValueForKey:@"_timeZone"];
  v8 = [v7 secondsFromGMT];
  v9 = [MEMORY[0x29EDB8E60] systemTimeZone];
  v10 = v8 - [v9 secondsFromGMT];

  v11 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:v10];
  v14 = AXDateStringForFormat();
  v12 = __UIAXStringForVariables();

  return v12;
}

@end