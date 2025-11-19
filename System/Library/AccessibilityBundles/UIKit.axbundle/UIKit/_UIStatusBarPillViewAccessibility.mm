@interface _UIStatusBarPillViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIStatusBarPillViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIStatusBarPillView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)isAccessibilityElement
{
  v3 = [(_UIStatusBarPillViewAccessibility *)self accessibilityLabel];
  v4 = [v3 length] != 0;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v3 = [(_UIStatusBarPillViewAccessibility *)self accessibilityLabel];
  v4 = [v3 length] != 0;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)canBecomeFocused
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = _UIStatusBarPillViewAccessibility;
  v4 = 0;
  v3 = 1;
  if (![(_UIStatusBarPillViewAccessibility *)&v6 canBecomeFocused])
  {
    v5 = [(_UIStatusBarPillViewAccessibility *)v8 accessibilityLabel];
    v4 = 1;
    v3 = [v5 length] != 0;
  }

  v9 = v3;
  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  return v9;
}

- (id)accessibilityElements
{
  if ([(_UIStatusBarPillViewAccessibility *)self isAccessibilityElement:a2])
  {
    v2 = 0;
  }

  else
  {
    v2 = MEMORY[0x29EDB8E90];
  }

  return v2;
}

- (id)accessibilityHint
{
  v4 = accessibilityLocalizedString(@"status.backgroundactivity.hint");
  v3 = AXStatusBarItemHint(self);
  v5 = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v7 = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = _UIStatusBarPillViewAccessibility;
  v5 = [(_UIStatusBarPillViewAccessibility *)&v4 accessibilityTraits]| *MEMORY[0x29EDC7580] | *MEMORY[0x29EDC7F70];
  v3 = AXStatusBarPillTimeView(v7);
  MEMORY[0x29EDC9740](v3);
  if (v3)
  {
    v5 |= *MEMORY[0x29EDC7FF0] | *MEMORY[0x29EDC74F8];
  }

  return v5;
}

@end