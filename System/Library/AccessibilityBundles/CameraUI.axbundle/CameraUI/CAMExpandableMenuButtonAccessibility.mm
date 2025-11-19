@interface CAMExpandableMenuButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
- (void)startCollapsingWithProposedFrame:(CGRect)a3;
@end

@implementation CAMExpandableMenuButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMExpandableMenuButton" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMExpandableMenuButton" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"UIControl" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMExpandableMenuButton" hasInstanceMethod:@"startCollapsingWithProposedFrame:" withFullSignature:{"v", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = CAMExpandableMenuButtonAccessibility;
  v3 = [(CAMExpandableMenuButtonAccessibility *)&v5 canBecomeFocused];
  if ([(CAMExpandableMenuButtonAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v3 &= [(CAMExpandableMenuButtonAccessibility *)self safeBoolForKey:@"isExpanded"]^ 1;
  }

  return v3;
}

- (void)startCollapsingWithProposedFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = CAMExpandableMenuButtonAccessibility;
  [(CAMExpandableMenuButtonAccessibility *)&v3 startCollapsingWithProposedFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end