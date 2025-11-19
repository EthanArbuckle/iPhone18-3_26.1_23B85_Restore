@interface PXPeopleConfirmationViewControllerAccessibility
- (void)suggestionDidDisplay;
@end

@implementation PXPeopleConfirmationViewControllerAccessibility

- (void)suggestionDidDisplay
{
  v2.receiver = self;
  v2.super_class = PXPeopleConfirmationViewControllerAccessibility;
  [(PXPeopleConfirmationViewControllerAccessibility *)&v2 suggestionDidDisplay];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end