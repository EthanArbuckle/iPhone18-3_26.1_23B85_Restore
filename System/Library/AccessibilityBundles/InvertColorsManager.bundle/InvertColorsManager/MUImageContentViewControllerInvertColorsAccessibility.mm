@interface MUImageContentViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation MUImageContentViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(MUImageContentViewControllerInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MUImageContentViewControllerInvertColorsAccessibility;
  [(MUImageContentViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(MUImageContentViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end