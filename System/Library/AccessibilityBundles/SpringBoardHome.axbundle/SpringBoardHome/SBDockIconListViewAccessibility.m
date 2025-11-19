@interface SBDockIconListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityScannerGroupElements;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation SBDockIconListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBIconListModel"];
  [v3 validateClass:@"SBIconListView"];
  [v3 validateClass:@"SBDockIconListView" isKindOfClass:@"SBIconListView"];
  [v3 validateClass:@"SBIconListView" hasInstanceVariable:@"_model" withType:"SBIconListModel"];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"isEmpty" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"visibleIcons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconListModel" hasInstanceMethod:@"icons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"iconLocation" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"displayedIconViewForIcon:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBIconListViewAccessibility" hasInstanceMethod:@"_accessibilityEmptyListDropString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFloatingDockViewController" hasInstanceVariable:@"_libraryPodIconView" withType:"SBIconView"];
}

- (id)accessibilityLabel
{
  v2 = [(SBDockIconListViewAccessibility *)self safeStringForKey:@"iconLocation"];
  if ([v2 isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    v3 = @"suggestions";
  }

  else if ([v2 isEqualToString:@"SBIconLocationFloatingDockUtilities"])
  {
    v3 = @"utilities";
  }

  else
  {
    v3 = @"dock";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (AXDeviceIsPad() && (NSClassFromString(&cfstr_Sbdocksuggesti.isa), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11.receiver = self;
    v11.super_class = SBDockIconListViewAccessibility;
    v8 = [(SBDockIconListViewAccessibility *)&v11 _accessibilityHitTest:v7 withEvent:x, y];
  }

  else
  {
    v8 = [(SBDockIconListViewAccessibility *)self _accessibilityBaseHitTest:v7 withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

- (id)accessibilityElements
{
  v2 = [(SBDockIconListViewAccessibility *)self _accessibilitySubviews];
  v3 = [v2 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  return v3;
}

- (id)_accessibilityScannerGroupElements
{
  v31 = *MEMORY[0x29EDCA608];
  v16 = [MEMORY[0x29EDB8DE8] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(SBDockIconListViewAccessibility *)self safeValueForKey:@"_model"];
  obj = [v3 safeArrayForKey:@"icons"];

  v4 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v4)
  {
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v17 = 0;
        v18 = &v17;
        v19 = 0x3032000000;
        v20 = __Block_byref_object_copy__1;
        v21 = __Block_byref_object_dispose__1;
        v22 = 0;
        AXPerformSafeBlock();
        v7 = v18[5];
        _Block_object_dispose(&v17, 8);

        [v16 axSafelyAddObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v4);
  }

  NSClassFromString(&cfstr_Sbdocksuggesti.isa);
  if (objc_opt_isKindOfClass())
  {
    v8 = [(SBDockIconListViewAccessibility *)self _accessibilityViewController];
    v9 = [v8 safeValueForKey:@"floatingDockViewController"];

    v10 = [v9 safeValueForKey:@"_libraryPodIconView"];
    [v16 axSafelyAddObject:v10];
  }

  v11 = [v16 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
  v27[0] = @"GroupTraits";
  v27[1] = @"GroupElements";
  v28[0] = &unk_2A2318CC8;
  v28[1] = v11;
  v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v29 = v12;
  v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v29 count:1];

  return v13;
}

uint64_t __69__SBDockIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) displayedIconViewForIcon:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

@end