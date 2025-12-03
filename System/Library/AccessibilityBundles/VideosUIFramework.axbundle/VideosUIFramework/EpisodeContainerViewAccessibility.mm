@interface EpisodeContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axCollectionView;
- (id)_axSeasonPicker;
- (id)accessibilityElements;
@end

@implementation EpisodeContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.EpisodeCollectionViewController" hasSwiftField:@"viewModel" withSwiftType:"EpisodeCollectionViewModel"];
  [validationsCopy validateClass:@"VideosUI.EpisodeCollectionViewController" hasSwiftField:@"collectionView" withSwiftType:"UICollectionView"];
  [validationsCopy validateClass:@"VideosUI.EpisodeCollectionViewController" hasSwiftField:@"headerView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.EpisodeSectionHeaderView" hasSwiftField:@"buttonView" withSwiftType:"Optional<SeasonPickerButton>"];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  _axSeasonPicker = [(EpisodeContainerViewAccessibility *)self _axSeasonPicker];
  [array axSafelyAddObject:_axSeasonPicker];

  _axCollectionView = [(EpisodeContainerViewAccessibility *)self _axCollectionView];
  [array axSafelyAddObject:_axCollectionView];

  return array;
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