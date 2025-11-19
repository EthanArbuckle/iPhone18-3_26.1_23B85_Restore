@interface AAUIBadgeViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AAUIBadgeViewAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(AAUIBadgeViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!v3)
  {
    return 1;
  }

  v4 = [(AAUIBadgeViewAccessibility *)self isAccessibilityUserDefinedElement];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)accessibilityLabel
{
  v4.receiver = self;
  v4.super_class = AAUIBadgeViewAccessibility;
  v2 = [(AAUIBadgeViewAccessibility *)&v4 accessibilityLabel];

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AAUIBadgeViewAccessibility;
  return UIAccessibilityTraitImage | [(AAUIBadgeViewAccessibility *)&v3 accessibilityTraits];
}

@end