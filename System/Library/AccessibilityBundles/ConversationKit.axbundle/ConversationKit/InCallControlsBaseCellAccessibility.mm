@interface InCallControlsBaseCellAccessibility
- (id)accessibilityLabel;
@end

@implementation InCallControlsBaseCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(InCallControlsBaseCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end