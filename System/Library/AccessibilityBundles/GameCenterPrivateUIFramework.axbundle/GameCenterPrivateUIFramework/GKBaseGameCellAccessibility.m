@interface GKBaseGameCellAccessibility
- (id)accessibilityLabel;
@end

@implementation GKBaseGameCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(GKBaseGameCellAccessibility *)self safeValueForKey:@"nameLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end