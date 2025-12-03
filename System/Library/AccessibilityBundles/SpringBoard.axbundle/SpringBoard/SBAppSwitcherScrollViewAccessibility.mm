@interface SBAppSwitcherScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)_ax_adjustedContentOffsetForDifferentialScrollingToShowFocusItemWithInfo:(id)info proposedContentOffset:(CGPoint)offset;
@end

@implementation SBAppSwitcherScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer"];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer" hasInstanceMethod:@"appLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppSwitcherScrollView" isKindOfClass:@"UIScrollView"];
  [validationsCopy validateClass:@"UIScrollView" hasInstanceMethod:@"_adjustFocusContentOffset:toShowFocusItemWithInfo:" withFullSignature:{"{CGPoint=dd}", "@", 0}];
  [validationsCopy validateClass:@"_UIFocusItemInfo" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppSwitcherScrollView" isKindOfClass:@"BSUIScrollView"];
  [validationsCopy validateClass:@"BSUIScrollView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"appLayouts" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"personality" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherPersonality" hasInstanceMethod:@"rootModifier" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"SBSwitcherMultitaskingQueryProviding" hasRequiredInstanceMethod:@"contentOffsetForIndex:alignment:"];
}

- (CGPoint)_ax_adjustedContentOffsetForDifferentialScrollingToShowFocusItemWithInfo:(id)info proposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  infoCopy = info;
  v8 = [(SBAppSwitcherScrollViewAccessibility *)self safeValueForKey:@"delegate"];
  v9 = [infoCopy safeValueForKey:@"item"];
  v10 = [v8 safeArrayForKey:@"appLayouts"];
  v11 = [v9 safeValueForKey:@"appLayout"];
  v12 = [v10 indexOfObject:v11];

  v13 = [v8 safeValueForKeyPath:@"personality.rootModifier"];
  if (AXDeviceIsPad() & 1) == 0 && v12 != 0x7FFFFFFFFFFFFFFFLL && (objc_opt_respondsToSelector())
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3010000000;
    v20 = &unk_29C3C62F5;
    v21 = 0;
    v22 = 0;
    v16 = v13;
    AXPerformSafeBlock();
    x = v18[4];
    y = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

uint64_t __135__SBAppSwitcherScrollViewAccessibility__ax_adjustedContentOffsetForDifferentialScrollingToShowFocusItemWithInfo_proposedContentOffset___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) contentOffsetForIndex:*(a1 + 48) alignment:2];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

@end