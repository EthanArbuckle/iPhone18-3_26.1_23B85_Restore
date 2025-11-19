@interface EpisodeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation EpisodeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeView" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeView" hasInstanceMethod:@"accessibilitySummaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeView" hasInstanceMethod:@"accessibilityArtworkView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeView" hasInstanceMethod:@"accessibilityDurationLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.ArtworkView" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityArtworkView"];
  v4 = [v3 safeValueForKey:@"accessibilityTitle"];
  v5 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityCaptionLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v8 = [v7 accessibilityLabel];
  v9 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityDurationLabel"];
  v10 = [v9 accessibilityLabel];
  v11 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityArtworkView"];
  if ([v11 _accessibilityViewIsVisible])
  {
    [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilityArtworkView"];
    v12 = v17 = v5;
    v16 = [v12 accessibilityLabel];
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
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(EpisodeViewAccessibility *)self safeValueForKey:@"accessibilitySummaryLabel"];
  v5 = [v4 accessibilityLabel];

  if ([v5 length])
  {
    v6 = MEMORY[0x29EDB8058];
    v7 = accessibilityLocalizedString(@"summary.title");
    v8 = [v6 customContentWithLabel:v7 value:v5];

    [v3 addObject:v8];
  }

  return v3;
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