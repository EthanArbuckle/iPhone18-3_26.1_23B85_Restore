@interface TVRUIControlPanelViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation TVRUIControlPanelViewControllerInvertColorsAccessibility

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TVRUIControlPanelViewControllerInvertColorsAccessibility;
  [(TVRUIControlPanelViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(TVRUIControlPanelViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(TVRUIControlPanelViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end