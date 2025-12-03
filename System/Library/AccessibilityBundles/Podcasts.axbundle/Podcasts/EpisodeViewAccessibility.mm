@interface EpisodeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation EpisodeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.EpisodeView" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.EpisodeView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.EpisodeView" hasInstanceMethod:@"accessibilitySummaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.EpisodeView" hasInstanceMethod:@"accessibilityArtworkView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.EpisodeView" hasInstanceMethod:@"accessibilityDurationLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ArtworkView" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityArtworkView"];
  v4 = [v3 safeValueForKey:@"accessibilityTitle"];
  v5 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityCaptionLabel"];
  accessibilityLabel = [v5 accessibilityLabel];
  v7 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  accessibilityLabel2 = [v7 accessibilityLabel];
  v9 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityDurationLabel"];
  accessibilityLabel3 = [v9 accessibilityLabel];
  v11 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityArtworkView"];
  if ([v11 _accessibilityViewIsVisible])
  {
    [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityArtworkView"];
    v12 = v17 = v5;
    accessibilityLabel4 = [v12 accessibilityLabel];
    v13 = __UIAXStringForVariables();

    v5 = v17;
  }

  else
  {
    v13 = __UIAXStringForVariables();
  }

  v14 = accessibilityStripUnfavorableCharacters(v13);

  return v14;
}

- (id)accessibilityCustomContent
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilitySummaryLabel"];
  accessibilityLabel = [v4 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v6 = MEMORY[0x29EDB8058];
    v7 = accessibilityLocalizedString(@"summary.title");
    v8 = [v6 customContentWithLabel:v7 value:accessibilityLabel];

    [array addObject:v8];
  }

  return array;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(EpisodeViewAccessibility *)self _accessibilityViewAncestorIsKindOf:MEMORY[0x29C2E7850](@"ShelfKitCollectionViews.EpisodeCollectionViewCell", a2)];

  v3 = MEMORY[0x29EDC7F70];
  if (v2)
  {
    v3 = MEMORY[0x29EDC7FA0];
  }

  return *v3;
}

@end