@interface PRComplicationGalleryViewControllerAccessibility
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PRComplicationGalleryViewControllerAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PRComplicationGalleryViewControllerAccessibility;
  [(PRComplicationGalleryViewControllerAccessibility *)&v6 viewDidAppear:appear];
  v3 = *MEMORY[0x29EDC7ED8];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  navigationController = [v4 navigationController];
  UIAccessibilityPostNotification(v3, navigationController);
}

@end