@interface AAUIBadgeViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AAUIBadgeViewAccessibility

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(AAUIBadgeViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(AAUIBadgeViewAccessibility *)self isAccessibilityUserDefinedElement];
  bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

  return bOOLValue;
}

- (id)accessibilityLabel
{
  v4.receiver = self;
  v4.super_class = AAUIBadgeViewAccessibility;
  accessibilityLabel = [(AAUIBadgeViewAccessibility *)&v4 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AAUIBadgeViewAccessibility;
  return UIAccessibilityTraitImage | [(AAUIBadgeViewAccessibility *)&v3 accessibilityTraits];
}

@end