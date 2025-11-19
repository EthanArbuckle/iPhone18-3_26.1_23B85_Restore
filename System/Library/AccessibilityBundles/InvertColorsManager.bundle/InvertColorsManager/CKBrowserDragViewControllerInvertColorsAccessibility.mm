@interface CKBrowserDragViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation CKBrowserDragViewControllerInvertColorsAccessibility

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CKBrowserDragViewControllerInvertColorsAccessibility;
  [(CKBrowserDragViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(CKBrowserDragViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(CKBrowserDragViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"normalDragView"];
  [v3 setAccessibilityIgnoresInvertColors:1];

  v4 = [(CKBrowserDragViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"keyboardDragView"];
  [v4 setAccessibilityIgnoresInvertColors:1];
}

@end