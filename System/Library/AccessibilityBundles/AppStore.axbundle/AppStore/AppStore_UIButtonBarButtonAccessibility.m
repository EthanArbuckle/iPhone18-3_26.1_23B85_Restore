@interface AppStore_UIButtonBarButtonAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation AppStore_UIButtonBarButtonAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(AppStore_UIButtonBarButtonAccessibility *)self accessibilityLabel];
  if (v3)
  {
    v6.receiver = self;
    v6.super_class = AppStore_UIButtonBarButtonAccessibility;
    v4 = [(AppStore_UIButtonBarButtonAccessibility *)&v6 isAccessibilityElement];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end