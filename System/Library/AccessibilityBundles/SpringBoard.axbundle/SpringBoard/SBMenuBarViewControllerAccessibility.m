@interface SBMenuBarViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_createWindowControlsPlaceholderViewForViewController:(id)a3;
@end

@implementation SBMenuBarViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBMenuBarViewController" hasInstanceVariable:@"_windowControlsPlaceholderView" withType:"UIView"];
  [v3 validateClass:@"SBMenuBarViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMenuBarManager" hasInstanceMethod:@"windowControlsViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMenuBarViewController" hasInstanceMethod:@"_createWindowControlsPlaceholderViewForViewController:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = SBMenuBarViewControllerAccessibility;
  [(SBMenuBarViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBMenuBarViewControllerAccessibility *)self safeUIViewForKey:@"_windowControlsPlaceholderView"];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __82__SBMenuBarViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F2FBB78;
  objc_copyWeak(&v8, &location);
  [v3 setIsAccessibilityElementBlock:v7];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v4 = accessibilityLocalizedString(@"window.controls.view.label");
  [v3 setAccessibilityLabel:v4];

  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __82__SBMenuBarViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v5[3] = &unk_29F2FBBA0;
  objc_copyWeak(&v6, &location);
  [v3 setAccessibilityElementsBlock:v5];
  [v3 _accessibilitySetIsInMenuBar:1];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __82__SBMenuBarViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKeyPath:@"delegate.windowControlsViewController"];
  v3 = [v2 safeUIViewForKey:@"view"];

  v4 = [v3 safeSwiftValueForKey:@"interactionState"];
  v5 = [v4 safeSwiftEnumCase];

  if ([v5 isEqualToString:@"compact"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:@"dim"];
  }

  return v6;
}

id __82__SBMenuBarViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKeyPath:@"delegate.windowControlsViewController"];
  v3 = [v2 safeUIViewForKey:@"view"];

  v4 = [v3 accessibilityElements];

  return v4;
}

- (void)_createWindowControlsPlaceholderViewForViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBMenuBarViewControllerAccessibility;
  [(SBMenuBarViewControllerAccessibility *)&v4 _createWindowControlsPlaceholderViewForViewController:a3];
  [(SBMenuBarViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end