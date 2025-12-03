@interface SBDeckSwitcherViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityNonVisibleElements:(BOOL)elements;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation SBDeckSwitcherViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBDeckSwitcherViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBDeckSwitcherViewController" isKindOfClass:@"SBFluidSwitcherViewController"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"appLayouts" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_scrollToAppLayout:animated:alignment:completion:" withFullSignature:{"v", "@", "B", "q", "@?", 0}];
  [validationsCopy validateClass:@"SBDeckSwitcherViewController" hasInstanceVariable:@"_scrollView" withType:"SBAppSwitcherScrollView"];
  [validationsCopy validateClass:@"SBAppSwitcherScrollView" isKindOfClass:@"UIScrollView"];
  [validationsCopy validateClass:@"SBDeckSwitcherViewController" hasInstanceVariable:@"_visibleItemContainers" withType:"NSMutableDictionary"];
  [validationsCopy validateClass:@"SBDeckSwitcherViewController" isKindOfClass:@"SBFluidSwitcherViewController"];
  [validationsCopy validateClass:@"SBIconModel" hasInstanceMethod:@"expectedIconForDisplayIdentifier:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHomeScreenController" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"itemForLayoutRole:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"SBDisplayItem" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
}

- (void)dealloc
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = [(SBDeckSwitcherViewControllerAccessibility *)self safeValueForKey:@"_visibleItemContainers"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [v2 allValues];
  v4 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allValues);
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

      v5 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)_accessibilityNonVisibleElements:(BOOL)elements
{
  elementsCopy = elements;
  v55 = *MEMORY[0x29EDCA608];
  v33 = [(SBDeckSwitcherViewControllerAccessibility *)self safeArrayForKey:@"appLayouts"];
  objc_opt_class();
  v3 = [(SBDeckSwitcherViewControllerAccessibility *)self safeValueForKey:@"_visibleItemContainers"];
  v41 = __UIAccessibilityCastAsClass();

  array = [MEMORY[0x29EDB8DE8] array];
  elementsCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"AXFakeElements-%d", elementsCopy];
  v35 = [(SBDeckSwitcherViewControllerAccessibility *)self _accessibilityValueForKey:elementsCopy];
  LOBYTE(v44) = 0;
  v4 = AXMainSBHomeScreenController();
  v5 = [v4 safeValueForKey:@"model"];
  v36 = __UIAccessibilitySafeClass();

  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  reverseObjectEnumerator = [v33 reverseObjectEnumerator];
  obj = [reverseObjectEnumerator allObjects];

  v7 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v7)
  {
    v8 = *v51;
    v9 = elementsCopy;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        allKeys = [v41 allKeys];
        v13 = [allKeys containsObject:v11];

        if (v13)
        {
          if (elementsCopy)
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
          accessibilityLabel = [v17 accessibilityLabel];
          [(SBAXFakeAppSwitcherAccessibilityElement *)v14 setAccessibilityLabel:accessibilityLabel];

          [(SBAXFakeAppSwitcherAccessibilityElement *)v14 setAppLayout:v11];
          [(SBAXFakeAppSwitcherAccessibilityElement *)v14 setDeckSwitcherDelegate:self];
          [array addObject:v14];

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

  v19 = [array count];
  if (v19 == [v35 count])
  {
    v20 = [array count];
    v21 = array;
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
      appLayout = [v23 appLayout];
      v25 = [v35 objectAtIndexedSubscript:v22];
      appLayout2 = [v25 appLayout];
      v27 = appLayout == appLayout2;

      if (!v27)
      {
        break;
      }

      ++v22;
      v21 = array;
      if (v20 == v22)
      {
        goto LABEL_20;
      }
    }
  }

  v29 = array;
  if (array != v35)
  {
    [(SBDeckSwitcherViewControllerAccessibility *)self _accessibilitySetRetainedValue:array forKey:elementsCopy];
    v29 = array;
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