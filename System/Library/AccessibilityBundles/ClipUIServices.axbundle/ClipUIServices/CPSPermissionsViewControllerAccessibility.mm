@interface CPSPermissionsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axVisualEffectContentView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CPSPermissionsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CPSPermissionsViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CPSPermissionsViewController" hasInstanceVariable:@"_notificationItemView" withType:"CPSPermissionItemView"];
  [validationsCopy validateClass:@"CPSPermissionsViewController" hasInstanceVariable:@"_locationConfirmationItemView" withType:"CPSPermissionItemView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = CPSPermissionsViewControllerAccessibility;
  [(CPSPermissionsViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(CPSPermissionsViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [(CPSPermissionsViewControllerAccessibility *)self safeValueForKey:@"_notificationItemView"];
  v5 = [(CPSPermissionsViewControllerAccessibility *)self safeValueForKey:@"_locationConfirmationItemView"];
  _axVisualEffectContentView = [(CPSPermissionsViewControllerAccessibility *)self _axVisualEffectContentView];
  subviews = [_axVisualEffectContentView subviews];
  v8 = [subviews mutableCopy];

  [v8 axSafelyAddObject:v5];
  [v8 axSafelyAddObject:v4];
  [v3 setAccessibilityElements:v8];
}

- (id)_axVisualEffectContentView
{
  v2 = [(CPSPermissionsViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v3 = [v2 _accessibilityFindSubviewDescendant:&__block_literal_global_0];

  contentView = [v3 contentView];

  return contentView;
}

uint64_t __71__CPSPermissionsViewControllerAccessibility__axVisualEffectContentView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CPSPermissionsViewControllerAccessibility;
  [(CPSPermissionsViewControllerAccessibility *)&v3 viewDidLoad];
  [(CPSPermissionsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end