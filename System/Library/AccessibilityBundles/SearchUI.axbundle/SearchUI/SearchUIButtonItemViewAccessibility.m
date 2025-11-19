@interface SearchUIButtonItemViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SearchUIButtonItemViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(SearchUIButtonItemViewAccessibility *)self safeValueForKey:@"iconView"];
  v4 = [v3 _accessibilityFindDescendant:&__block_literal_global_0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 accessibilityLabel];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SearchUIButtonItemViewAccessibility;
    v6 = [(SearchUIButtonItemViewAccessibility *)&v9 accessibilityLabel];
  }

  v7 = v6;

  return v7;
}

uint64_t __57__SearchUIButtonItemViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end