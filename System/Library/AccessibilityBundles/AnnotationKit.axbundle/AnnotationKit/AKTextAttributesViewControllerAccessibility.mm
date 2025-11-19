@interface AKTextAttributesViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)createRowAlignmentCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAddAlignmentLabels:(id)a3;
@end

@implementation AKTextAttributesViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKSegmentedCtrl"];
  [v3 validateClass:@"AKTextAttributesViewController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"AKTextAttributesViewController" hasInstanceMethod:@"createRowAlignmentCell" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKSegmentedCtrl" hasInstanceMethod:@"segmentAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"AKSegmentedCtrl" hasInstanceMethod:@"tagForSegment:" withFullSignature:{"q", "Q", 0}];
  [v3 validateClass:@"AKTextAttributesViewController" hasInstanceMethod:@"presetFontController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKTextAttributesViewController" hasInstanceMethod:@"currentFontFamilyName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKFontListController" hasInstanceMethod:@"fonts" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AKTextAttributesViewControllerAccessibility;
  [(AKTextAttributesViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(AKTextAttributesViewControllerAccessibility *)self safeValueForKey:@"alignmentTableCell"];
  v4 = __UIAccessibilityCastAsClass();

  [(AKTextAttributesViewControllerAccessibility *)self _axAddAlignmentLabels:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = AKTextAttributesViewControllerAccessibility;
  v8 = [(AKTextAttributesViewControllerAccessibility *)&v22 tableView:v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  v9 = [(AKTextAttributesViewControllerAccessibility *)self safeValueForKey:@"presetFontController"];
  v10 = [v9 safeValueForKey:@"fonts"];
  v11 = __UIAccessibilityCastAsClass();

  v12 = [v7 row];
  if (v12 < [v11 count])
  {
    objc_opt_class();
    v13 = [v11 objectAtIndex:{objc_msgSend(v7, "row")}];
    v14 = __UIAccessibilityCastAsClass();

    v15 = [(AKTextAttributesViewControllerAccessibility *)self safeValueForKey:@"currentFontFamilyName"];
    v16 = v15;
    v17 = *MEMORY[0x29EDC7F70];
    if (v14 && v15)
    {
      v18 = [v14 familyName];
      v19 = [v18 containsString:v16];

      v20 = *MEMORY[0x29EDC7FC0];
      if ((v19 & 1) == 0)
      {
        v20 = 0;
      }

      v17 |= v20;
    }

    [v8 setAccessibilityTraits:v17];
  }

  return v8;
}

- (void)_axAddAlignmentLabels:(id)a3
{
  v11 = a3;
  v3 = [v11 contentView];
  v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global];

  v5 = [v4 safeUnsignedIntegerForKey:@"segmentCount"];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__0;
      v18 = __Block_byref_object_dispose__0;
      v19 = 0;
      v13 = v4;
      AXPerformSafeBlock();
      v8 = v15[5];

      _Block_object_dispose(&v14, 8);
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v12 = v13;
      AXPerformSafeBlock();
      v9 = v15[3];

      _Block_object_dispose(&v14, 8);
      if (v9 < 4)
      {
        v10 = accessibilityLocalizedString(off_29F29D570[v9]);
        [v8 setAccessibilityLabel:v10];
      }
    }
  }
}

uint64_t __69__AKTextAttributesViewControllerAccessibility__axAddAlignmentLabels___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2C8260](@"AKSegmentedCtrl");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __69__AKTextAttributesViewControllerAccessibility__axAddAlignmentLabels___block_invoke_329(uint64_t a1)
{
  v2 = [*(a1 + 32) segmentAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __69__AKTextAttributesViewControllerAccessibility__axAddAlignmentLabels___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) tagForSegment:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)createRowAlignmentCell
{
  v7 = 0;
  objc_opt_class();
  v6.receiver = self;
  v6.super_class = AKTextAttributesViewControllerAccessibility;
  v3 = [(AKTextAttributesViewControllerAccessibility *)&v6 createRowAlignmentCell];
  v4 = __UIAccessibilityCastAsClass();

  if (v7 == 1)
  {
    abort();
  }

  [(AKTextAttributesViewControllerAccessibility *)self _axAddAlignmentLabels:v4];

  return v4;
}

@end