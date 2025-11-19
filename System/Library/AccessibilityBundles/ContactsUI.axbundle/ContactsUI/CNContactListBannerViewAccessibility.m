@interface CNContactListBannerViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CNContactListBannerViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(CNContactListBannerViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_5];
  v3 = AXLabelForElements();

  return v3;
}

uint64_t __58__CNContactListBannerViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end