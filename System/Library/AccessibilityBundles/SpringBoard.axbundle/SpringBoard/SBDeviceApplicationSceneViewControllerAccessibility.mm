@interface SBDeviceApplicationSceneViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkupView;
- (void)viewDidLoad;
@end

@implementation SBDeviceApplicationSceneViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBDeviceApplicationSceneViewController" hasInstanceVariable:@"_activeOverlayViewProviders" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneOverlayViewProvider" hasInstanceMethod:@"_realOverlayViewController" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneViewControllerAccessibility;
  [(SBDeviceApplicationSceneViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SBDeviceApplicationSceneViewControllerAccessibility *)self _accessibilityMarkupView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneViewControllerAccessibility;
  [(SBDeviceApplicationSceneViewControllerAccessibility *)&v3 viewDidLoad];
  [(SBDeviceApplicationSceneViewControllerAccessibility *)self _accessibilityMarkupView];
}

- (void)_accessibilityMarkupView
{
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  view = [v3 view];

  objc_initWeak(&location, self);
  objc_initWeak(&from, view);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __79__SBDeviceApplicationSceneViewControllerAccessibility__accessibilityMarkupView__block_invoke;
  v5[3] = &unk_29F2FBC80;
  objc_copyWeak(&v6, &from);
  objc_copyWeak(&v7, &location);
  [view _setAccessibilityElementsBlock:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

id __79__SBDeviceApplicationSceneViewControllerAccessibility__accessibilityMarkupView__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained subviews];
  v25 = v2;
  [v2 axSafelyAddObjectsFromArray:v4];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 safeArrayForKey:@"_activeOverlayViewProviders"];

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        v13 = [v12 safeValueForKey:@"_realOverlayViewController"];
        v14 = __UIAccessibilityCastAsClass();

        v15 = [v14 view];
        v16 = [v15 window];

        v17 = objc_loadWeakRetained((a1 + 32));
        v18 = [v17 window];

        if (v16 != v18)
        {
          v19 = [v16 subviews];
          [v25 axSafelyAddObjectsFromArray:v19];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v20 = MEMORY[0x29EDC7DA0];
  v21 = [v25 reverseObjectEnumerator];
  v22 = [v21 allObjects];
  v23 = [v20 _subviewsReplacedByModalViewSubviewsIfNecessary:v22];

  return v23;
}

@end