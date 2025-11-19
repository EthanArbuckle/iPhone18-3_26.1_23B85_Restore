@interface PreferencesDoubleTwoPartValueCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PreferencesDoubleTwoPartValueCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PreferencesDoubleTwoPartValueCell" hasInstanceMethod:@"textLabel2" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PreferencesDoubleTwoPartValueCell" hasInstanceMethod:@"twoPartTextLabel2" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = PreferencesDoubleTwoPartValueCellAccessibility;
  v3 = [(PreferencesDoubleTwoPartValueCellAccessibility *)&v10 accessibilityLabel];
  v4 = [(PreferencesDoubleTwoPartValueCellAccessibility *)self safeValueForKey:@"textLabel2"];
  v5 = [v4 accessibilityLabel];

  v6 = [(PreferencesDoubleTwoPartValueCellAccessibility *)self safeValueForKey:@"twoPartTextLabel2"];
  v7 = [v6 accessibilityLabel];

  v8 = __UIAXStringForVariables();

  return v8;
}

@end