@interface SBHPageManagementCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsSelected;
- (BOOL)_accessibilityToggleButtonEnabled;
- (BOOL)accessibilityPerformEscape;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityToggleButton;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_accessibilityPageIndex;
- (void)iconListHiddenDidChange:(id)a3;
@end

@implementation SBHPageManagementCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHPageManagementCellView" hasInstanceMethod:@"toggleButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHPageManagementCellView" hasInstanceMethod:@"listView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHPageManagementCellView" hasInstanceMethod:@"iconListHiddenDidChange:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBHPageManagementCellViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderView"];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"folder" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolder" hasInstanceMethod:@"indexOfList:" withFullSignature:{"q", "@", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"exitPageManagementUIWithCompletionHandler:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"SBIconView"];
  [v3 validateProtocol:@"SBHPageManagementCellViewControllerDelegate" hasRequiredInstanceMethod:@"pageManagementCellViewControllerDidReceiveTap:"];
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"page.management.home.page");
  v5 = [MEMORY[0x29EDBA070] numberWithInteger:{-[SBHPageManagementCellViewAccessibility _accessibilityPageIndex](self, "_accessibilityPageIndex")}];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (id)accessibilityValue
{
  if ([(SBHPageManagementCellViewAccessibility *)self _accessibilityIsSelected])
  {
    v2 = @"page.management.home.page.visible";
  }

  else
  {
    v2 = @"page.management.home.page.hidden";
  }

  return accessibilityLocalizedString(v2);
}

- (id)accessibilityHint
{
  if ([(SBHPageManagementCellViewAccessibility *)self _accessibilityToggleButtonEnabled])
  {
    if ([(SBHPageManagementCellViewAccessibility *)self _accessibilityIsSelected])
    {
      v3 = @"page.management.home.page.hint.hide";
    }

    else
    {
      v3 = @"page.management.home.page.hint.show";
    }

    v4 = accessibilityLocalizedString(v3);
  }

  else
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"page.management.home.page.hint.jump");
    v7 = [MEMORY[0x29EDBA070] numberWithInteger:{-[SBHPageManagementCellViewAccessibility _accessibilityPageIndex](self, "_accessibilityPageIndex")}];
    v4 = [v5 localizedStringWithFormat:v6, v7];
  }

  return v4;
}

- (id)accessibilityCustomActions
{
  v10[1] = *MEMORY[0x29EDCA608];
  if ([(SBHPageManagementCellViewAccessibility *)self _accessibilityIsSelected])
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = accessibilityLocalizedString(@"page.management.home.page.jump.action");
    v5 = [MEMORY[0x29EDBA070] numberWithInteger:{-[SBHPageManagementCellViewAccessibility _accessibilityPageIndex](self, "_accessibilityPageIndex")}];
    v6 = [v3 localizedStringWithFormat:v4, v5];

    v7 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v6 target:self selector:sel__axHandleJumpToPage];
    v10[0] = v7;
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(SBHPageManagementCellViewAccessibility *)self _accessibilityToggleButtonEnabled])
  {
    v3 = [(SBHPageManagementCellViewAccessibility *)self safeValueForKey:@"toggleButton"];
    [v3 accessibilityActivationPoint];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBHPageManagementCellViewAccessibility;
    [(SBHPageManagementCellViewAccessibility *)&v10 accessibilityActivationPoint];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (BOOL)accessibilityPerformEscape
{
  v4 = [(SBHPageManagementCellViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbrootfoldervi_2.isa)];
  v2 = v4;
  AXPerformSafeBlock();

  return 1;
}

- (void)iconListHiddenDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBHPageManagementCellViewAccessibility;
  [(SBHPageManagementCellViewAccessibility *)&v10 iconListHiddenDidChange:a3];
  if ([(SBHPageManagementCellViewAccessibility *)self _accessibilityIsSelected])
  {
    v4 = @"page.management.home.page.changed.visible";
  }

  else
  {
    v4 = @"page.management.home.page.changed.hidden";
  }

  v5 = accessibilityLocalizedString(v4);
  v6 = *MEMORY[0x29EDC7EA8];
  v7 = MEMORY[0x29EDBA0F8];
  v8 = [MEMORY[0x29EDBA070] numberWithInteger:{-[SBHPageManagementCellViewAccessibility _accessibilityPageIndex](self, "_accessibilityPageIndex")}];
  v9 = [v7 localizedStringWithFormat:v5, v8];
  UIAccessibilityPostNotification(v6, v9);
}

