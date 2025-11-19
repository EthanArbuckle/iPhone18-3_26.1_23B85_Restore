@interface MultiShowEpisodeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axPlayPauseButton;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation MultiShowEpisodeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.MultiShowEpisodeCell" hasInstanceMethod:@"accessibilityEpisodeInfoView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.MultiShowEpisodeCell" hasInstanceMethod:@"accessibilityPlayControlsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeInfoView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeInfoView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.PlayControlsStackView" hasInstanceMethod:@"accessibilityNewPlayPauseButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.PlayControlsStackView" hasInstanceMethod:@"accessibilityEpisodeStateControls" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeStateControlsStackView" hasInstanceMethod:@"accessibilityMoreButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.CachingArtworkView"];
  [v3 validateClass:@"ShelfKitCollectionViews.CachingArtworkView" isKindOfClass:@"ArtworkView"];
  [v3 validateClass:@"ShelfKitCollectionViews.ArtworkView" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.MultiShowEpisodeCell" hasSwiftField:@"internalArtworkView" withSwiftType:"Optional<CachingArtworkView>"];
}

- (id)accessibilityLabel
{
  v3 = [(MultiShowEpisodeCellAccessibility *)self safeSwiftValueForKey:@"internalArtworkView"];
  v4 = [v3 safeValueForKey:@"accessibilityTitle"];
  v8 = [(MultiShowEpisodeCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityEpisodeInfoView, accessibilityPlayControlsView"];
  v5 = __UIAXStringForVariables();
  v6 = accessibilityStripUnfavorableCharacters(v5);

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MultiShowEpisodeCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MultiShowEpisodeCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomContent
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MultiShowEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityEpisodeInfoView.accessibilityDescriptionLabel"];
  v5 = [v4 accessibilityLabel];

  if ([v5 length])
  {
    v6 = MEMORY[0x29EDB8058];
    v7 = accessibilityLocalizedString(@"summary.title");
    v8 = [v6 customContentWithLabel:v7 value:v5];

    [v3 axSafelyAddObject:v8];
  }

  return v3;
}

- (id)_axPlayPauseButton
{
  v3 = [(MultiShowEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityPlayControlsView.accessibilityNewPlayPauseButton"];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __55__MultiShowEpisodeCellAccessibility__axPlayPauseButton__block_invoke;
  v5[3] = &unk_29F2EA198;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityValueBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __55__MultiShowEpisodeCellAccessibility__axPlayPauseButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKeyPath:@"accessibilityEpisodeInfoView.accessibilityTitleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = MultiShowEpisodeCellAccessibility;
  v4 = [(MultiShowEpisodeCellAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(MultiShowEpisodeCellAccessibility *)self _axPlayPauseButton];
  if ([v5 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v5];
  }

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(MultiShowEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityPlayControlsView.accessibilityEpisodeStateControls.accessibilityMoreButton"];
  objc_initWeak(&location, v4);

  v5 = objc_loadWeakRetained(&location);
  v6 = [v5 _accessibilityViewIsVisible];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = accessibilityLocalizedString(@"more.button");
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = __63__MultiShowEpisodeCellAccessibility_accessibilityCustomActions__block_invoke_2;
    v18 = &unk_29F2EA1C0;
    objc_copyWeak(&v19, &location);
    v9 = [v7 initWithName:v8 actionHandler:&v15];
    [v3 axSafelyAddObject:{v9, v15, v16, v17, v18}];

    p_from = &v19;
  }

  else
  {
    objc_initWeak(&from, self);
    v11 = objc_alloc(MEMORY[0x29EDC78E0]);
    v12 = accessibilityLocalizedString(@"show.context.menu");
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = __63__MultiShowEpisodeCellAccessibility_accessibilityCustomActions__block_invoke;
    v20[3] = &unk_29F2EA1C0;
    objc_copyWeak(&v21, &from);
    v13 = [v11 initWithName:v12 actionHandler:v20];

    [v3 axSafelyAddObject:v13];
    objc_destroyWeak(&v21);
    p_from = &from;
  }

  objc_destroyWeak(p_from);
  objc_destroyWeak(&location);

  return v3;
}

uint64_t __63__MultiShowEpisodeCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityShowContextMenuForElement:WeakRetained targetPointValue:0];

  return 1;
}

uint64_t __63__MultiShowEpisodeCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityShowContextMenuForElement:WeakRetained targetPointValue:0];

  return 1;
}

- (id)automationElements
{
  v11.receiver = self;
  v11.super_class = MultiShowEpisodeCellAccessibility;
  v3 = [(MultiShowEpisodeCellAccessibility *)&v11 automationElements];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = v6;

  v8 = [(MultiShowEpisodeCellAccessibility *)self _axPlayPauseButton];
  [v7 axSafelyAddObject:v8];

  v9 = [(MultiShowEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityPlayControlsView.accessibilityEpisodeStateControls.accessibilityMoreButton"];
  [v7 axSafelyAddObject:v9];

  return v7;
}

@end