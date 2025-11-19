@interface UITextFormattingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation UITextFormattingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UITextFormattingViewController" isKindOfClass:@"UIViewController"];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16 = self;
  v15 = a2;
  v14.receiver = self;
  v14.super_class = UITextFormattingViewControllerAccessibility;
  [(UITextFormattingViewControllerAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v13 = v10;
  objc_initWeak(&from, v10);
  v2 = [v13 view];
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __89__UITextFormattingViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7 = &unk_29F30C7F0;
  objc_copyWeak(v8, &from);
  [v2 setAccessibilityPerformEscapeBlock:&v3];
  MEMORY[0x29EDC9740](v2);
  objc_destroyWeak(v8);
  objc_destroyWeak(&from);
  objc_storeStrong(&v13, 0);
}

uint64_t __89__UITextFormattingViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
  MEMORY[0x29EDC9740](WeakRetained);
  return 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = UITextFormattingViewControllerAccessibility;
  [(UITextFormattingViewControllerAccessibility *)&v6 viewDidAppear:a3];
  notification = *MEMORY[0x29EDC7ED8];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v4 = [v5 view];
  UIAccessibilityPostNotification(notification, v4);
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
}

@end