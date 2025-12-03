@interface WindowControlsViewAccessibility
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (id)_axMenuBarViewController;
@end

@implementation WindowControlsViewAccessibility

- (BOOL)isAccessibilityElement
{
  _axMenuBarViewController = [(WindowControlsViewAccessibility *)self _axMenuBarViewController];

  if (_axMenuBarViewController)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = WindowControlsViewAccessibility;
  return [(WindowControlsViewAccessibility *)&v5 isAccessibilityElement];
}

- (BOOL)accessibilityPerformEscape
{
  v7.receiver = self;
  v7.super_class = WindowControlsViewAccessibility;
  [(WindowControlsViewAccessibility *)&v7 accessibilityPerformEscape];
  _axMenuBarViewController = [(WindowControlsViewAccessibility *)self _axMenuBarViewController];
  v4 = [_axMenuBarViewController safeUIViewForKey:@"_windowControlsPlaceholderView"];

  if (v4)
  {
    selfCopy = v4;
  }

  else
  {
    selfCopy = self;
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], selfCopy);

  return 1;
}

- (id)_axMenuBarViewController
{
  _accessibilityViewController = [(WindowControlsViewAccessibility *)self _accessibilityViewController];
  v3 = [_accessibilityViewController safeValueForKey:@"delegate"];

  v4 = [v3 safeValueForKey:@"windowScene"];
  v5 = [v4 safeValueForKey:@"menuBarManager"];
  v6 = [v5 safeValueForKey:@"menuBarViewController"];

  return v6;
}

@end