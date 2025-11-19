@interface SearchUIVerticalLayoutCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axCellHasTextContent;
- (id)_axFootnoteLabel;
- (id)_axTitleLabel;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchUIVerticalLayoutCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIVerticalLayoutCardSectionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIVerticalLayoutCardSectionView" hasInstanceMethod:@"footnoteLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIVerticalLayoutCardSectionView" hasInstanceMethod:@"thumbnailView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUITableViewCell" hasInstanceMethod:@"rowModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIRowModel" hasInstanceMethod:@"cardSection" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFVerticalLayoutCardSection" hasInstanceMethod:@"thumbnail" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFPhotosLibraryImage"];
}

- (id)accessibilityLabel
{
  if ([(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axCellHasTextContent])
  {
    v3 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axTitleLabel];
    v6 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axFootnoteLabel];
    v4 = __UIAXStringForVariables();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUIVerticalLayoutCardSectionViewAccessibility;
    v4 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)&v7 accessibilityLabel];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v13.receiver = self;
  v13.super_class = SearchUIVerticalLayoutCardSectionViewAccessibility;
  v3 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)&v13 accessibilityTraits];
  v4 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self safeValueForKey:@"rowModel"];
  v5 = [v4 safeValueForKey:@"cardSection"];
  v6 = [v5 safeValueForKey:@"thumbnail"];
  NSClassFromString(&cfstr_Sfphotoslibrar.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = *MEMORY[0x29EDC7F88] | v3;
  if (isKindOfClass)
  {
    v3 |= *MEMORY[0x29EDC7F88];
  }

  v9 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axCellHasTextContent];
  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (id)_axTitleLabel
{
  v2 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)_axFootnoteLabel
{
  v2 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self safeValueForKey:@"footnoteLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (BOOL)_axCellHasTextContent
{
  v3 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axTitleLabel];
  v4 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];
  v6 = [v5 length];

  v7 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axFootnoteLabel];
  v8 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];
  v10 = v6 | [v9 length];

  return v10 != 0;
}

@end