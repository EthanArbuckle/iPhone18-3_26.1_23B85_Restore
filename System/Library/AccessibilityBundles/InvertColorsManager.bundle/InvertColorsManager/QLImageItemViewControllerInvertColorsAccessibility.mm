@interface QLImageItemViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
@end

@implementation QLImageItemViewControllerInvertColorsAccessibility

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = QLImageItemViewControllerInvertColorsAccessibility;
  [(QLImageItemViewControllerInvertColorsAccessibility *)&v6 loadPreviewControllerWithContents:contents context:context completionHandler:handler];
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