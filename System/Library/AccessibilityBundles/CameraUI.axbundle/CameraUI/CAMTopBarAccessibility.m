@interface CAMTopBarAccessibility
- (void)collapseMenuButton:(id)a3 animated:(BOOL)a4;
- (void)expandMenuButton:(id)a3 animated:(BOOL)a4;
@end

@implementation CAMTopBarAccessibility

- (void)expandMenuButton:(id)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = CAMTopBarAccessibility;
  [(CAMTopBarAccessibility *)&v4 expandMenuButton:a3 animated:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)collapseMenuButton:(id)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = CAMTopBarAccessibility;
  [(CAMTopBarAccessibility *)&v4 collapseMenuButton:a3 animated:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end