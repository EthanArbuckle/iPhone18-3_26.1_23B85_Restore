@interface MRUMediaSuggestionCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MRUMediaSuggestionCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUMediaSuggestionCollectionViewCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUMediaSuggestionCollectionViewCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UICollectionViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MRUMediaSuggestionCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"MRUMediaSuggestionCollectionViewCell" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUArtworkView" hasInstanceMethod:@"iconImage" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MRUMediaSuggestionCollectionViewCellAccessibility *)self safeValueForKey:@"artworkView"];
  v4 = [v3 safeValueForKey:@"iconImage"];
  v5 = [v4 accessibilityLabel];

  if ([v5 length])
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"media.source.app.description");
    v8 = [v6 localizedStringWithFormat:v7, v5];
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
    v3 = accessibilityLocalizedString(@"media.item.loading");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MRUMediaSuggestionCollectionViewCellAccessibility;
    v3 = [(MRUMediaSuggestionCollectionViewCellAccessibility *)&v5 accessibilityValue];
  }

  return v3;
}

@end