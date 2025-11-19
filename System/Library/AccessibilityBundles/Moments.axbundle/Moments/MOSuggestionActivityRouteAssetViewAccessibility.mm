@interface MOSuggestionActivityRouteAssetViewAccessibility
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MOSuggestionActivityRouteAssetViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MOSuggestionActivityRouteAssetViewAccessibility;
  [(MOSuggestionActivityRouteAssetViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(MOSuggestionActivityRouteAssetViewAccessibility *)self safeValueForKey:@"subviews"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_0];
  [v5 enumerateObjectsUsingBlock:&__block_literal_global_297];
}

uint64_t __93__MOSuggestionActivityRouteAssetViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2190](@"UIImageView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __93__MOSuggestionActivityRouteAssetViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
}

- (id)accessibilityLabel
{
  v2 = UIAXStringForAllChildren();
  v4 = _accessibilityReplaceStylsticBulletsForSpeaking(v2, v3);

  return v4;
}

@end