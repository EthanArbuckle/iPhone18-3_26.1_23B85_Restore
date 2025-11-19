@interface SearchUIRowCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyTrailingImageView:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIRowCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIRowCardSectionView" isKindOfClass:@"SearchUICardSectionView"];
  [v3 validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"section" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIRowCardSectionView" isKindOfClass:@"SearchUICardSectionView"];
  [v3 validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"rowModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKSimpleRowView" hasInstanceMethod:@"trailingImageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUIRowCardSectionViewAccessibility *)self _accessibleSubviews];
  v3 = MEMORY[0x29ED341C0]();

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SearchUIRowCardSectionViewAccessibility;
  [(SearchUIRowCardSectionViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SearchUIRowCardSectionViewAccessibility *)self safeValueForKey:@"rowModel"];
  [(SearchUIRowCardSectionViewAccessibility *)self _axApplyTrailingImageView:v3];
}

- (void)_axApplyTrailingImageView:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a3;
  NSClassFromString(&cfstr_Searchuicardse_2.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 cardSection];
    v6 = [v5 punchoutOptions];
    v7 = [v6 firstObject];
    v8 = [v7 bundleIdentifier];

    if (!v8)
    {
      v9 = [v5 image];
      NSClassFromString(&cfstr_Sfappiconimage.isa);
      if (objc_opt_isKindOfClass())
      {
        if ([v9 iconType] == 1)
        {
          v8 = @"web-browser";
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    v10 = [(SearchUIRowCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
    v11 = [v10 safeUIViewForKey:@"trailingImageView"];

    v12 = AXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(SearchUIRowCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
      v14 = [(SearchUIRowCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
      v15 = [v14 safeUIViewForKey:@"trailingImageView"];
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_29C2F6000, v12, OS_LOG_TYPE_DEFAULT, "TRAILER: %@ %@", &v17, 0x16u);
    }

    [v11 setIsAccessibilityElement:v11 != 0];
    [v11 setAccessibilityIdentifier:v8];
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (void)updateWithRowModel:(id)a3
{
  v5.receiver = self;
  v5.super_class = SearchUIRowCardSectionViewAccessibility;
  v4 = a3;
  [(SearchUIRowCardSectionViewAccessibility *)&v5 updateWithRowModel:v4];
  [(SearchUIRowCardSectionViewAccessibility *)self _axApplyTrailingImageView:v4, v5.receiver, v5.super_class];
}

@end