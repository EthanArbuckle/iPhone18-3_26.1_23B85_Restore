@interface TransitSchedulesStopViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation TransitSchedulesStopViewCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(TransitSchedulesStopViewCellAccessibility *)self safeValueForKey:@"departureTimeColor"];
  v4 = [(TransitSchedulesStopViewCellAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0];
  v5 = [MEMORY[0x29EDC7A00] systemRedColor];

  if (v3 == v5)
  {
    v8 = AXMapKitLocString(@"DELAYED_TRANSIT");
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

@end