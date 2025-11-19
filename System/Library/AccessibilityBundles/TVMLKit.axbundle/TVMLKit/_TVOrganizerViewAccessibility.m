@interface _TVOrganizerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation _TVOrganizerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVOrganizerView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_TVOrganizerView" hasProperty:@"components" withType:"@"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = _TVOrganizerViewAccessibility;
  [(_TVOrganizerViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(_TVOrganizerViewAccessibility *)self _accessibleSubviews];
  v3 = [v2 axFilterObjectsUsingBlock:&__block_literal_global_8];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(_TVOrganizerViewAccessibility *)self isAccessibilityUserDefinedElement];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(_TVOrganizerViewAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:1 focusableItems:0 exclusions:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TVOrganizerViewAccessibility;
    v5 = [(_TVOrganizerViewAccessibility *)&v7 accessibilityLabel];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _TVOrganizerViewAccessibility;
  [(_TVOrganizerViewAccessibility *)&v3 layoutSubviews];
  [(_TVOrganizerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end