@interface InCallControlsBaseCellAccessibility
- (id)accessibilityLabel;
@end

@implementation InCallControlsBaseCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(InCallControlsBaseCellAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end