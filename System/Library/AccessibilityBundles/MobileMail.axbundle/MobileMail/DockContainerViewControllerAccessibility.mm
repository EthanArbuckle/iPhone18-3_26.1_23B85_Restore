@interface DockContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsMailComposeSceneActive;
- (CGRect)_axFrameForDismissDraftsElement;
- (DockContainerViewControllerAccessibility)initWithPersistence:(id)a3 scene:(id)a4 rootViewController:(id)a5;
- (id)_accessibilitySpeakThisViewController;
- (id)_axDismissDraftElement;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateDraftElements;
- (void)_axAddDraftsElementIfNecessaryUsingVC:(id)a3;
- (void)_configureNewDockedView:(id)a3;
- (void)setActiveTiltedTabViewController:(id)a3;
@end

@implementation DockContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"_accessibilitySpeakThisViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DockContainerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"activeViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"dockedViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"isExposeModeActivated" withFullSignature:{"B", 0}];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"activateExposeModeAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"setActiveTiltedTabViewController:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"presentViewController:animated:completion:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"_configureNewDockedView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"initWithPersistence:scene:rootViewController:" withFullSignature:{"@", "@", "@", "@", 0}];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"_minimizeKeyCommandPressed:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"_setDockVisible:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"ComposeNavigationController"];
  [v3 validateClass:@"MailComposeScene"];
  [v3 validateClass:@"UIWindowScene" isKindOfClass:@"UIScene"];
  [v3 validateClass:@"UIScene" hasClassMethod:@"_mostActiveScene" withFullSignature:{"@", 0}];
}

- (DockContainerViewControllerAccessibility)initWithPersistence:(id)a3 scene:(id)a4 rootViewController:(id)a5
{
  v7.receiver = self;
  v7.super_class = DockContainerViewControllerAccessibility;
  v5 = [(DockContainerViewControllerAccessibility *)&v7 initWithPersistence:a3 scene:a4 rootViewController:a5];
  [(DockContainerViewControllerAccessibility *)v5 _accessibilityLoadAccessibilityInformation];
  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = DockContainerViewControllerAccessibility;
  [(DockContainerViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(DockContainerViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 setAccessibilityIdentifier:@"kAXApplicationSceneViewIdentifier"];
  [v3 _accessibilitySetAssignedValue:self forKey:@"kAXApplicationSceneKey"];
  [(DockContainerViewControllerAccessibility *)self _accessibilityUpdateDraftElements];
  LOBYTE(location) = 0;
  objc_opt_class();
  v4 = [(DockContainerViewControllerAccessibility *)self safeValueForKey:@"activeViewController"];
  v5 = __UIAccessibilityCastAsClass();

  [(DockContainerViewControllerAccessibility *)self _axAddDraftsElementIfNecessaryUsingVC:v5];
  objc_initWeak(&location, self);
  if (AXDeviceIsPad())
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __86__DockContainerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v6[3] = &unk_29F2D4038;
    objc_copyWeak(&v7, &location);
    [v3 setAccessibilityElementsHiddenBlock:v6];
    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

uint64_t __86__DockContainerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityIsMailComposeSceneActive];

  return v2;
}

- (id)_accessibilitySpeakThisViewController
{
  v2 = [(DockContainerViewControllerAccessibility *)self safeValueForKey:@"activeViewController"];
  v3 = [v2 _accessibilitySpeakThisViewController];

  return v3;
}

- (BOOL)_accessibilityIsMailComposeSceneActive
{
  v2 = [MEMORY[0x29EDC7DD8] safeValueForKey:@"_mostActiveScene"];
  NSClassFromString(&cfstr_Mailcomposesce.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_axAddDraftsElementIfNecessaryUsingVC:(id)a3
{
  v24[1] = *MEMORY[0x29EDCA608];
  v4 = a3;
  NSClassFromString(&cfstr_Composenavigat_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 view];
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = __82__DockContainerViewControllerAccessibility__axAddDraftsElementIfNecessaryUsingVC___block_invoke;
    v23[3] = &unk_29F2D4060;
    v23[4] = self;
    v6 = [v5 _accessibilityFindAncestor:v23 startWithSelf:1];

    v7 = [(DockContainerViewControllerAccessibility *)self _axDismissDraftElement];
    [v7 setAccessibilityContainer:v6];

    v8 = [(DockContainerViewControllerAccessibility *)self _axDismissDraftElement];
    v24[0] = v8;
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v24 count:1];
    [v6 _accessibilitySetAdditionalElements:v9];

    [(DockContainerViewControllerAccessibility *)self _axSetViewContainingDraftsElement:v6];
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    v11 = [v10 view];

    v12 = [v11 window];
    v13 = [v12 windowScene];
    v14 = [v13 statusBarManager];
    [v14 statusBarFrame];
    MaxY = CGRectGetMaxY(v25);

    v16 = [v4 view];
    v17 = [v16 superview];
    v18 = [v4 view];
    [v18 frame];
    [v17 convertRect:0 toView:?];
    v20 = v19;

    [(DockContainerViewControllerAccessibility *)self _axSetDraftsElementHeight:v20 - MaxY];
  }

  else
  {
    v21 = [(DockContainerViewControllerAccessibility *)self _axViewContainingDraftsElement];
    [v21 _accessibilitySetAdditionalElements:0];

    [(DockContainerViewControllerAccessibility *)self _axSetDraftsElementHeight:0.0];
  }

  v22 = *MEMORY[0x29EDCA608];
}

BOOL __82__DockContainerViewControllerAccessibility__axAddDraftsElementIfNecessaryUsingVC___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  [v4 accessibilityFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 32) _axDismissDraftElement];
  [v13 accessibilityFrame];
  v18.x = v14;
  v18.y = v15;
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v16 = CGRectContainsPoint(v19, v18);

  return v16;
}

