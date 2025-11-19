@interface SBDeckSwitcherViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityNonVisibleElements:(BOOL)a3;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation SBDeckSwitcherViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBDeckSwitcherViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SBDeckSwitcherViewController" isKindOfClass:@"SBFluidSwitcherViewController"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"appLayouts" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_scrollToAppLayout:animated:alignment:completion:" withFullSignature:{"v", "@", "B", "q", "@?", 0}];
  [v3 validateClass:@"SBDeckSwitcherViewController" hasInstanceVariable:@"_scrollView" withType:"SBAppSwitcherScrollView"];
  [v3 validateClass:@"SBAppSwitcherScrollView" isKindOfClass:@"UIScrollView"];
  [v3 validateClass:@"SBDeckSwitcherViewController" hasInstanceVariable:@"_visibleItemContainers" withType:"NSMutableDictionary"];
  [v3 validateClass:@"SBDeckSwitcherViewController" isKindOfClass:@"SBFluidSwitcherViewController"];
  [v3 validateClass:@"SBIconModel" hasInstanceMethod:@"expectedIconForDisplayIdentifier:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBAppLayout" hasInstanceMethod:@"itemForLayoutRole:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"SBDisplayItem" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
}

- (void)dealloc
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = [(SBDeckSwitcherViewControllerAccessibility *)self safeValueForKey:@"_visibleItemContainers"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [v2 allValues];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v17 = 0;
        v8 = __UIAccessibilitySafeClass();
        v12 = MEMORY[0x29EDCA5F8];
        v13 = 3221225472;
        v14 = __52__SBDeckSwitcherViewControllerAccessibility_dealloc__block_invoke;
        v15 = &unk_29F2FBA40;
        v16 = v8;
        v9 = v8;
        AXPerformSafeBlock();
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = SBDeckSwitcherViewControllerAccessibility;
  [(SBDeckSwitcherViewControllerAccessibility *)&v11 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBDeckSwitcherViewControllerAccessibility;
  [(SBDeckSwitcherViewControllerAccessibility *)&v3 viewDidLoad];
  [(SBDeckSwitcherViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_accessibilityNonVisibleElements:(BOOL)a3
{
  v38 = a3;
  v55 = *MEMORY[0x29EDCA608];
  v33 = [(SBDeckSwitcherViewControllerAccessibility *)self safeArrayForKey:@"appLayouts"];
  objc_opt_class();
  v3 = [(SBDeckSwitcherViewControllerAccessibility *)self safeValueForKey:@"_visibleItemContainers"];
  v41 = __UIAccessibilityCastAsClass();

  v37 = [MEMORY[0x29EDB8DE8] array];
  v34 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"AXFakeElements-%d", v38];
  v35 = [(SBDeckSwitcherViewControllerAccessibility *)self _accessibilityValueForKey:v34];
  LOBYTE(v44) = 0;
  v4 = AXMainSBHomeScreenController();
  v5 = [v4 safeValueForKey:@"model"];
  v36 = __UIAccessibilitySafeClass();

  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = [v33 reverseObjectEnumerator];
  obj = [v6 allObjects];

  v7 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v7)
  {
    v8 = *v51;
    v9 = v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [v41 allKeys];
        v13 = [v12 containsObject:v11];

        if (v13)
        {
          if (v38)
          {
            goto LABEL_15;
          }

          goto LABEL_11;
        }

        if (v9)
        {
          v14 = [[SBAXFakeAppSwitcherAccessibilityElement alloc] initWithAccessibilityContainer:self];
          v44 = 0;
          v45 = &v44;
          v46 = 0x3032000000;
          v47 = __Block_byref_object_copy__4;
          v48 = __Block_byref_object_dispose__4;
          v49 = 0;
          AXPerformSafeBlock();
          v15 = v45[5];
          _Block_object_dispose(&v44, 8);

          v16 = [v15 safeStringForKey:@"bundleIdentifier"];
          v44 = 0;
          v45 = &v44;
          v46 = 0x3032000000;
          v47 = __Block_byref_object_copy__4;
          v48 = __Block_byref_object_dispose__4;
          v49 = 0;
          v42 = v36;
          v43 = v16;
          AXPerformSafeBlock();
          v17 = v45[5];

          _Block_object_dispose(&v44, 8);
          v18 = [v17 accessibilityLabel];
          [(SBAXFakeAppSwitcherAccessibilityElement *)v14 setAccessibilityLabel:v18];

          [(SBAXFakeAppSwitcherAccessibilityElement *)v14 setAppLayout:v11];
          [(SBAXFakeAppSwitcherAccessibilityElement *)v14 setDeckSwitcherDelegate:self];
          [v37 addObject:v14];

LABEL_11:
          v9 = 1;
          continue;
        }

        v9 = 0;
      }

      v7 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v7);
  }

LABEL_15:

  v19 = [v37 count];
  if (v19 == [v35 count])
  {
    v20 = [v37 count];
    v21 = v37;
    if (v20 < 1)
    {
LABEL_20:
      v28 = v35;

      v29 = v28;
      goto LABEL_23;
    }

    v22 = 0;
    while (1)
    {
      v23 = [v21 objectAtIndexedSubscript:v22];
      v24 = [v23 appLayout];
      v25 = [v35 objectAtIndexedSubscript:v22];
      v26 = [v25 appLayout];
      v27 = v24 == v26;

      if (!v27)
      {
        break;
      }

      ++v22;
      v21 = v37;
      if (v20 == v22)
      {
        goto LABEL_20;
      }
    }
  }

  v29 = v37;
  if (v37 != v35)
  {
    [(SBDeckSwitcherViewControllerAccessibility *)self _accessibilitySetRetainedValue:v37 forKey:v34];
    v29 = v37;
  }

LABEL_23:
  v30 = v29;
  v31 = v29;

  return v30;
}

uint64_t __78__SBDeckSwitcherViewControllerAccessibility__accessibilityNonVisibleElements___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) itemForLayoutRole:1];

  return MEMORY[0x2A1C71028]();
}

uint64_t __78__SBDeckSwitcherViewControllerAccessibility__accessibilityNonVisibleElements___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) expectedIconForDisplayIdentifier:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

@end