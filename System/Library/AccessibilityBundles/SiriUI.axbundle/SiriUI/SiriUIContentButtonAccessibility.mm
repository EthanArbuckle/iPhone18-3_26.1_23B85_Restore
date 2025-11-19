@interface SiriUIContentButtonAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation SiriUIContentButtonAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(SiriUIContentButtonAccessibility *)self isAccessibilityUserDefinedElement];

  if (v3)
  {
    v4 = [(SiriUIContentButtonAccessibility *)self isAccessibilityUserDefinedElement];
    LOBYTE(v5) = [v4 BOOLValue];
  }

  else
  {
    v4 = [(SiriUIContentButtonAccessibility *)self safeValueForKey:@"titleLabel"];
    v6 = [v4 safeValueForKey:@"text"];
    v7 = [v6 safeValueForKey:@"length"];
    v5 = v7 != 0;
  }

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(SiriUIContentButtonAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(SiriUIContentButtonAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(SiriUIContentButtonAccessibility *)self safeValueForKey:@"titleLabel"];
    v4 = [v5 accessibilityLabel];
  }

  return v4;
}

@end