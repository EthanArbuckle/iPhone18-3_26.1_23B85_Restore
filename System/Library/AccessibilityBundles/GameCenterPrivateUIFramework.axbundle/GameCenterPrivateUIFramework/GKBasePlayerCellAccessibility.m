@interface GKBasePlayerCellAccessibility
- (id)accessibilityLabel;
@end

@implementation GKBasePlayerCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(GKBasePlayerCellAccessibility *)self safeValueForKey:@"nameLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end