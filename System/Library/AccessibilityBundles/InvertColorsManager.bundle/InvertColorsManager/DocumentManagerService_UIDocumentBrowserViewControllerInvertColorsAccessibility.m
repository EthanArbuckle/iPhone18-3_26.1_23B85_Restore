@interface DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)updateAppearance:(id)a3;
- (void)viewDidLoad;
@end

@implementation DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility *)self safeUnsignedIntegerForKey:@"browserUserInterfaceStyle"];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  [v4 setAccessibilityIgnoresInvertColors:v2 == &dword_0 + 2];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility;
  [(DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)updateAppearance:(id)a3
{
  v4.receiver = self;
  v4.super_class = DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility;
  [(DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility *)&v4 updateAppearance:a3];
  [(DocumentManagerService_UIDocumentBrowserViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end