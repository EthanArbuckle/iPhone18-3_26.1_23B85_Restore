@interface MobileTimerAssistantWorldClockSnippetCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MobileTimerAssistantWorldClockSnippetCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MobileTimerAssistantWorldClockSnippetCell" hasInstanceVariable:@"_clockCellView" withType:"MTUIWorldClockCellView"];
  [validationsCopy validateClass:@"MTUIWorldClockCellView" hasInstanceMethod:@"digitalClock" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTUIDateLabel" hasInstanceMethod:@"dateLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(MobileTimerAssistantWorldClockSnippetCellAccessibility *)self safeValueForKey:@"_clockCellView"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"digitalClock"];
  v5 = [v3 safeValueForKey:@"nameLabel"];
  accessibilityLabel = [v5 accessibilityLabel];
  v7 = [v3 safeValueForKey:@"combinedLabel"];
  accessibilityLabel2 = [v7 accessibilityLabel];
  v9 = [v4 safeValueForKey:@"dateLabel"];
  accessibilityLabel3 = [v9 accessibilityLabel];
  v10 = __UIAXStringForVariables();

  return v10;
}

- (id)accessibilityValue
{
  v2 = [(MobileTimerAssistantWorldClockSnippetCellAccessibility *)self safeValueForKey:@"_clockCellView"];
  v3 = [v2 safeValueForKey:@"digitalClock"];
  v4 = [v3 safeValueForKey:@"dateLabel"];
  accessibilityValue = [v4 accessibilityValue];

  return accessibilityValue;
}

@end