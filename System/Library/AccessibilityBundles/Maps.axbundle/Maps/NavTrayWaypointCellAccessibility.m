@interface NavTrayWaypointCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NavTrayWaypointCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Maps.NavTrayWaypointCell" hasSwiftField:@"title" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"Maps.NavTrayWaypointCell" hasSwiftField:@"etaString" withSwiftType:"Optional<String>"];
}

- (id)accessibilityLabel
{
  v3 = [(NavTrayWaypointCellAccessibility *)self safeSwiftValueForKey:@"title"];
  v6 = [(NavTrayWaypointCellAccessibility *)self safeSwiftValueForKey:@"etaString"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end