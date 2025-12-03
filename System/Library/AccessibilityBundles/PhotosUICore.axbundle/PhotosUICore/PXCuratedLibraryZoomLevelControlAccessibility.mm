@interface PXCuratedLibraryZoomLevelControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityElementsHidden;
- (id)_axSiblingScrollView;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAdjustZoomLevel:(BOOL)level;
- (void)_updateSegmentedControl;
- (void)setSelectedZoomLevel:(int64_t)level;
@end

@implementation PXCuratedLibraryZoomLevelControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXCuratedLibraryZoomLevelControl" hasInstanceMethod:@"selectedZoomLevel" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryZoomLevelControl" hasInstanceMethod:@"zoomLevelIdentifiers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryZoomLevelControl" hasInstanceMethod:@"setSelectedZoomLevel:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryZoomLevelControl" hasInstanceMethod:@"zoomLevelIdentifiers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryZoomLevelControl" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryZoomLevelControl" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryViewModel" hasInstanceMethod:@"setZoomLevel:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryViewModel" hasInstanceMethod:@"performChanges:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryUIViewController"];
  [validationsCopy validateClass:@"PXCuratedLibraryUIViewController" hasInstanceMethod:@"gridView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGView" hasInstanceMethod:@"scrollViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXUIScrollViewController"];
  [validationsCopy validateClass:@"PXUIScrollViewController" hasInstanceVariable:@"_scrollView" withType:"_PXUIScrollView"];
  [validationsCopy validateClass:@"PXCuratedLibraryZoomLevelControl" hasInstanceMethod:@"_updateSegmentedControl" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryUIViewController"];
  [validationsCopy validateClass:@"PXCuratedLibraryUIViewController" hasInstanceMethod:@"isCollapsed" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = PXCuratedLibraryZoomLevelControlAccessibility;
  [(PXCuratedLibraryZoomLevelControlAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXCuratedLibraryZoomLevelControlAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_2];
  v4 = [(PXCuratedLibraryZoomLevelControlAccessibility *)self safeValueForKey:@"zoomLevelIdentifiers"];
  v5 = [(PXCuratedLibraryZoomLevelControlAccessibility *)self safeIntegerForKey:@"selectedZoomLevel"];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __91__PXCuratedLibraryZoomLevelControlAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v7[3] = &unk_29F2E6370;
  v8 = v4;
  v9 = v5;
  v6 = v4;
  [v3 enumerateObjectsUsingBlock:v7];
}

uint64_t __91__PXCuratedLibraryZoomLevelControlAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E6930](@"UIButton");
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __91__PXCuratedLibraryZoomLevelControlAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v4, "tag")}];
  v6 = [v5 integerValue];

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __91__PXCuratedLibraryZoomLevelControlAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v8[3] = &__block_descriptor_48_e5_Q8__0l;
  v7 = *(a1 + 40);
  v8[4] = v6;
  v8[5] = v7;
  [v4 _setAccessibilityTraitsBlock:v8];
}

uint64_t __91__PXCuratedLibraryZoomLevelControlAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32) == *(a1 + 40))
  {
    v1 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v1 = 0;
  }

  return v1 | *MEMORY[0x29EDC7F70];
}

- (void)_updateSegmentedControl
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryZoomLevelControlAccessibility;
  [(PXCuratedLibraryZoomLevelControlAccessibility *)&v3 _updateSegmentedControl];
  [(PXCuratedLibraryZoomLevelControlAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (BOOL)accessibilityElementsHidden
{
  objc_opt_class();
  v3 = [(PXCuratedLibraryZoomLevelControlAccessibility *)self safeValueForKey:@"delegate"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 safeBoolForKey:@"isCollapsed"];
  return v5;
}

- (id)accessibilityValue
{
  accessibilityValue = [(PXCuratedLibraryZoomLevelControlAccessibility *)self safeIntegerForKey:@"selectedZoomLevel"];
  if (accessibilityValue <= 1)
  {
    if (accessibilityValue)
    {
      if (accessibilityValue != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v5.receiver = self;
    v5.super_class = PXCuratedLibraryZoomLevelControlAccessibility;
    accessibilityValue = [(PXCuratedLibraryZoomLevelControlAccessibility *)&v5 accessibilityValue];
  }

  else if (accessibilityValue == 2 || accessibilityValue == 3 || accessibilityValue == 4)
  {
LABEL_8:
    accessibilityValue = PXLocalizedString();
  }

LABEL_9:

  return accessibilityValue;
}

- (id)accessibilityPath
{
  [(PXCuratedLibraryZoomLevelControlAccessibility *)self accessibilityFrame];
  v2 = MEMORY[0x29EDC7948];

  return [v2 bezierPathWithRoundedRect:? cornerRadius:?];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryZoomLevelControlAccessibility;
  return *MEMORY[0x29EDC7F60] | [(PXCuratedLibraryZoomLevelControlAccessibility *)&v3 accessibilityTraits];
}

- (void)_axAdjustZoomLevel:(BOOL)level
{
  levelCopy = level;
  v5 = [(PXCuratedLibraryZoomLevelControlAccessibility *)self safeArrayForKey:@"zoomLevelIdentifiers"];
  v6 = [(PXCuratedLibraryZoomLevelControlAccessibility *)self safeIntegerForKey:@"selectedZoomLevel"];
  v7 = [MEMORY[0x29EDBA070] numberWithInteger:v6];
  v8 = [v5 indexOfObject:v7];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (levelCopy)
    {
      if (v8 + 1 >= [v5 count])
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 + 1;
      }
    }

    else if (v8)
    {
      v9 = v8 - 1;
    }

    else
    {
      v9 = 0;
    }

    if (v9 < [v5 count])
    {
      v10 = [v5 objectAtIndex:v9];
      [v10 integerValue];

      v12 = [(PXCuratedLibraryZoomLevelControlAccessibility *)self safeValueForKey:@"viewModel"];
      v11 = v12;
      AXPerformSafeBlock();
    }
  }
}

uint64_t __68__PXCuratedLibraryZoomLevelControlAccessibility__axAdjustZoomLevel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelectedZoomLevel:*(a1 + 48)];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __68__PXCuratedLibraryZoomLevelControlAccessibility__axAdjustZoomLevel___block_invoke_2;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 48);
  return [v2 performChanges:v4];
}

- (void)setSelectedZoomLevel:(int64_t)level
{
  v5.receiver = self;
  v5.super_class = PXCuratedLibraryZoomLevelControlAccessibility;
  [(PXCuratedLibraryZoomLevelControlAccessibility *)&v5 setSelectedZoomLevel:level];
  _axSiblingScrollView = [(PXCuratedLibraryZoomLevelControlAccessibility *)self _axSiblingScrollView];
  [_axSiblingScrollView _axSetPXGScrollViewElements:0];
}

- (id)_axSiblingScrollView
{
  v2 = [(PXCuratedLibraryZoomLevelControlAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_568 startWithSelf:1];
  _accessibilityViewController = [v2 _accessibilityViewController];

  v4 = [_accessibilityViewController safeValueForKey:@"gridView"];
  v5 = [v4 safeValueForKey:@"scrollViewController"];

  MEMORY[0x29C2E6930](@"PXUIScrollViewController");
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 safeValueForKey:@"_scrollView"];
    accessibilityIdentification = [v6 accessibilityIdentification];
    v8 = [accessibilityIdentification isEqualToString:@"AXCuratedLibraryScrollView"];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:

  return v6;
}

uint64_t __69__PXCuratedLibraryZoomLevelControlAccessibility__axSiblingScrollView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E6930](@"PXCuratedLibraryUIViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end