@interface UITransitionViewAccessibility__Podcasts__UIKit
- (BOOL)_accessibilityOverridesInvisibility;
- (BOOL)_foundSearchControllerDimmingView;
- (BOOL)_isSuperviewOfSearchControllerView;
- (BOOL)accessibilityElementsHidden;
@end

@implementation UITransitionViewAccessibility__Podcasts__UIKit

- (BOOL)_isSuperviewOfSearchControllerView
{
  subviews = [(UITransitionViewAccessibility__Podcasts__UIKit *)self subviews];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __84__UITransitionViewAccessibility__Podcasts__UIKit__isSuperviewOfSearchControllerView__block_invoke;
  v5[3] = &unk_29F2EA320;
  v5[4] = &v6;
  [subviews enumerateObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)_foundSearchControllerDimmingView
{
  v2 = [(UITransitionViewAccessibility__Podcasts__UIKit *)self _accessibilityFindDescendant:&__block_literal_global_4];
  _accessibilityViewIsVisible = [v2 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

- (BOOL)accessibilityElementsHidden
{
  if ([(UITransitionViewAccessibility__Podcasts__UIKit *)self _isSuperviewOfSearchControllerView]&& ![(UITransitionViewAccessibility__Podcasts__UIKit *)self _foundSearchControllerDimmingView])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UITransitionViewAccessibility__Podcasts__UIKit;
  return [(UITransitionViewAccessibility__Podcasts__UIKit *)&v4 accessibilityElementsHidden];
}

- (BOOL)_accessibilityOverridesInvisibility
{
  if (![(UITransitionViewAccessibility__Podcasts__UIKit *)self _isSuperviewOfSearchControllerView]|| (v3 = [(UITransitionViewAccessibility__Podcasts__UIKit *)self _foundSearchControllerDimmingView]))
  {
    v5.receiver = self;
    v5.super_class = UITransitionViewAccessibility__Podcasts__UIKit;
    LOBYTE(v3) = [(UITransitionViewAccessibility__Podcasts__UIKit *)&v5 _accessibilityOverridesInvisibility];
  }

  return v3;
}

@end