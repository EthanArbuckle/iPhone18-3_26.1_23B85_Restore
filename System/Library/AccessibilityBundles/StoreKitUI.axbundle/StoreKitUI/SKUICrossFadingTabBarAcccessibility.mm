@interface SKUICrossFadingTabBarAcccessibility
- (id)_accessibilityHitTestSubviews;
@end

@implementation SKUICrossFadingTabBarAcccessibility

- (id)_accessibilityHitTestSubviews
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  _accessibleSubviews = [v2 _accessibleSubviews];

  return _accessibleSubviews;
}

@end