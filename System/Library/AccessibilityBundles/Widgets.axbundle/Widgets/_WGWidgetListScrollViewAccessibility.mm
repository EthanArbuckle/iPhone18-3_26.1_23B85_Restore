@interface _WGWidgetListScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityScrollToFrame:(CGRect)frame forView:(id)view;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)accessibilityScrollToVisibleWithChild:(id)child;
- (CGRect)_axAdjustedFrameForFrame:(CGRect)frame;
- (id)focusGroupIdentifier;
@end

@implementation _WGWidgetListScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WGWidgetWrapperView"];
  [validationsCopy validateClass:@"WGMajorListViewController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WGMajorListViewController" hasInstanceMethod:@"footerView" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)child
{
  childCopy = child;
  v5 = [childCopy _accessibilityAncestorIsKindOf:MEMORY[0x29ED42A50](@"WGWidgetWrapperView")];
  v6 = v5;
  if (!v5)
  {
    v5 = childCopy;
  }

  [v5 accessibilityFrameForScrolling];
  if (v6)
  {
    [(_WGWidgetListScrollViewAccessibility *)self _axAdjustedFrameForFrame:?];
  }

  v9.receiver = self;
  v9.super_class = _WGWidgetListScrollViewAccessibility;
  v7 = [(_WGWidgetListScrollViewAccessibility *)&v9 _accessibilityScrollToFrame:0 forView:?];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDB28]);

  return v7;
}

- (BOOL)_accessibilityScrollToFrame:(CGRect)frame forView:(id)view
{
  selfCopy = self;
  [(_WGWidgetListScrollViewAccessibility *)self _axAdjustedFrameForFrame:view, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6.receiver = selfCopy;
  v6.super_class = _WGWidgetListScrollViewAccessibility;
  LOBYTE(selfCopy) = [(_WGWidgetListScrollViewAccessibility *)&v6 _accessibilityScrollToFrame:0 forView:?];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDB28]);
  return selfCopy;
}

- (CGRect)_axAdjustedFrameForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(_WGWidgetListScrollViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_0 startWithSelf:1];
  _accessibilityViewController = [v7 _accessibilityViewController];

  v9 = [_accessibilityViewController safeValueForKey:@"headerView"];
  [v9 accessibilityFrame];
  v10 = CGRectGetHeight(v17) + 50.0;

  v11 = [_accessibilityViewController safeValueForKey:@"footerView"];
  [v11 accessibilityFrame];
  v12 = CGRectGetHeight(v18);

  v13 = x;
  v14 = y - v10;
  v15 = width;
  v16 = height + v10 + v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 3)
  {

    return [(_WGWidgetListScrollViewAccessibility *)self accessibilityScrollUpPage];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = _WGWidgetListScrollViewAccessibility;
    return [(_WGWidgetListScrollViewAccessibility *)&v6 accessibilityScroll:?];
  }
}

- (id)focusGroupIdentifier
{
  if ([(_WGWidgetListScrollViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    _accessibilityDefaultFocusGroupIdentifier = [(_WGWidgetListScrollViewAccessibility *)self _accessibilityDefaultFocusGroupIdentifier];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _WGWidgetListScrollViewAccessibility;
    _accessibilityDefaultFocusGroupIdentifier = [(_WGWidgetListScrollViewAccessibility *)&v5 focusGroupIdentifier];
  }

  return _accessibilityDefaultFocusGroupIdentifier;
}

@end