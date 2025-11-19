@interface SearchUIRichTitleCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SearchUIRichTitleCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKHeaderView"];
  [v3 validateClass:@"SearchUIButtonItemView"];
  [v3 validateClass:@"SearchUIRichTitleCardSectionView" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKHeaderView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKHeaderView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKHeaderView" hasInstanceMethod:@"trailingText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKHeaderView" hasInstanceMethod:@"footnote" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKHeaderView" hasInstanceMethod:@"roundedBorderText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUIRichTitleCardSectionViewAccessibility *)self safeValueForKey:@"headerView"];
  v3 = [v2 safeValueForKey:@"title"];
  v4 = [v3 safeStringForKey:@"text"];

  v5 = [v2 safeValueForKey:@"subtitle"];
  v6 = [v5 safeStringForKey:@"text"];

  v7 = [v2 safeValueForKey:@"trailingText"];
  v8 = [v7 safeStringForKey:@"text"];

  v9 = [v2 safeValueForKey:@"footnote"];
  v10 = [v9 safeStringForKey:@"footnote"];

  v13 = [v2 safeStringForKey:@"roundedBorderText"];
  v11 = __UIAXStringForVariables();

  return v11;
}

uint64_t __87__SearchUIRichTitleCardSectionViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Searchuibutton_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end