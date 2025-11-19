@interface MRPlatterViewControllerAccessibility
- (void)headerViewButtonPressed:(id)a3;
@end

@implementation MRPlatterViewControllerAccessibility

- (void)headerViewButtonPressed:(id)a3
{
  v3.receiver = self;
  v3.super_class = MRPlatterViewControllerAccessibility;
  [(MRPlatterViewControllerAccessibility *)&v3 headerViewButtonPressed:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end