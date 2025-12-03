@interface SiriUIContentButtonAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation SiriUIContentButtonAccessibility

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(SiriUIContentButtonAccessibility *)self isAccessibilityUserDefinedElement];

  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(SiriUIContentButtonAccessibility *)self isAccessibilityUserDefinedElement];
    LOBYTE(v5) = [isAccessibilityUserDefinedElement2 BOOLValue];
  }

  else
  {
    isAccessibilityUserDefinedElement2 = [(SiriUIContentButtonAccessibility *)self safeValueForKey:@"titleLabel"];
    v6 = [isAccessibilityUserDefinedElement2 safeValueForKey:@"text"];
    v7 = [v6 safeValueForKey:@"length"];
    v5 = v7 != 0;
  }

  return v5;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(SiriUIContentButtonAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(SiriUIContentButtonAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(SiriUIContentButtonAccessibility *)self safeValueForKey:@"titleLabel"];
    accessibilityUserDefinedLabel2 = [v5 accessibilityLabel];
  }

  return accessibilityUserDefinedLabel2;
}

@end