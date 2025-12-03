@interface GKBasePlayerCellAccessibility
- (id)accessibilityLabel;
@end

@implementation GKBasePlayerCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(GKBasePlayerCellAccessibility *)self safeValueForKey:@"nameLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end