- (BOOL)_accessibilityIsSelected
{
  v2 = [(SBHPageManagementCellViewAccessibility *)self _accessibilityToggleButton];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isSelected];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_accessibilityToggleButtonEnabled
{
  v2 = [(SBHPageManagementCellViewAccessibility *)self _accessibilityToggleButton];
  v3 = [v2 isEnabled];

  return v3;
}

- (id)_accessibilityToggleButton
{
  objc_opt_class();
  v3 = [(SBHPageManagementCellViewAccessibility *)self safeValueForKey:@"toggleButton"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

void __61__SBHPageManagementCellViewAccessibility__axHandleJumpToPage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityViewController];
  v1 = [v2 safeValueForKey:@"delegate"];
  [v1 pageManagementCellViewControllerDidReceiveTap:v2];
}

- (id)accessibilityDragSourceDescriptors
{
  v2 = [(SBHPageManagementCellViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_8 startWithSelf:0];
  v3 = [MEMORY[0x29EDB8DE8] array];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  [v4 bounds];
  UIRectGetCenter();
  [v4 convertPoint:v2 toView:?];
  v6 = v5;
  v8 = v7;
  v9 = objc_alloc(MEMORY[0x29EDC7900]);
  v10 = accessibilityLocalizedString(@"drag.page");
  v11 = [v9 initWithName:v10 point:v2 inView:{v6, v8}];
  [v3 axSafelyAddObject:v11];

  return v3;
}

uint64_t __76__SBHPageManagementCellViewAccessibility_accessibilityDragSourceDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Sbiconview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityDropPointDescriptors
{
  v3 = [(SBHPageManagementCellViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_387 startWithSelf:0];
  v4 = [MEMORY[0x29EDB8DE8] array];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  [v5 bounds];
  UIRectGetCenter();
  [v5 convertPoint:v3 toView:?];
  v7 = v6;
  v9 = v8 + -0.5;
  v10 = MEMORY[0x29EDBA0F8];
  v11 = accessibilityLocalizedString(@"drop.before.page");
  v12 = [(SBHPageManagementCellViewAccessibility *)self accessibilityLabel];
  v13 = [v10 stringWithFormat:v11, v12];

  v14 = [objc_alloc(MEMORY[0x29EDC7900]) initWithName:v13 point:v3 inView:{v9, v7}];
  [v4 axSafelyAddObject:v14];

  [v5 bounds];
  UIRectGetCenter();
  [v5 convertPoint:v3 toView:?];
  v16 = v15;
  v18 = v17 + 0.5;
  v19 = MEMORY[0x29EDBA0F8];
  v20 = accessibilityLocalizedString(@"drop.after.page");
  v21 = [(SBHPageManagementCellViewAccessibility *)self accessibilityLabel];
  v22 = [v19 stringWithFormat:v20, v21];

  v23 = [objc_alloc(MEMORY[0x29EDC7900]) initWithName:v22 point:v3 inView:{v18, v16}];
  [v4 axSafelyAddObject:v23];

  return v4;
}

uint64_t __75__SBHPageManagementCellViewAccessibility_accessibilityDropPointDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Sbiconview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (int64_t)_accessibilityPageIndex
{
  v3 = [(SBHPageManagementCellViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbrootfoldervi_2.isa)];
  v4 = [v3 safeValueForKey:@"folder"];
  v5 = [(SBHPageManagementCellViewAccessibility *)self safeValueForKey:@"listView"];
  v6 = [v5 safeValueForKey:@"model"];
  v7 = [v4 indexOfList:v6];

  return v7 + 1;
}

@end