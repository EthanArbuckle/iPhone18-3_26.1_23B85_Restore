@interface SearchUIPersonHeaderCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchUIPersonHeaderCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIPersonHeaderCardSectionView" hasProperty:@"section" withType:"@"];
  [v3 validateClass:@"SFPersonHeaderCardSection" hasInstanceMethod:@"person" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFPerson" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIPersonHeaderCardSectionView" hasInstanceMethod:@"viewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIPersonHeaderViewController" hasInstanceMethod:@"userIsUnavailable" withFullSignature:{"B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchUIPersonHeaderCardSectionViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(SearchUIPersonHeaderCardSectionViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F70];
}

- (id)accessibilityLabel
{
  v3 = [(SearchUIPersonHeaderCardSectionViewAccessibility *)self safeValueForKey:@"section"];
  v4 = [v3 safeValueForKey:@"person"];
  v5 = [v4 safeStringForKey:@"displayName"];

  [(SearchUIPersonHeaderCardSectionViewAccessibility *)self safeValueForKey:@"viewController"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = v13 = 0;
  AXPerformSafeBlock();
  LODWORD(v3) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  if (v3 == 1)
  {
    v9 = accessibilityLocalizedString(@"user.unavailable");
    v7 = __UIAXStringForVariables();

    v5 = v7;
  }

  return v5;
}

uint64_t __70__SearchUIPersonHeaderCardSectionViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) userIsUnavailable];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __90__SearchUIPersonHeaderCardSectionViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Cnactionview.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end