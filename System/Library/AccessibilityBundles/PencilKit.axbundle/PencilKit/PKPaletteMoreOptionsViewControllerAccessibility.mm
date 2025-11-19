@interface PKPaletteMoreOptionsViewControllerAccessibility
- (void)viewDidLoad;
@end

@implementation PKPaletteMoreOptionsViewControllerAccessibility

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKPaletteMoreOptionsViewControllerAccessibility;
  [(PKPaletteMoreOptionsViewControllerAccessibility *)&v5 viewDidLoad];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = *MEMORY[0x29EDC7ED8];
  v4 = [v2 view];
  UIAccessibilityPostNotification(v3, v4);
}

@end