@interface MultiAppFallbackCardCollectionViewCellAccessibility
- (id)accessibilityElements;
@end

@implementation MultiAppFallbackCardCollectionViewCellAccessibility

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