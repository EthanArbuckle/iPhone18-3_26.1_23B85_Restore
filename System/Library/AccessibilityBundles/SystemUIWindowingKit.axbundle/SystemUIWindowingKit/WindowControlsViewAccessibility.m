@interface WindowControlsViewAccessibility
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (id)_axMenuBarViewController;
@end

@implementation WindowControlsViewAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(WindowControlsViewAccessibility *)self _axMenuBarViewController];

  if (v3)
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
  v3 = [(WindowControlsViewAccessibility *)self _axMenuBarViewController];
  v4 = [v3 safeUIViewForKey:@"_windowControlsPlaceholderView"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = self;
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v5);

  return 1;
}

- (id)_axMenuBarViewController
{
  v2 = [(WindowControlsViewAccessibility *)self _accessibilityViewController];
  v3 = [v2 safeValueForKey:@"delegate"];

  v4 = [v3 safeValueForKey:@"windowScene"];
  v5 = [v4 safeValueForKey:@"menuBarManager"];
  v6 = [v5 safeValueForKey:@"menuBarViewController"];

  return v6;
}

@end