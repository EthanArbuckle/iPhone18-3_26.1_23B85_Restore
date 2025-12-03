@interface MRPlatterViewControllerAccessibility
- (void)headerViewButtonPressed:(id)pressed;
@end

@implementation MRPlatterViewControllerAccessibility

- (void)headerViewButtonPressed:(id)pressed
{
  v3.receiver = self;
  v3.super_class = MRPlatterViewControllerAccessibility;
  [(MRPlatterViewControllerAccessibility *)&v3 headerViewButtonPressed:pressed];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end