@interface PSGCarrierRejectCodePaneAccessibility
- (id)accessibilityLabel;
@end

@implementation PSGCarrierRejectCodePaneAccessibility

- (id)accessibilityLabel
{
  v2 = [(PSGCarrierRejectCodePaneAccessibility *)self safeValueForKey:@"_rejectMessage"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end