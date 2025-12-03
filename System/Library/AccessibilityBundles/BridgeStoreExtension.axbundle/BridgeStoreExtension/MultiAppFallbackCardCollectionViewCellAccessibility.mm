@interface MultiAppFallbackCardCollectionViewCellAccessibility
- (id)accessibilityElements;
@end

@implementation MultiAppFallbackCardCollectionViewCellAccessibility

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