@interface _UIQueuingScrollViewAccessibility
- (BOOL)canBecomeFocused;
- (CGRect)accessibilityFrame;
@end

@implementation _UIQueuingScrollViewAccessibility

- (CGRect)accessibilityFrame
{
  v10 = [(_UIQueuingScrollViewAccessibility *)self safeValueForKey:@"visibleView"];
  [v10 accessibilityFrame];
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  MEMORY[0x29EDC9740](v10);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (BOOL)canBecomeFocused
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _UIQueuingScrollViewAccessibility;
  v4 = [(_UIQueuingScrollViewAccessibility *)&v3 canBecomeFocused];
  if (([(_UIQueuingScrollViewAccessibility *)v6 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return v4 & 1;
  }
}

@end