@interface SystemApertureElementViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (int64_t)_accessibilityApertureLayoutMode;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)addChildViewController:(id)controller;
- (void)updateSystemApertureElements;
@end

@implementation SystemApertureElementViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WidgetRenderer.SystemApertureElementViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"WidgetRenderer.SystemApertureElementViewController" hasSwiftField:@"leadingUIHostingController" withSwiftType:"Optional<_JindoAccessoryViewController>"];
  [validationsCopy validateClass:@"WidgetRenderer.SystemApertureElementViewController" hasSwiftField:@"leadingUIHostingController" withSwiftType:"Optional<_JindoAccessoryViewController>"];
  [validationsCopy validateClass:@"WidgetRenderer.SystemApertureElementViewController" hasSwiftField:@"minimalUIHostingController" withSwiftType:"Optional<_JindoAccessoryViewController>"];
  [validationsCopy validateClass:@"WidgetRenderer.SystemApertureElementViewController" hasSwiftField:@"expandedUIHostingController" withSwiftType:"Optional<_JindoAccessoryViewController>"];
  [validationsCopy validateClass:@"SBUISystemApertureElementSource" hasInstanceMethod:@"layoutMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"UIWindowScene" hasInstanceMethod:@"systemApertureElementSource" withFullSignature:{"@", 0}];
}

- (int64_t)_accessibilityApertureLayoutMode
{
  view = [(SystemApertureElementViewControllerAccessibility *)self view];
  _accessibilityWindowScene = [view _accessibilityWindowScene];

  v4 = [_accessibilityWindowScene safeValueForKey:@"systemApertureElementSource"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeIntForKey:@"layoutMode"];
  return v6;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SystemApertureElementViewControllerAccessibility;
  [(SystemApertureElementViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SystemApertureElementViewControllerAccessibility *)self updateSystemApertureElements];
}

- (void)updateSystemApertureElements
{
  objc_opt_class();
  v3 = [(SystemApertureElementViewControllerAccessibility *)self safeSwiftValueForKey:@"leadingUIHostingController"];
  v4 = __UIAccessibilityCastAsClass();

  view = [v4 view];

  objc_opt_class();
  v6 = [(SystemApertureElementViewControllerAccessibility *)self safeSwiftValueForKey:@"trailingUIHostingController"];
  v7 = __UIAccessibilityCastAsClass();

  view2 = [v7 view];

  objc_opt_class();
  v9 = [(SystemApertureElementViewControllerAccessibility *)self safeSwiftValueForKey:@"minimalUIHostingController"];
  v10 = __UIAccessibilityCastAsClass();

  view3 = [v10 view];

  LOBYTE(location) = 0;
  objc_opt_class();
  v12 = [(SystemApertureElementViewControllerAccessibility *)self safeSwiftValueForKey:@"expandedUIHostingController"];
  v13 = __UIAccessibilityCastAsClass();

  view4 = [v13 view];

  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __80__SystemApertureElementViewControllerAccessibility_updateSystemApertureElements__block_invoke;
  v21[3] = &unk_41F0;
  objc_copyWeak(&v22, &location);
  [view _setAccessibilityElementsHiddenBlock:v21];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __80__SystemApertureElementViewControllerAccessibility_updateSystemApertureElements__block_invoke_2;
  v19[3] = &unk_41F0;
  objc_copyWeak(&v20, &location);
  [view2 _setAccessibilityElementsHiddenBlock:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __80__SystemApertureElementViewControllerAccessibility_updateSystemApertureElements__block_invoke_3;
  v17[3] = &unk_41F0;
  objc_copyWeak(&v18, &location);
  [view3 _setAccessibilityElementsHiddenBlock:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __80__SystemApertureElementViewControllerAccessibility_updateSystemApertureElements__block_invoke_4;
  v15[3] = &unk_41F0;
  objc_copyWeak(&v16, &location);
  [view4 _setAccessibilityElementsHiddenBlock:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

BOOL __80__SystemApertureElementViewControllerAccessibility_updateSystemApertureElements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityApertureLayoutMode] != &dword_0 + 3;

  return v2;
}

BOOL __80__SystemApertureElementViewControllerAccessibility_updateSystemApertureElements__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityApertureLayoutMode] != &dword_0 + 3;

  return v2;
}

BOOL __80__SystemApertureElementViewControllerAccessibility_updateSystemApertureElements__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityApertureLayoutMode] != &dword_0 + 2;

  return v2;
}

BOOL __80__SystemApertureElementViewControllerAccessibility_updateSystemApertureElements__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityApertureLayoutMode] != &dword_4;

  return v2;
}

- (void)addChildViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = SystemApertureElementViewControllerAccessibility;
  [(SystemApertureElementViewControllerAccessibility *)&v4 addChildViewController:controller];
  [(SystemApertureElementViewControllerAccessibility *)self updateSystemApertureElements];
}

@end