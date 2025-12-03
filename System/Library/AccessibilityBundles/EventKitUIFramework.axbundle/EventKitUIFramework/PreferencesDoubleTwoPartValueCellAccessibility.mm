@interface PreferencesDoubleTwoPartValueCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PreferencesDoubleTwoPartValueCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PreferencesDoubleTwoPartValueCell" hasInstanceMethod:@"textLabel2" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PreferencesDoubleTwoPartValueCell" hasInstanceMethod:@"twoPartTextLabel2" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = PreferencesDoubleTwoPartValueCellAccessibility;
  accessibilityLabel = [(PreferencesDoubleTwoPartValueCellAccessibility *)&v10 accessibilityLabel];
  v4 = [(PreferencesDoubleTwoPartValueCellAccessibility *)self safeValueForKey:@"textLabel2"];
  accessibilityLabel2 = [v4 accessibilityLabel];

  v6 = [(PreferencesDoubleTwoPartValueCellAccessibility *)self safeValueForKey:@"twoPartTextLabel2"];
  accessibilityLabel3 = [v6 accessibilityLabel];

  v8 = __UIAXStringForVariables();

  return v8;
}

@end