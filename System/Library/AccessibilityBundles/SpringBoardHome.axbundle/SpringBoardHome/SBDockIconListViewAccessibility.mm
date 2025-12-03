@interface SBDockIconListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityScannerGroupElements;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation SBDockIconListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIconListModel"];
  [validationsCopy validateClass:@"SBIconListView"];
  [validationsCopy validateClass:@"SBDockIconListView" isKindOfClass:@"SBIconListView"];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceVariable:@"_model" withType:"SBIconListModel"];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"isEmpty" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"visibleIcons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"icons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"iconLocation" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"displayedIconViewForIcon:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBIconListViewAccessibility" hasInstanceMethod:@"_accessibilityEmptyListDropString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFloatingDockViewController" hasInstanceVariable:@"_libraryPodIconView" withType:"SBIconView"];
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

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (AXDeviceIsPad() && (NSClassFromString(&cfstr_Sbdocksuggesti.isa), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11.receiver = self;
    v11.super_class = SBDockIconListViewAccessibility;
    v8 = [(SBDockIconListViewAccessibility *)&v11 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v8 = [(SBDockIconListViewAccessibility *)self _accessibilityBaseHitTest:eventCopy withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

- (id)accessibilityElements
{
  _accessibilitySubviews = [(SBDockIconListViewAccessibility *)self _accessibilitySubviews];
  v3 = [_accessibilitySubviews sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  return v3;
}

- (id)_accessibilityScannerGroupElements
{
  v31 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
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

        [array axSafelyAddObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v4);
  }

  NSClassFromString(&cfstr_Sbdocksuggesti.isa);
  if (objc_opt_isKindOfClass())
  {
    _accessibilityViewController = [(SBDockIconListViewAccessibility *)self _accessibilityViewController];
    v9 = [_accessibilityViewController safeValueForKey:@"floatingDockViewController"];

    v10 = [v9 safeValueForKey:@"_libraryPodIconView"];
    [array axSafelyAddObject:v10];
  }

  v11 = [array sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
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