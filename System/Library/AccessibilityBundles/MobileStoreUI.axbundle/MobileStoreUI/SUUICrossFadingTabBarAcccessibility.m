@interface SUUICrossFadingTabBarAcccessibility
- (id)_accessibilityHitTestSubviews;
@end

@implementation SUUICrossFadingTabBarAcccessibility

- (id)_accessibilityHitTestSubviews
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _accessibleSubviews];

  return v3;
}

@end