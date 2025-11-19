@interface EpisodeContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axCollectionView;
- (id)_axSeasonPicker;
- (id)accessibilityElements;
@end

@implementation EpisodeContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.EpisodeCollectionViewController" hasSwiftField:@"viewModel" withSwiftType:"EpisodeCollectionViewModel"];
  [v3 validateClass:@"VideosUI.EpisodeCollectionViewController" hasSwiftField:@"collectionView" withSwiftType:"UICollectionView"];
  [v3 validateClass:@"VideosUI.EpisodeCollectionViewController" hasSwiftField:@"headerView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.EpisodeSectionHeaderView" hasSwiftField:@"buttonView" withSwiftType:"Optional<SeasonPickerButton>"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(EpisodeContainerViewAccessibility *)self _axSeasonPicker];
  [v3 axSafelyAddObject:v4];

  v5 = [(EpisodeContainerViewAccessibility *)self _axCollectionView];
  [v3 axSafelyAddObject:v5];

  return v3;
}

- (id)_axCollectionView
{
  objc_opt_class();
  v3 = [(EpisodeContainerViewAccessibility *)self safeSwiftValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)_axSeasonPicker
{
  v2 = [(EpisodeContainerViewAccessibility *)self safeSwiftValueForKey:@"headerView"];
  v3 = [v2 safeSwiftValueForKey:@"buttonView"];

  return v3;
}

@end