@interface ConversationHUDViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLayoutSubviews;
@end

@implementation ConversationHUDViewControllerInvertColorsAccessibility

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ConversationHUDViewControllerInvertColorsAccessibility;
  [(ConversationHUDViewControllerInvertColorsAccessibility *)&v3 viewDidLayoutSubviews];
  [(ConversationHUDViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 overrideUserInterfaceStyle] == &dword_0 + 2;
  v5 = [(ConversationHUDViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v5 setAccessibilityIgnoresInvertColors:v4];
}

@end