@interface SearchUIRowCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyTrailingImageView:(id)view;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIRowCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIRowCardSectionView" isKindOfClass:@"SearchUICardSectionView"];
  [validationsCopy validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"section" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIRowCardSectionView" isKindOfClass:@"SearchUICardSectionView"];
  [validationsCopy validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"rowModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKSimpleRowView" hasInstanceMethod:@"trailingImageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _accessibleSubviews = [(SearchUIRowCardSectionViewAccessibility *)self _accessibleSubviews];
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

- (void)_axApplyTrailingImageView:(id)view
{
  v21 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  NSClassFromString(&cfstr_Searchuicardse_2.isa);
  if (objc_opt_isKindOfClass())
  {
    cardSection = [viewCopy cardSection];
    punchoutOptions = [cardSection punchoutOptions];
    firstObject = [punchoutOptions firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];

    if (!bundleIdentifier)
    {
      image = [cardSection image];
      NSClassFromString(&cfstr_Sfappiconimage.isa);
      if (objc_opt_isKindOfClass())
      {
        if ([image iconType] == 1)
        {
          bundleIdentifier = @"web-browser";
        }

        else
        {
          bundleIdentifier = 0;
        }
      }

      else
      {
        bundleIdentifier = 0;
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
    [v11 setAccessibilityIdentifier:bundleIdentifier];
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (void)updateWithRowModel:(id)model
{
  v5.receiver = self;
  v5.super_class = SearchUIRowCardSectionViewAccessibility;
  modelCopy = model;
  [(SearchUIRowCardSectionViewAccessibility *)&v5 updateWithRowModel:modelCopy];
  [(SearchUIRowCardSectionViewAccessibility *)self _axApplyTrailingImageView:modelCopy, v5.receiver, v5.super_class];
}

@end