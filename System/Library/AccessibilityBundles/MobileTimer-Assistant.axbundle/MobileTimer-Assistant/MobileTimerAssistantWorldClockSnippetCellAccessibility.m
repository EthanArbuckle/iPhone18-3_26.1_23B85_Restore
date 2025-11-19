@interface MobileTimerAssistantWorldClockSnippetCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MobileTimerAssistantWorldClockSnippetCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MobileTimerAssistantWorldClockSnippetCell" hasInstanceVariable:@"_clockCellView" withType:"MTUIWorldClockCellView"];
  [v3 validateClass:@"MTUIWorldClockCellView" hasInstanceMethod:@"digitalClock" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTUIDateLabel" hasInstanceMethod:@"dateLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(MobileTimerAssistantWorldClockSnippetCellAccessibility *)self safeValueForKey:@"_clockCellView"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"digitalClock"];
  v5 = [v3 safeValueForKey:@"nameLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = [v3 safeValueForKey:@"combinedLabel"];
  v8 = [v7 accessibilityLabel];
  v9 = [v4 safeValueForKey:@"dateLabel"];
  v12 = [v9 accessibilityLabel];
  v10 = __UIAXStringForVariables();

  return v10;
}

- (id)accessibilityValue
{
  v2 = [(MobileTimerAssistantWorldClockSnippetCellAccessibility *)self safeValueForKey:@"_clockCellView"];
  v3 = [v2 safeValueForKey:@"digitalClock"];
  v4 = [v3 safeValueForKey:@"dateLabel"];
  v5 = [v4 accessibilityValue];

  return v5;
}

@end