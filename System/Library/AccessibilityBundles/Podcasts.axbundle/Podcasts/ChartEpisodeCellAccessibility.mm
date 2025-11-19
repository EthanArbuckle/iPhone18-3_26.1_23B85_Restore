@interface ChartEpisodeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation ChartEpisodeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.ChartEpisodeCell" hasInstanceMethod:@"accessibilityMoreButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.ChartEpisodeCell" hasInstanceMethod:@"accessibilityInternalArtworkView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.ChartEpisodeCell" hasInstanceMethod:@"accessibilityOrdinalLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.DynamicContextMenuButton" hasInstanceMethod:@"accessibilityButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.ChartEpisodeCell" hasSwiftField:@"episodeInfoView" withSwiftType:"Optional<EpisodeInfoView>"];
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(ChartEpisodeCellAccessibility *)self safeValueForKey:@"accessibilityOrdinalLabel"];
  v5 = [(ChartEpisodeCellAccessibility *)self safeSwiftValueForKey:@"episodeInfoView"];
  [v3 axSafelyAddObject:v4];
  [v3 axSafelyAddObject:v5];
  v6 = MEMORY[0x29C2E7870](v3);

  return v6;
}

- (id)accessibilityCustomActions
{
  v17[1] = *MEMORY[0x29EDCA608];
  v2 = [(ChartEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityMoreButton.accessibilityButton"];
  objc_initWeak(&location, v2);

  v3 = objc_loadWeakRetained(&location);
  v4 = [v3 _accessibilityViewIsVisible];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"more.button");
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = __59__ChartEpisodeCellAccessibility_accessibilityCustomActions__block_invoke;
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

uint64_t __59__ChartEpisodeCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityShowContextMenuForElement:WeakRetained targetPointValue:0];

  return 1;
}

- (id)automationElements
{
  v12.receiver = self;
  v12.super_class = ChartEpisodeCellAccessibility;
  v3 = [(ChartEpisodeCellAccessibility *)&v12 automationElements];
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

  v8 = [(ChartEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityMoreButton.accessibilityButton"];
  [v7 axSafelyAddObject:v8];

  v9 = [(ChartEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityInternalArtworkView"];
  [v7 axSafelyAddObject:v9];

  v10 = [(ChartEpisodeCellAccessibility *)self safeValueForKeyPath:@"accessibilityOrdinalLabel"];
  [v7 axSafelyAddObject:v10];

  return v7;
}

@end