@interface QLImageItemViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
@end

@implementation QLImageItemViewControllerInvertColorsAccessibility

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v6.receiver = self;
  v6.super_class = QLImageItemViewControllerInvertColorsAccessibility;
  [(QLImageItemViewControllerInvertColorsAccessibility *)&v6 loadPreviewControllerWithContents:a3 context:a4 completionHandler:a5];
  [(QLImageItemViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = [(QLImageItemViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_imageView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityIgnoresInvertColors:1];
}

@end