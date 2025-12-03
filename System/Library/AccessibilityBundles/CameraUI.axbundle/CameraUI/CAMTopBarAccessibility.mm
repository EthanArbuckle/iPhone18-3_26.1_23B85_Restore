@interface CAMTopBarAccessibility
- (void)collapseMenuButton:(id)button animated:(BOOL)animated;
- (void)expandMenuButton:(id)button animated:(BOOL)animated;
@end

@implementation CAMTopBarAccessibility

- (void)expandMenuButton:(id)button animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = CAMTopBarAccessibility;
  [(CAMTopBarAccessibility *)&v4 expandMenuButton:button animated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)collapseMenuButton:(id)button animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = CAMTopBarAccessibility;
  [(CAMTopBarAccessibility *)&v4 collapseMenuButton:button animated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end