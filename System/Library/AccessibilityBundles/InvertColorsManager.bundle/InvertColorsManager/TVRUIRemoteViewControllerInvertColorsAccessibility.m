@interface TVRUIRemoteViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation TVRUIRemoteViewControllerInvertColorsAccessibility

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TVRUIRemoteViewControllerInvertColorsAccessibility;
  [(TVRUIRemoteViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(TVRUIRemoteViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(TVRUIRemoteViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end