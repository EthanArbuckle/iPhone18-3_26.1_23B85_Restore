@interface GKBaseGameCellAccessibility
- (id)accessibilityLabel;
@end

@implementation GKBaseGameCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(GKBaseGameCellAccessibility *)self safeValueForKey:@"nameLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end