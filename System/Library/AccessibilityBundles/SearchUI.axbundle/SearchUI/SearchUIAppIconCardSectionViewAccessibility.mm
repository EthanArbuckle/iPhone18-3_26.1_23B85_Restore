@interface SearchUIAppIconCardSectionViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SearchUIAppIconCardSectionViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(SearchUIAppIconCardSectionViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_1];
  if (v3)
  {
    v4 = [(SearchUIAppIconCardSectionViewAccessibility *)self safeValueForKey:@"folderLabelView"];
    if ([v4 _accessibilityViewIsVisible])
    {
      v5 = MEMORY[0x29EDBA0F8];
      v6 = accessibilityLocalizedString(@"app.located.in");
      accessibilityLabel = [v4 accessibilityLabel];
      v8 = [v5 localizedStringWithFormat:v6, accessibilityLabel];

      accessibilityLabel2 = __UIAXStringForVariables();
    }

    else
    {
      accessibilityLabel2 = [v3 accessibilityLabel];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SearchUIAppIconCardSectionViewAccessibility;
    accessibilityLabel2 = [(SearchUIAppIconCardSectionViewAccessibility *)&v11 accessibilityLabel];
  }

  return accessibilityLabel2;
}

uint64_t __65__SearchUIAppIconCardSectionViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Sbiconview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end