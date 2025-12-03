@interface TabBarItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateAXInfo;
- (void)setFrame:(CGRect)frame;
- (void)setTitleText:(id)text;
@end

@implementation TabBarItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TabBarItemView" hasInstanceVariable:@"_titleText" withType:"NSString"];
  [validationsCopy validateClass:@"TabBarItemView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"TabBarItemView" hasInstanceMethod:@"closeButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TabBarItemView" hasInstanceMethod:@"setTitleText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"TabBarItemView" hasInstanceMethod:@"setActive:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"TabBarItemView" hasInstanceMethod:@"setPinned:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"TabBarItemView" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"TabBarItemView" hasInstanceMethod:@"isPinned" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"TabBarItemView" hasInstanceMethod:@"_isPinnedAndNarrow" withFullSignature:{"B", 0}];
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
  accessibilityTraits = [v3 accessibilityTraits];
  v17 = *MEMORY[0x29EDC7FC0] | accessibilityTraits;
  if (v15)
  {
    v18 = *MEMORY[0x29EDC7FC0] | accessibilityTraits;
  }

  else
  {
    v18 = accessibilityTraits & ~*MEMORY[0x29EDC7FC0];
  }

  [v3 setAccessibilityTraits:v18];
  [v3 setAccessibilityRespondsToUserInteraction:1];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = [(TabBarItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  _accessibilityParentView = [(TabBarItemViewAccessibility *)self _accessibilityParentView];
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
    v14 = [(TabBarItemViewAccessibility *)&v17 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  v15 = v14;

  return v15;
}

- (void)setFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = TabBarItemViewAccessibility;
  [(TabBarItemViewAccessibility *)&v7 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(TabBarItemViewAccessibility *)self bounds];
  v4 = [(TabBarItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = [(TabBarItemViewAccessibility *)self safeValueForKey:@"closeButton"];
  accessibilityTraits = [v4 accessibilityTraits];
  if ((*MEMORY[0x29EDC7FC0] & accessibilityTraits) != 0)
  {
    [v5 bounds];
  }

  UIAccessibilityFrameForBounds();
  [v4 setAccessibilityFrame:?];
}

- (void)setTitleText:(id)text
{
  v4.receiver = self;
  v4.super_class = TabBarItemViewAccessibility;
  [(TabBarItemViewAccessibility *)&v4 setTitleText:text];
  [(TabBarItemViewAccessibility *)self _accessibilityUpdateAXInfo];
}

@end