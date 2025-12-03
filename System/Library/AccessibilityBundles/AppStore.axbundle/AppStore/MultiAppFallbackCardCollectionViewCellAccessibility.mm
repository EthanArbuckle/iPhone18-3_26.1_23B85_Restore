@interface MultiAppFallbackCardCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation MultiAppFallbackCardCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.MultiAppFallbackCardCollectionViewCell" hasSwiftField:@"infoLayerLabelsView" withSwiftType:"TodayCardLabelsView"];
  [validationsCopy validateClass:@"AppStore.MultiAppFallbackCardCollectionViewCell" hasSwiftField:@"infoLayerOverlayContainer" withSwiftType:"InfoLayerOverlayContainerView"];
  [validationsCopy validateClass:@"AppStore.InfoLayerOverlayContainerView" hasSwiftField:@"overlayView" withSwiftType:"Optional<UIView>"];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MultiAppFallbackCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"infoLayerLabelsView"];
  [array axSafelyAddObject:v4];
  v5 = [(MultiAppFallbackCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"infoLayerOverlayContainer"];
  v6 = [v5 safeSwiftValueForKey:@"overlayView"];
  [array axSafelyAddObject:v6];

  return array;
}

@end