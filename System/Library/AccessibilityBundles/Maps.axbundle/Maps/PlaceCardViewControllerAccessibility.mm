@interface PlaceCardViewControllerAccessibility
- (void)headerViewDidLayoutSubviews:(id)subviews;
- (void)updateContent;
@end

@implementation PlaceCardViewControllerAccessibility

- (void)updateContent
{
  v5.receiver = self;
  v5.super_class = PlaceCardViewControllerAccessibility;
  [(PlaceCardViewControllerAccessibility *)&v5 updateContent];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = *MEMORY[0x29EDC7F10];
  _accessibilityFirstNonGrabberElement = [v2 _accessibilityFirstNonGrabberElement];
  UIAccessibilityPostNotification(v3, _accessibilityFirstNonGrabberElement);
}

- (void)headerViewDidLayoutSubviews:(id)subviews
{
  v3.receiver = self;
  v3.super_class = PlaceCardViewControllerAccessibility;
  [(PlaceCardViewControllerAccessibility *)&v3 headerViewDidLayoutSubviews:subviews];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end