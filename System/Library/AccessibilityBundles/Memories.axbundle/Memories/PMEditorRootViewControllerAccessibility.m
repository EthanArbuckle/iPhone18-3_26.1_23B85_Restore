@interface PMEditorRootViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PMEditorRootViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PMEditorRootViewController" hasInstanceMethod:@"orientationButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PMEditorRootViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PMEditorRootViewControllerAccessibility;
  [(PMEditorRootViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(PMEditorRootViewControllerAccessibility *)self safeUIViewForKey:@"orientationButton"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v4);
  v5 = accessibilityMemoriesLocalizedString(@"aspect.ratio");
  [v4 setAccessibilityLabel:v5];

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __85__PMEditorRootViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F2D0BF0;
  objc_copyWeak(&v7, &location);
  [v4 _setAccessibilityValueBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __85__PMEditorRootViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isSelected])
  {
    v2 = @"vertical.aspect.ratio";
  }

  else
  {
    v2 = @"horizontal.aspect.ratio";
  }

  v3 = accessibilityMemoriesLocalizedString(v2);

  return v3;
}

@end