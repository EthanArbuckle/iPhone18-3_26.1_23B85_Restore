@interface NavSignListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_didPan:(id)a3;
- (void)_didTap:(id)a3;
@end

@implementation NavSignListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NavSignListViewController" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NavSignListViewController" hasInstanceMethod:@"activeStepIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"NavSignListViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"NavSignListViewController" hasInstanceMethod:@"_didTap:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"NavSignListViewController" hasInstanceMethod:@"_didPan:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"DirectionsElevationGraphView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = NavSignListViewControllerAccessibility;
  [(NavSignListViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(NavSignListViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_4];
  v5 = [(NavSignListViewControllerAccessibility *)self safeBoolForKey:@"isExpanded"];
  if (v4)
  {
    [v4 setAccessibilityElementsHidden:v5 ^ 1u];
  }
}

uint64_t __84__NavSignListViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Directionselev.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = NavSignListViewControllerAccessibility;
  v7 = [(NavSignListViewControllerAccessibility *)&v13 collectionView:a3 cellForItemAtIndexPath:v6];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __80__NavSignListViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke;
  v12[3] = &unk_29F2CC468;
  v12[4] = self;
  [v7 _setAccessibilityHintBlock:v12];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __80__NavSignListViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_2;
  v10[3] = &unk_29F2CC490;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  [v7 _setAccessibilityElementsHiddenBlock:v10];

  return v7;
}

id __80__NavSignListViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) safeBoolForKey:@"isExpanded"])
  {
    v1 = @"ROUTE_LIST_HINT_COLLAPSE";
  }

  else
  {
    v1 = @"ROUTE_LIST_HINT_EXPAND";
  }

  v2 = AXMapsLocString(v1);

  return v2;
}

BOOL __80__NavSignListViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) safeBoolForKey:@"isExpanded"])
  {
    return 0;
  }

  v3 = [*(a1 + 32) safeIntegerForKey:@"activeStepIndex"];
  return [*(a1 + 40) row] != v3;
}

- (void)_didTap:(id)a3
{
  v4.receiver = self;
  v4.super_class = NavSignListViewControllerAccessibility;
  [(NavSignListViewControllerAccessibility *)&v4 _didTap:a3];
  [(NavSignListViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_didPan:(id)a3
{
  v4 = a3;
  v5 = [(NavSignListViewControllerAccessibility *)self safeBoolForKey:@"isExpanded"];
  v6.receiver = self;
  v6.super_class = NavSignListViewControllerAccessibility;
  [(NavSignListViewControllerAccessibility *)&v6 _didPan:v4];

  if (v5 != [(NavSignListViewControllerAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    [(NavSignListViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end