@interface CNMeCardSharingSettingsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CNMeCardSharingSettingsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNMeCardSharingSettingsViewController" hasInstanceVariable:@"_givenNameField" withType:"UITextField"];
  [v3 validateClass:@"CNMeCardSharingSettingsViewController" hasInstanceVariable:@"_familyNameField" withType:"UITextField"];
  [v3 validateClass:@"CNMeCardSharingSettingsViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNMeCardSharingSettingsViewControllerAccessibility;
  [(CNMeCardSharingSettingsViewControllerAccessibility *)&v3 viewDidLoad];
  [(CNMeCardSharingSettingsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = CNMeCardSharingSettingsViewControllerAccessibility;
  [(CNMeCardSharingSettingsViewControllerAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNMeCardSharingSettingsViewControllerAccessibility *)self safeUIViewForKey:@"_givenNameField"];
  objc_initWeak(&location, v3);

  v4 = objc_loadWeakRetained(&location);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __96__CNMeCardSharingSettingsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v10[3] = &unk_29F2B5D30;
  objc_copyWeak(&v11, &location);
  [v4 _setAccessibilityFrameBlock:v10];

  v5 = [(CNMeCardSharingSettingsViewControllerAccessibility *)self safeUIViewForKey:@"_familyNameField"];
  objc_initWeak(&from, v5);

  v6 = objc_loadWeakRetained(&from);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __96__CNMeCardSharingSettingsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v7[3] = &unk_29F2B5D30;
  objc_copyWeak(&v8, &from);
  [v6 _setAccessibilityFrameBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

double __96__CNMeCardSharingSettingsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_loadWeakRetained((a1 + 32));
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v27 = UIAccessibilityConvertFrameToScreenCoordinates(v26, v11);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;

  AXDeviceGetMainScreenBounds();
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;

  *&result = CGRectIntersection(*&v16, *&v20);
  return result;
}

double __96__CNMeCardSharingSettingsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_loadWeakRetained((a1 + 32));
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v27 = UIAccessibilityConvertFrameToScreenCoordinates(v26, v11);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;

  AXDeviceGetMainScreenBounds();
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;

  *&result = CGRectIntersection(*&v16, *&v20);
  return result;
}

@end