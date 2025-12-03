@interface AXUIViewAccessibility
- (BOOL)_accessibilityReadAllOnFocus;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
@end

@implementation AXUIViewAccessibility

- (BOOL)accessibilityPerformEscape
{
  imaxIdentification = [(AXUIViewAccessibility *)self imaxIdentification];
  v4 = [imaxIdentification isEqualToString:@"EscapableWindow"];

  if (v4)
  {
    v5 = [(AXUIViewAccessibility *)self imaxValueForKey:@"_viewDelegate"];
    if (objc_opt_respondsToSelector())
    {
      [v5 dismissPopoverAnimated:0];

      return 1;
    }
  }

  v7.receiver = self;
  v7.super_class = AXUIViewAccessibility;
  return [(AXUIViewAccessibility *)&v7 accessibilityPerformEscape];
}

- (BOOL)_accessibilityReadAllOnFocus
{
  imaxIdentification = [(AXUIViewAccessibility *)self imaxIdentification];
  v4 = [imaxIdentification isEqualToString:@"PreviewContentView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = AXUIViewAccessibility;
  return [(AXUIViewAccessibility *)&v6 _accessibilityReadAllOnFocus];
}

- (BOOL)accessibilityActivate
{
  imaxIdentification = [(AXUIViewAccessibility *)self imaxIdentification];
  v4 = [imaxIdentification isEqualToString:@"EscapableWindow"];

  if (v4)
  {

    return [(AXUIViewAccessibility *)self accessibilityPerformEscape];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AXUIViewAccessibility;
    return [(AXUIViewAccessibility *)&v6 accessibilityActivate];
  }
}

@end