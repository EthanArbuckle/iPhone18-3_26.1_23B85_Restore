@interface MultiAppFallbackCardCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation MultiAppFallbackCardCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.MultiAppFallbackCardCollectionViewCell" hasSwiftField:@"infoLayerLabelsView" withSwiftType:"TodayCardLabelsView"];
  [v3 validateClass:@"AppStore.MultiAppFallbackCardCollectionViewCell" hasSwiftField:@"infoLayerOverlayContainer" withSwiftType:"InfoLayerOverlayContainerView"];
  [v3 validateClass:@"AppStore.InfoLayerOverlayContainerView" hasSwiftField:@"overlayView" withSwiftType:"Optional<UIView>"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MultiAppFallbackCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"infoLayerLabelsView"];
  [v3 axSafelyAddObject:v4];
  v5 = [(MultiAppFallbackCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"infoLayerOverlayContainer"];
  v6 = [v5 safeSwiftValueForKey:@"overlayView"];
  [v3 axSafelyAddObject:v6];

  return v3;
}

@end