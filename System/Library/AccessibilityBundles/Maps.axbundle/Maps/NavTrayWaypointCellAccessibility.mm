@interface NavTrayWaypointCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NavTrayWaypointCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Maps.NavTrayWaypointCell" hasSwiftField:@"title" withSwiftType:"Optional<String>"];
  [validationsCopy validateClass:@"Maps.NavTrayWaypointCell" hasSwiftField:@"etaString" withSwiftType:"Optional<String>"];
}

- (id)accessibilityLabel
{
  v3 = [(NavTrayWaypointCellAccessibility *)self safeSwiftValueForKey:@"title"];
  v6 = [(NavTrayWaypointCellAccessibility *)self safeSwiftValueForKey:@"etaString"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end