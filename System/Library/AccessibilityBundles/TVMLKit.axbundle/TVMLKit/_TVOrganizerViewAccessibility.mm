@interface _TVOrganizerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation _TVOrganizerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVOrganizerView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"_TVOrganizerView" hasProperty:@"components" withType:"@"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = _TVOrganizerViewAccessibility;
  [(_TVOrganizerViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (id)_accessibilitySupplementaryFooterViews
{
  _accessibleSubviews = [(_TVOrganizerViewAccessibility *)self _accessibleSubviews];
  v3 = [_accessibleSubviews axFilterObjectsUsingBlock:&__block_literal_global_8];

  return v3;
}

- (id)accessibilityLabel
{
  isAccessibilityUserDefinedElement = [(_TVOrganizerViewAccessibility *)self isAccessibilityUserDefinedElement];
  bOOLValue = [isAccessibilityUserDefinedElement BOOLValue];

  if (bOOLValue)
  {
    accessibilityLabel = [(_TVOrganizerViewAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:1 focusableItems:0 exclusions:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TVOrganizerViewAccessibility;
    accessibilityLabel = [(_TVOrganizerViewAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _TVOrganizerViewAccessibility;
  [(_TVOrganizerViewAccessibility *)&v3 layoutSubviews];
  [(_TVOrganizerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end