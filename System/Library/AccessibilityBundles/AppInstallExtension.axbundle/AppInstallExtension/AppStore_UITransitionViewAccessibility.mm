@interface AppStore_UITransitionViewAccessibility
- (BOOL)_isSuperviewOfSearchControllerView;
- (BOOL)accessibilityViewIsModal;
@end

@implementation AppStore_UITransitionViewAccessibility

- (BOOL)_isSuperviewOfSearchControllerView
{
  subviews = [(AppStore_UITransitionViewAccessibility *)self subviews];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __76__AppStore_UITransitionViewAccessibility__isSuperviewOfSearchControllerView__block_invoke;
  v5[3] = &unk_29F29DF88;
  v5[4] = &v6;
  [subviews enumerateObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)accessibilityViewIsModal
{
  if ([(AppStore_UITransitionViewAccessibility *)self _isSuperviewOfSearchControllerView])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = AppStore_UITransitionViewAccessibility;
  return [(AppStore_UITransitionViewAccessibility *)&v4 accessibilityViewIsModal];
}

@end