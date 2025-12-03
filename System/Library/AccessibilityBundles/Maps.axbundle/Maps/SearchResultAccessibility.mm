@interface SearchResultAccessibility
- (id)accessibilityLabel;
@end

@implementation SearchResultAccessibility

- (id)accessibilityLabel
{
  v3 = [(SearchResultAccessibility *)self safeValueForKey:@"infoCardTitle"];
  v4 = [(SearchResultAccessibility *)self safeValueForKey:@"locationTitle"];
  if ([v3 isEqualToString:v4])
  {
    v5 = v3;
  }

  else
  {
    v12 = v4;
    v13 = @"__AXStringForVariablesSentinel";
    v5 = __UIAXStringForVariables();
  }

  v6 = v5;
  v7 = [(SearchResultAccessibility *)self safeValueForKey:@"appearance", v12, v13];
  integerValue = [v7 integerValue];

  if (integerValue == 2)
  {
    v9 = AXMapsLocString(@"ROUTE_ORIGIN");
    v10 = __UIAXStringForVariables();

    v6 = v10;
  }

  return v6;
}

@end