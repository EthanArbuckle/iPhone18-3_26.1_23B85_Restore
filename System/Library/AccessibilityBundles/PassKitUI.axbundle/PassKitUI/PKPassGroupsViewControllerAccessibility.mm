@interface PKPassGroupsViewControllerAccessibility
- (void)groupStackViewDidBeginReordering:(id)a3;
@end

@implementation PKPassGroupsViewControllerAccessibility

- (void)groupStackViewDidBeginReordering:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassGroupsViewControllerAccessibility;
  [(PKPassGroupsViewControllerAccessibility *)&v5 groupStackViewDidBeginReordering:a3];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = accessibilityLocalizedString(@"started.reordering.passes");
  UIAccessibilityPostNotification(v3, v4);
}

@end