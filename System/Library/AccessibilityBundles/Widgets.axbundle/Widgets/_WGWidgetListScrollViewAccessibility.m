@interface _WGWidgetListScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityScrollToFrame:(CGRect)a3 forView:(id)a4;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3;
- (CGRect)_axAdjustedFrameForFrame:(CGRect)a3;
- (id)focusGroupIdentifier;
@end

@implementation _WGWidgetListScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WGWidgetWrapperView"];
  [v3 validateClass:@"WGMajorListViewController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WGMajorListViewController" hasInstanceMethod:@"footerView" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3
{
  v4 = a3;
  v5 = [v4 _accessibilityAncestorIsKindOf:MEMORY[0x29ED42A50](@"WGWidgetWrapperView")];
  v6 = v5;
  if (!v5)
  {
    v5 = v4;
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

- (BOOL)_accessibilityScrollToFrame:(CGRect)a3 forView:(id)a4
{
  v4 = self;
  [(_WGWidgetListScrollViewAccessibility *)self _axAdjustedFrameForFrame:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6.receiver = v4;
  v6.super_class = _WGWidgetListScrollViewAccessibility;
  LOBYTE(v4) = [(_WGWidgetListScrollViewAccessibility *)&v6 _accessibilityScrollToFrame:0 forView:?];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDB28]);
  return v4;
}

- (CGRect)_axAdjustedFrameForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(_WGWidgetListScrollViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_0 startWithSelf:1];
  v8 = [v7 _accessibilityViewController];

  v9 = [v8 safeValueForKey:@"headerView"];
  [v9 accessibilityFrame];
  v10 = CGRectGetHeight(v17) + 50.0;

  v11 = [v8 safeValueForKey:@"footerView"];
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

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 == 3)
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
    v3 = [(_WGWidgetListScrollViewAccessibility *)self _accessibilityDefaultFocusGroupIdentifier];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _WGWidgetListScrollViewAccessibility;
    v3 = [(_WGWidgetListScrollViewAccessibility *)&v5 focusGroupIdentifier];
  }

  return v3;
}

@end