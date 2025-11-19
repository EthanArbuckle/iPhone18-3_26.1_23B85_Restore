@interface PXPhotosDetailsUIViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetDetailsDismissedBlock:(id)a3;
- (void)_ensureScrollViewController;
- (void)_loadWidgets;
- (void)_setAXDetailsDismissedBlock:(id)a3;
@end

@implementation PXPhotosDetailsUIViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXUIScrollViewController"];
  [v3 validateClass:@"PXPhotosDetailsUIViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PXPhotosDetailsUIViewController" hasInstanceMethod:@"_scrollViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXPhotosDetailsUIViewController" hasInstanceMethod:@"_widgets" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXUIScrollViewController" hasInstanceVariable:@"_scrollView" withType:"_PXUIScrollView"];
  [v3 validateClass:@"PXPhotosDetailsUIViewController" hasInstanceMethod:@"_loadWidgets" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PXPhotosDetailsUIViewController" hasInstanceMethod:@"_ensureScrollViewController" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PXPhotosDetailsUIViewController" hasInstanceMethod:@"widgetComposition:requestViewControllerDismissalAnimated:" withFullSignature:{"@", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v22 = *MEMORY[0x29EDCA608];
  v20.receiver = self;
  v20.super_class = PXPhotosDetailsUIViewControllerAccessibility;
  [(PXPhotosDetailsUIViewControllerAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXPhotosDetailsUIViewControllerAccessibility *)self safeValueForKey:@"_scrollViewController"];
  MEMORY[0x29C2E6930](@"PXUIScrollViewController");
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 safeValueForKey:@"_scrollView"];
    [v5 accessibilitySetIdentification:@"AXPhotoDetailsScrollView"];
    [v4 accessibilitySetIdentification:@"AXPhotosDetailsUIViewController"];
    v19 = 0;
    objc_opt_class();
    v6 = [(PXPhotosDetailsUIViewControllerAccessibility *)self safeValueForKey:@"navigationController"];
    v7 = __UIAccessibilityCastAsClass();

    [v4 _axAdjustScrollViewInsetsWithNavController:v7];
  }

  v8 = [(PXPhotosDetailsUIViewControllerAccessibility *)self safeArrayForKey:@"_widgets"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 conformsToProtocol:&unk_2A2292AE0])
        {
          [v13 _accessibilityLoadAccessibilityInformation];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)_loadWidgets
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsUIViewControllerAccessibility;
  [(PXPhotosDetailsUIViewControllerAccessibility *)&v3 _loadWidgets];
  [(PXPhotosDetailsUIViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_ensureScrollViewController
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsUIViewControllerAccessibility;
  [(PXPhotosDetailsUIViewControllerAccessibility *)&v3 _ensureScrollViewController];
  [(PXPhotosDetailsUIViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_setAXDetailsDismissedBlock:(id)a3
{
  v3 = MEMORY[0x29C2E6DD0](a3, a2);
  __UIAccessibilitySetAssociatedObject();
}

- (void)_axSetDetailsDismissedBlock:(id)a3
{
  v4 = [a3 copy];
  [(PXPhotosDetailsUIViewControllerAccessibility *)self _setAXDetailsDismissedBlock:v4];
}

@end