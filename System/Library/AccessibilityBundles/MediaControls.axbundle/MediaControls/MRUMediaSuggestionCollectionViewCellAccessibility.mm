@interface MRUMediaSuggestionCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MRUMediaSuggestionCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUMediaSuggestionCollectionViewCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUMediaSuggestionCollectionViewCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MRUMediaSuggestionCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"MRUMediaSuggestionCollectionViewCell" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUArtworkView" hasInstanceMethod:@"iconImage" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MRUMediaSuggestionCollectionViewCellAccessibility *)self safeValueForKey:@"artworkView"];
  v4 = [v3 safeValueForKey:@"iconImage"];
  accessibilityLabel = [v4 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"media.source.app.description");
    v8 = [v6 localizedStringWithFormat:v7, accessibilityLabel];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MRUMediaSuggestionCollectionViewCellAccessibility *)self safeValueForKey:@"title"];
  v12 = [(MRUMediaSuggestionCollectionViewCellAccessibility *)self safeValueForKey:@"subtitle"];
  v10 = __UIAXStringForVariables();

  return v10;
}

- (id)accessibilityValue
{
  if ([(MRUMediaSuggestionCollectionViewCellAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    accessibilityValue = accessibilityLocalizedString(@"media.item.loading");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MRUMediaSuggestionCollectionViewCellAccessibility;
    accessibilityValue = [(MRUMediaSuggestionCollectionViewCellAccessibility *)&v5 accessibilityValue];
  }

  return accessibilityValue;
}

@end