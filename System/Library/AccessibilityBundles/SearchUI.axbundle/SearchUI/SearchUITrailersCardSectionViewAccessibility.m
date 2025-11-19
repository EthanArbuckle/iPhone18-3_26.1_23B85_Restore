@interface SearchUITrailersCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SearchUITrailersCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKLabel"];
  [v3 validateClass:@"TLKLabel" hasProperty:@"multilineText" withType:"@"];
  [v3 validateClass:@"TLKMultilineText"];
  [v3 validateClass:@"TLKMultilineText" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

uint64_t __86__SearchUITrailersCardSectionViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Searchuitraile_2.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  v2 = [(SearchUITrailersCardSectionViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_305];
  v3 = [v2 safeValueForKey:@"multilineText"];
  v4 = [v3 safeStringForKey:@"text"];

  return v4;
}

uint64_t __66__SearchUITrailersCardSectionViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Tlklabel.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end