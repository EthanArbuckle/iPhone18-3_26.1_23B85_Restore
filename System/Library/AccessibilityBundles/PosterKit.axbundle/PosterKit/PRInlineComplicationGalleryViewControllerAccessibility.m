@interface PRInlineComplicationGalleryViewControllerAccessibility
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation PRInlineComplicationGalleryViewControllerAccessibility

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PRInlineComplicationGalleryViewControllerAccessibility;
  [(PRInlineComplicationGalleryViewControllerAccessibility *)&v6 viewDidAppear:a3];
  v3 = *MEMORY[0x29EDC7ED8];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v4 navigationController];
  UIAccessibilityPostNotification(v3, v5);
}

@end