uint64_t __86__DockContainerViewControllerAccessibility_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _axAddDraftsElementIfNecessaryUsingVC:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_configureNewDockedView:(id)a3
{
  v4.receiver = self;
  v4.super_class = DockContainerViewControllerAccessibility;
  [(DockContainerViewControllerAccessibility *)&v4 _configureNewDockedView:a3];
  [(DockContainerViewControllerAccessibility *)self _accessibilityUpdateDraftElements];
}

- (void)setActiveTiltedTabViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = DockContainerViewControllerAccessibility;
  [(DockContainerViewControllerAccessibility *)&v4 setActiveTiltedTabViewController:a3];
  [(DockContainerViewControllerAccessibility *)self _accessibilityUpdateDraftElements];
}

- (void)_accessibilityUpdateDraftElements
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = [(DockContainerViewControllerAccessibility *)self safeDictionaryForKey:@"dockedViews"];
  v4 = [v3 allValues];

  v5 = [(DockContainerViewControllerAccessibility *)self safeBoolForKey:@"isExposeModeActivated"];
  v6 = [v4 count];
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v8 = [v7 view];

  v30 = 0;
  objc_opt_class();
  v9 = [v4 firstObject];
  v10 = __UIAccessibilityCastAsClass();

  LODWORD(v9) = v6 != 0;
  v11 = [v8 superview];
  [v8 frame];
  [v11 convertRect:0 toView:?];
  v13 = v12;

  v14 = [v10 superview];
  [v10 frame];
  [v14 convertRect:0 toView:?];
  v16 = v15;

  v17 = [MEMORY[0x29EDBA070] numberWithInt:v9 & ~v5];
  [v8 _accessibilitySetRetainedValue:v17 forKey:@"kAXShowDraftsKey"];

  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  [v8 _accessibilitySetRetainedValue:v18 forKey:@"kAXNumberOfDraftsKey"];

  v19 = [MEMORY[0x29EDBA070] numberWithDouble:v13 - v16];
  [v8 _accessibilitySetRetainedValue:v19 forKey:@"kAXDraftHeightKey"];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v4;
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v26 + 1) + 8 * i) setAccessibilityElementsHidden:{1, v26}];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x29EDCA608];
}

- (CGRect)_axFrameForDismissDraftsElement
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];

  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = [v4 window];
  v10 = [v9 windowScene];
  v11 = [v10 statusBarManager];
  [v11 statusBarFrame];
  v13 = v12;

  [(DockContainerViewControllerAccessibility *)self _axGetDraftsElementHeight];
  v15 = v14;

  v16 = v6;
  v17 = v13;
  v18 = v8;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_axDismissDraftElement
{
  v3 = [(DockContainerViewControllerAccessibility *)self _accessibilityValueForKey:@"AXDismissDraftElement"];
  if (!v3)
  {
    v4 = [UIAccessibilityDismissDraftElement alloc];
    v5 = [(DockContainerViewControllerAccessibility *)self safeUIViewForKey:@"view"];
    v3 = [(UIAccessibilityDismissDraftElement *)v4 initWithAccessibilityContainer:v5];

    objc_initWeak(&location, self);
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __66__DockContainerViewControllerAccessibility__axDismissDraftElement__block_invoke;
    v11 = &unk_29F2D40B0;
    objc_copyWeak(&v12, &location);
    [(UIAccessibilityDismissDraftElement *)v3 _setAccessibilityFrameBlock:&v8];
    [(UIAccessibilityDismissDraftElement *)v3 setIsAccessibilityElement:1, v8, v9, v10, v11];
    v6 = accessibilityLocalizedString(@"minimize.draft");
    [(UIAccessibilityDismissDraftElement *)v3 setAccessibilityLabel:v6];

    [(UIAccessibilityDismissDraftElement *)v3 setMailApplicationScene:self];
    [(UIAccessibilityDismissDraftElement *)v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    [(DockContainerViewControllerAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"AXDismissDraftElement"];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

double __66__DockContainerViewControllerAccessibility__axDismissDraftElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axFrameForDismissDraftsElement];
  v3 = v2;

  return v3;
}

@end