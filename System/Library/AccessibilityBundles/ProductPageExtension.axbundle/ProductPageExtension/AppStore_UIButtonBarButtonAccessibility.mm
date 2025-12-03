@interface AppStore_UIButtonBarButtonAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation AppStore_UIButtonBarButtonAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(AppStore_UIButtonBarButtonAccessibility *)self accessibilityLabel];
  if (accessibilityLabel)
  {
    v6.receiver = self;
    v6.super_class = AppStore_UIButtonBarButtonAccessibility;
    isAccessibilityElement = [(AppStore_UIButtonBarButtonAccessibility *)&v6 isAccessibilityElement];
  }

  else
  {
    isAccessibilityElement = 0;
  }

  return isAccessibilityElement;
}

@end