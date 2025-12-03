@interface UITableViewAccessibility__ScreenTimeUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHeaderElement;
@end

@implementation UITableViewAccessibility__ScreenTimeUI__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUsageDetailListController"];
  [validationsCopy validateClass:@"STUsageDetailListController" hasInstanceMethod:@"datePickerBar" withFullSignature:{"@", 0}];
}

- (id)_accessibilityHeaderElement
{
  v3 = [(UITableViewAccessibility__ScreenTimeUI__UIKit *)self safeValueForKey:@"delegate"];
  MEMORY[0x29C2EBB10](@"STUsageDetailListController");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UITableViewAccessibility__ScreenTimeUI__UIKit *)self safeValueForKey:@"delegate"];
    _accessibilityHeaderElement = [v5 safeValueForKey:@"datePickerBar"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewAccessibility__ScreenTimeUI__UIKit;
    _accessibilityHeaderElement = [(UITableViewAccessibility__ScreenTimeUI__UIKit *)&v8 _accessibilityHeaderElement];
  }

  return _accessibilityHeaderElement;
}

@end