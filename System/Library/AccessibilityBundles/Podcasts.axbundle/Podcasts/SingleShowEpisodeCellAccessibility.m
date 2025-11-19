@interface SingleShowEpisodeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axPlayPauseButton;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityUserInputLabels;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation SingleShowEpisodeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.SingleShowEpisodeCell" hasInstanceMethod:@"accessibilityEpisodeInfoView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.SingleShowEpisodeCell" hasInstanceMethod:@"accessibilityPlayControlsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeInfoView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeInfoView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.PlayControlsStackView" hasInstanceMethod:@"accessibilityNewPlayPauseButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.PlayControlsStackView" hasInstanceMethod:@"accessibilityEpisodeStateControls" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeStateControlsStackView" hasInstanceMethod:@"accessibilityMoreButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityUserInputLabels
{
  v3 = [(SingleShowEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityEpisodeInfoView.accessibilityTitleLabel"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length])
  {
    v5 = MEMORY[0x29C2E7860](v4);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SingleShowEpisodeCellAccessibility;
    v6 = [(SingleShowEpisodeCellAccessibility *)&v8 accessibilityLabel];
    v5 = MEMORY[0x29C2E7860]();
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SingleShowEpisodeCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SingleShowEpisodeCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomContent
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SingleShowEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityEpisodeInfoView.accessibilityDescriptionLabel"];
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
  v3 = [(SingleShowEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityPlayControlsView.accessibilityNewPlayPauseButton"];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __56__SingleShowEpisodeCellAccessibility__axPlayPauseButton__block_invoke;
  v5[3] = &unk_29F2EA198;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityValueBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __56__SingleShowEpisodeCellAccessibility__axPlayPauseButton__block_invoke(uint64_t a1)
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
  v7.super_class = SingleShowEpisodeCellAccessibility;
  v4 = [(SingleShowEpisodeCellAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(SingleShowEpisodeCellAccessibility *)self _axPlayPauseButton];
  if ([v5 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v5];
  }

  return v3;
}

- (id)accessibilityCustomActions
{
  v17[1] = *MEMORY[0x29EDCA608];
  v2 = [(SingleShowEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityPlayControlsView.accessibilityEpisodeStateControls.accessibilityMoreButton"];
  objc_initWeak(&location, v2);

  v3 = objc_loadWeakRetained(&location);
  v4 = [v3 _accessibilityViewIsVisible];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"more.button");
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = __64__SingleShowEpisodeCellAccessibility_accessibilityCustomActions__block_invoke;
    v14 = &unk_29F2EA1C0;
    objc_copyWeak(&v15, &location);
    v7 = [v5 initWithName:v6 actionHandler:&v11];
    v17[0] = v7;
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v17 count:{1, v11, v12, v13, v14}];

    objc_destroyWeak(&v15);
  }

  else
  {
    v8 = 0;
  }

  objc_destroyWeak(&location);
  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

uint64_t __64__SingleShowEpisodeCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityShowContextMenuForElement:WeakRetained targetPointValue:0];

  return 1;
}

- (id)automationElements
{
  v11.receiver = self;
  v11.super_class = SingleShowEpisodeCellAccessibility;
  v3 = [(SingleShowEpisodeCellAccessibility *)&v11 automationElements];
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

  v8 = [(SingleShowEpisodeCellAccessibility *)self _axPlayPauseButton];
  [v7 axSafelyAddObject:v8];

  v9 = [(SingleShowEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityPlayControlsView.accessibilityEpisodeStateControls.accessibilityMoreButton"];
  [v7 axSafelyAddObject:v9];

  return v7;
}

@end