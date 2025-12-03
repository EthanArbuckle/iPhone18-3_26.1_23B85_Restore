@interface NTKPageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityFKAShouldProcessChildren;
- (BOOL)_axAllowsDelete;
- (BOOL)_axAllowsSelect;
- (BOOL)_axHandleDelete;
- (BOOL)accessibilityActivate;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)_axPageScrollViewController;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)_axGetCurrentScrollViewIndex;
@end

@implementation NTKPageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKPageView" hasInstanceMethod:@"pageDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKPageView" hasInstanceVariable:@"_outlineView" withType:"UIView"];
  [validationsCopy validateProtocol:@"NTKPageDelegate" hasRequiredInstanceMethod:@"pageWasSelected:"];
  [validationsCopy validateProtocol:@"NTKPageDelegate" hasRequiredInstanceMethod:@"pageDidBeginSwipeToDelete:"];
  [validationsCopy validateProtocol:@"NTKPageDelegate" hasRequiredInstanceMethod:@"page:didEndSwipeToDelete:"];
  [validationsCopy validateProtocol:@"NTKPageDelegate" hasRequiredInstanceMethod:@"page:didUpdateSwipeToDelete:"];
  [validationsCopy validateClass:@"NTKPageScrollViewController"];
  [validationsCopy validateClass:@"NTKPageScrollViewController" hasInstanceMethod:@"_canSelectPageAtIndex:" withFullSignature:{"B", "Q", 0}];
  [validationsCopy validateClass:@"NTKPageScrollViewController" hasInstanceMethod:@"_canDeletePageAtIndex:" withFullSignature:{"B", "Q", 0}];
  [validationsCopy validateClass:@"NTKPageScrollViewController" hasInstanceMethod:@"confirmPageDeletion" withFullSignature:{"v", 0}];
}

- (id)accessibilityPath
{
  _axPageScrollViewController = [(NTKPageViewAccessibility *)self _axPageScrollViewController];
  _accessibilityShouldSwipeBetweenPages = [_axPageScrollViewController _accessibilityShouldSwipeBetweenPages];

  if (_accessibilityShouldSwipeBetweenPages)
  {
    v5 = [(NTKPageViewAccessibility *)self safeUIViewForKey:@"_outlineView"];
    accessibilityPath = [v5 accessibilityPath];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKPageViewAccessibility;
    accessibilityPath = [(NTKPageViewAccessibility *)&v8 accessibilityPath];
  }

  return accessibilityPath;
}

- (BOOL)isAccessibilityElement
{
  _axPageScrollViewController = [(NTKPageViewAccessibility *)self _axPageScrollViewController];
  if ([_axPageScrollViewController _accessibilityShouldSwipeBetweenPages])
  {
    _axPageScrollViewController2 = [(NTKPageViewAccessibility *)self _axPageScrollViewController];
    v5 = [_axPageScrollViewController2 _accessibilityIsPageViewVisible:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_accessibilityFKAShouldProcessChildren
{
  if ([(NTKPageViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    _axPageScrollViewController = [(NTKPageViewAccessibility *)self _axPageScrollViewController];
    if ([_axPageScrollViewController _accessibilityShouldSwipeBetweenPages])
    {
      v4 = 0;
    }

    else
    {
      _axPageScrollViewController2 = [(NTKPageViewAccessibility *)self _axPageScrollViewController];
      v4 = [_axPageScrollViewController2 _accessibilityIsPageViewVisible:self];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKPageViewAccessibility;
    return [(NTKPageViewAccessibility *)&v7 accessibilityViewIsModal];
  }

  return v4;
}

- (id)accessibilityLabel
{
  _axPageScrollViewController = [(NTKPageViewAccessibility *)self _axPageScrollViewController];
  v4 = [_axPageScrollViewController _accessibilityLabelForPageView:self];

  return v4;
}

- (id)accessibilityValue
{
  _axPageScrollViewController = [(NTKPageViewAccessibility *)self _axPageScrollViewController];
  v4 = [_axPageScrollViewController _accessibilityValueForPageView:self];

  return v4;
}

- (id)accessibilityHint
{
  _axPageScrollViewController = [(NTKPageViewAccessibility *)self _axPageScrollViewController];
  v4 = [_axPageScrollViewController _accessibilityHintForPageView:self];

  return v4;
}

- (id)accessibilityCustomActions
{
  _axPageScrollViewController = [(NTKPageViewAccessibility *)self _axPageScrollViewController];
  v4 = [_axPageScrollViewController _accessibilityCustomActionsForPageView:self];

  if ([(NTKPageViewAccessibility *)self _axAllowsDelete])
  {
    v5 = [UIAccessibilityCustomAction alloc];
    v7 = accessibilityLocalizedString(@"delete.page", v6);
    v8 = [v5 initWithName:v7 target:self selector:"_axHandleDelete"];

    v9 = [UIImage systemImageNamed:@"trash.fill"];
    [v8 setImage:v9];

    if (v4)
    {
      v10 = [v4 arrayByAddingObject:v8];

      v4 = v10;
    }

    else
    {
      v12 = v8;
      v4 = [NSArray arrayWithObjects:&v12 count:1];
    }
  }

  return v4;
}

- (BOOL)accessibilityActivate
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __49__NTKPageViewAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _axAllowsSelect])
  {
    v2 = [*(a1 + 32) safeValueForKey:@"pageDelegate"];
    [v2 pageWasSelected:*(a1 + 32)];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)_axHandleDelete
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __43__NTKPageViewAccessibility__axHandleDelete__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _axAllowsDelete])
  {
    v2 = [*(a1 + 32) safeValueForKey:@"pageDelegate"];
    if (v2)
    {
      v3 = v2;
      [v2 pageDidBeginSwipeToDelete:*(a1 + 32)];
      [v3 page:*(a1 + 32) didUpdateSwipeToDelete:1.0];
      [v3 page:*(a1 + 32) didEndSwipeToDelete:1];
      [v3 confirmPageDeletion];
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
      v2 = v3;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (BOOL)_axAllowsSelect
{
  [(NTKPageViewAccessibility *)self _axGetCurrentScrollViewIndex];
  [(NTKPageViewAccessibility *)self safeValueForKey:@"pageDelegate"];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v5 = v9 = 0;
  AXPerformSafeBlock();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

id __43__NTKPageViewAccessibility__axAllowsSelect__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _canSelectPageAtIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_axAllowsDelete
{
  [(NTKPageViewAccessibility *)self _axGetCurrentScrollViewIndex];
  [(NTKPageViewAccessibility *)self safeValueForKey:@"pageDelegate"];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v5 = v9 = 0;
  AXPerformSafeBlock();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

id __43__NTKPageViewAccessibility__axAllowsDelete__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _canDeletePageAtIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_axGetCurrentScrollViewIndex
{
  v2 = [(NTKPageViewAccessibility *)self safeValueForKey:@"pageDelegate"];
  v3 = [v2 safeValueForKey:@"_scrollView"];
  v4 = [v3 safeUnsignedIntegerForKey:@"currentPageIndex"];

  return v4;
}

- (id)_axPageScrollViewController
{
  objc_opt_class();
  v3 = [(NTKPageViewAccessibility *)self safeValueForKey:@"pageDelegate"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  return v4;
}

- (BOOL)canBecomeFocused
{
  if ([(NTKPageViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {

    return [(NTKPageViewAccessibility *)self isAccessibilityElement];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NTKPageViewAccessibility;
    return [(NTKPageViewAccessibility *)&v4 canBecomeFocused];
  }
}

@end