@interface PSGCarrierRejectCodePaneAccessibility
- (id)accessibilityLabel;
@end

@implementation PSGCarrierRejectCodePaneAccessibility

- (id)accessibilityLabel
{
  v2 = [(PSGCarrierRejectCodePaneAccessibility *)self safeValueForKey:@"_rejectMessage"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end