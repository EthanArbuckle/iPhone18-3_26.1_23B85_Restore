@interface SearchUIVerticalLayoutCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axCellHasTextContent;
- (id)_axFootnoteLabel;
- (id)_axTitleLabel;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchUIVerticalLayoutCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIVerticalLayoutCardSectionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIVerticalLayoutCardSectionView" hasInstanceMethod:@"footnoteLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIVerticalLayoutCardSectionView" hasInstanceMethod:@"thumbnailView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUITableViewCell" hasInstanceMethod:@"rowModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIRowModel" hasInstanceMethod:@"cardSection" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFVerticalLayoutCardSection" hasInstanceMethod:@"thumbnail" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFPhotosLibraryImage"];
}

- (id)accessibilityLabel
{
  if ([(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axCellHasTextContent])
  {
    _axTitleLabel = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axTitleLabel];
    _axFootnoteLabel = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axFootnoteLabel];
    accessibilityLabel = __UIAXStringForVariables();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUIVerticalLayoutCardSectionViewAccessibility;
    accessibilityLabel = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v13.receiver = self;
  v13.super_class = SearchUIVerticalLayoutCardSectionViewAccessibility;
  accessibilityTraits = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)&v13 accessibilityTraits];
  v4 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self safeValueForKey:@"rowModel"];
  v5 = [v4 safeValueForKey:@"cardSection"];
  v6 = [v5 safeValueForKey:@"thumbnail"];
  NSClassFromString(&cfstr_Sfphotoslibrar.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = *MEMORY[0x29EDC7F88] | accessibilityTraits;
  if (isKindOfClass)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7F88];
  }

  _axCellHasTextContent = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axCellHasTextContent];
  if (v6)
  {
    v10 = _axCellHasTextContent;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = accessibilityTraits;
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
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)_axFootnoteLabel
{
  v2 = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self safeValueForKey:@"footnoteLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (BOOL)_axCellHasTextContent
{
  _axTitleLabel = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axTitleLabel];
  whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v5 = [_axTitleLabel stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v6 = [v5 length];

  _axFootnoteLabel = [(SearchUIVerticalLayoutCardSectionViewAccessibility *)self _axFootnoteLabel];
  whitespaceCharacterSet2 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v9 = [_axFootnoteLabel stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
  v10 = v6 | [v9 length];

  return v10 != 0;
}

@end