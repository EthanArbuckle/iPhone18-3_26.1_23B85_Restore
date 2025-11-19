@interface PRWidgetIconViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetWidgetView;
- (void)viewDidLayoutSubviews;
@end

@implementation PRWidgetIconViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PRWidgetIconViewController" hasInstanceMethod:@"widgetHostViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRWidgetIconViewController" hasInstanceMethod:@"complicationDescriptor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRComplicationDescriptor" hasInstanceMethod:@"widgetDescriptor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRWidgetGridViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRWidgetGridViewController" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRWidgetGridModel" hasInstanceMethod:@"removeComplicationDescriptor:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"PRComplicationContainerViewController" hasInstanceMethod:@"widgetGridViewController:didRequestConfigurationForComplicationDescriptor:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"PRWidgetIconViewController" hasInstanceMethod:@"viewDidLayoutSubviews" withFullSignature:{"v", 0}];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PRWidgetIconViewControllerAccessibility;
  [(PRWidgetIconViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(PRWidgetIconViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PRWidgetIconViewControllerAccessibility;
  [(PRWidgetIconViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PRWidgetIconViewControllerAccessibility *)self _axSetWidgetView];
}

- (void)_axSetWidgetView
{
  LOBYTE(location[0]) = 0;
  objc_opt_class();
  v3 = [(PRWidgetIconViewControllerAccessibility *)self safeValueForKey:@"widgetHostViewController"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 view];
  v6 = [v4 delegate];
  v7 = [v6 safeValueForKey:@"delegate"];
  v8 = [(PRWidgetIconViewControllerAccessibility *)self safeValueForKey:@"complicationDescriptor"];
  v9 = [v8 safeValueForKey:@"widget"];
  v23 = v7;
  objc_initWeak(location, v7);
  v10 = objc_alloc(MEMORY[0x29EDC78E0]);
  v11 = [(PRWidgetIconViewControllerAccessibility *)self safeValueForKeyPath:@"complicationDescriptor.widgetDescriptor"];
  v12 = AXRemoveWidgetLabel(v11);
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __59__PRWidgetIconViewControllerAccessibility__axSetWidgetView__block_invoke;
  v28[3] = &unk_29F2EBE58;
  v13 = v6;
  v29 = v13;
  v14 = v8;
  v30 = v14;
  v15 = [v10 initWithName:v12 actionHandler:v28];

  if (AXIsWidgetConfigurable(v9))
  {
    v16 = objc_alloc(MEMORY[0x29EDC78E0]);
    v17 = accessibilityLocalizedString(@"edit.widget.label");
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = __59__PRWidgetIconViewControllerAccessibility__axSetWidgetView__block_invoke_3;
    v24[3] = &unk_29F2EBEA8;
    objc_copyWeak(&v27, location);
    v25 = v13;
    v26 = v14;
    v18 = [v16 initWithName:v17 actionHandler:v24];

    objc_destroyWeak(&v27);
  }

  else
  {
    v18 = 0;
  }

  if ((AXProcessIsSpringBoard() & 1) == 0)
  {
    v19 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v15, v18, v7}];
    [v5 setAccessibilityCustomActions:v19];

    [v5 setIsAccessibilityElement:1];
  }

  v20 = [v5 accessibilityTraits];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v20];
  v21 = [v14 safeValueForKey:@"widgetDescriptor"];
  v22 = AXWidgetAndAppName(v21, 0);
  [v5 setAccessibilityLabel:v22];

  objc_destroyWeak(location);
}

uint64_t __59__PRWidgetIconViewControllerAccessibility__axSetWidgetView__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  AXPerformSafeBlock();

  return 1;
}

void __59__PRWidgetIconViewControllerAccessibility__axSetWidgetView__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) safeValueForKey:@"model"];
  v2 = [v3 removeComplicationDescriptor:*(a1 + 40)];
}

uint64_t __59__PRWidgetIconViewControllerAccessibility__axSetWidgetView__block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v7, a1 + 6);
  v5 = a1[4];
  v6 = a1[5];
  AXPerformSafeBlock();

  objc_destroyWeak(&v7);
  return 1;
}

void __59__PRWidgetIconViewControllerAccessibility__axSetWidgetView__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained widgetGridViewController:*(a1 + 32) didRequestConfigurationForComplicationDescriptor:*(a1 + 40)];
}

@end