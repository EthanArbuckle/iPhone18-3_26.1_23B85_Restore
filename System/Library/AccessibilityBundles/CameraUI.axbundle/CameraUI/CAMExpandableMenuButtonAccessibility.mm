@interface CAMExpandableMenuButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (void)startCollapsingWithProposedFrame:(CGRect)frame;
@end

@implementation CAMExpandableMenuButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMExpandableMenuButton" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMExpandableMenuButton" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMExpandableMenuButton" hasInstanceMethod:@"startCollapsingWithProposedFrame:" withFullSignature:{"v", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = CAMExpandableMenuButtonAccessibility;
  canBecomeFocused = [(CAMExpandableMenuButtonAccessibility *)&v5 canBecomeFocused];
  if ([(CAMExpandableMenuButtonAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    canBecomeFocused &= [(CAMExpandableMenuButtonAccessibility *)self safeBoolForKey:@"isExpanded"]^ 1;
  }

  return canBecomeFocused;
}

- (void)startCollapsingWithProposedFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = CAMExpandableMenuButtonAccessibility;
  [(CAMExpandableMenuButtonAccessibility *)&v3 startCollapsingWithProposedFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end