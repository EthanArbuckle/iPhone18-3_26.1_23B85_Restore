@interface CBOpeningViewControllerAccessibility
- (void)didTappedStartDiagnosticsButton;
@end

@implementation CBOpeningViewControllerAccessibility

- (void)didTappedStartDiagnosticsButton
{
  v2.receiver = self;
  v2.super_class = CBOpeningViewControllerAccessibility;
  [(CBOpeningViewControllerAccessibility *)&v2 didTappedStartDiagnosticsButton];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end