@interface TabBarItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateAXInfo;
- (void)setFrame:(CGRect)a3;
- (void)setTitleText:(id)a3;
@end

@implementation TabBarItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TabBarItemView" hasInstanceVariable:@"_titleText" withType:"NSString"];
  [v3 validateClass:@"TabBarItemView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"TabBarItemView" hasInstanceMethod:@"closeButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TabBarItemView" hasInstanceMethod:@"setTitleText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"TabBarItemView" hasInstanceMethod:@"setActive:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"TabBarItemView" hasInstanceMethod:@"setPinned:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"TabBarItemView" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"TabBarItemView" hasInstanceMethod:@"isPinned" withFullSignature:{"B", 0}];
  [v3 validateClass:@"TabBarItemView" hasInstanceMethod:@"_isPinnedAndNarrow" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = TabBarItemViewAccessibility;
  [(TabBarItemViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(TabBarItemViewAccessibility *)self _accessibilityUpdateAXInfo];
}

- (id)accessibilityLabel
{
  v2 = [(TabBarItemViewAccessibility *)self safeValueForKey:@"_titleText"];
  v3 = accessibilityLocalizedString(@"tab.view");
  v4 = AXCFormattedString();
  v7 = accessibilityLocalizedString(@"tab.pinned");
  v5 = __AXStringForVariables();

  return v5;
}

- (void)_accessibilityUpdateAXInfo
{
  v19 = [(TabBarItemViewAccessibility *)self safeValueForKey:@"_titleText"];
  v3 = [(TabBarItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [(TabBarItemViewAccessibility *)self safeBoolForKey:@"isPinned"];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"tab.view");
  v7 = [v5 stringWithFormat:v6, v19];
  if (v4)
  {
    v8 = accessibilityLocalizedString(@"tab.pinned");
    v9 = __AXStringForVariables();
    [v3 setAccessibilityLabel:{v9, v8, @"__AXStringForVariablesSentinel"}];
  }

  else
  {
    [v3 setAccessibilityLabel:v7];
  }

  v10 = accessibilityLocalizedString(@"tab.hint");
  [v3 setAccessibilityHint:v10];

  v11 = [(TabBarItemViewAccessibility *)self safeValueForKey:@"closeButton"];
  [v11 setIsAccessibilityElement:{-[TabBarItemViewAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"isPinned"}];
  v12 = MEMORY[0x29EDBA0F8];
  v13 = accessibilityLocalizedString(@"close.tab");
  v14 = [v12 stringWithFormat:v13, v19];
  [v11 setAccessibilityLabel:v14];

  v15 = [(TabBarItemViewAccessibility *)self safeBoolForKey:@"isActive"];
  v16 = [v3 accessibilityTraits];
  v17 = *MEMORY[0x29EDC7FC0] | v16;
  if (v15)
  {
    v18 = *MEMORY[0x29EDC7FC0] | v16;
  }

  else
  {
    v18 = v16 & ~*MEMORY[0x29EDC7FC0];
  }

  [v3 setAccessibilityTraits:v18];
  [v3 setAccessibilityRespondsToUserInteraction:1];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(TabBarItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v9 = [(TabBarItemViewAccessibility *)self _accessibilityParentView];
  UIAccessibilityPointForPoint();
  v11 = v10;
  v13 = v12;

  [v8 accessibilityFrame];
  v19.x = v11;
  v19.y = v13;
  if (CGRectContainsPoint(v20, v19))
  {
    v14 = v8;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = TabBarItemViewAccessibility;
    v14 = [(TabBarItemViewAccessibility *)&v17 _accessibilityHitTest:v7 withEvent:x, y];
  }

  v15 = v14;

  return v15;
}

- (void)setFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = TabBarItemViewAccessibility;
  [(TabBarItemViewAccessibility *)&v7 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(TabBarItemViewAccessibility *)self bounds];
  v4 = [(TabBarItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = [(TabBarItemViewAccessibility *)self safeValueForKey:@"closeButton"];
  v6 = [v4 accessibilityTraits];
  if ((*MEMORY[0x29EDC7FC0] & v6) != 0)
  {
    [v5 bounds];
  }

  UIAccessibilityFrameForBounds();
  [v4 setAccessibilityFrame:?];
}

- (void)setTitleText:(id)a3
{
  v4.receiver = self;
  v4.super_class = TabBarItemViewAccessibility;
  [(TabBarItemViewAccessibility *)&v4 setTitleText:a3];
  [(TabBarItemViewAccessibility *)self _accessibilityUpdateAXInfo];
}

@end