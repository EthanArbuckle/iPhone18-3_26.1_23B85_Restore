@interface CNVisualIdentityAvatarViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation CNVisualIdentityAvatarViewControllerInvertColorsAccessibility

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNVisualIdentityAvatarViewControllerInvertColorsAccessibility;
  [(CNVisualIdentityAvatarViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(CNVisualIdentityAvatarViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(CNVisualIdentityAvatarViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"contentView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end