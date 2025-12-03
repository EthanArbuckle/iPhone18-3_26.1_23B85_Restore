@interface FCUIActivityPickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_dismissHeader;
@end

@implementation FCUIActivityPickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FCUIActivityPickerViewController" hasInstanceMethod:@"_dismissHeader" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"FCUIActivityPickerViewController" hasInstanceMethod:@"_activityListView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FCUIActivityListView" hasInstanceMethod:@"activityViews" withFullSignature:{"@", 0}];
}

- (void)_dismissHeader
{
  v7.receiver = self;
  v7.super_class = FCUIActivityPickerViewControllerAccessibility;
  [(FCUIActivityPickerViewControllerAccessibility *)&v7 _dismissHeader];
  v3 = [(FCUIActivityPickerViewControllerAccessibility *)self safeValueForKey:@"_activityListView"];
  v4 = [v3 safeArrayForKey:@"activityViews"];
  v5 = *MEMORY[0x29EDC7ED8];
  firstObject = [v4 firstObject];
  UIAccessibilityPostNotification(v5, firstObject);
}

@end