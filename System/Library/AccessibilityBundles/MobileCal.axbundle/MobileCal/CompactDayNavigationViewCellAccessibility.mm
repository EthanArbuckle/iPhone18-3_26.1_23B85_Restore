@interface CompactDayNavigationViewCellAccessibility
- (id)accessibilityUserInputLabels;
@end

@implementation CompactDayNavigationViewCellAccessibility

- (id)accessibilityUserInputLabels
{
  v2 = [(CompactDayNavigationViewCellAccessibility *)self safeStringForKey:@"_displayString"];
  v3 = MEMORY[0x29C2DF2E0]();

  return v3;
}

@end