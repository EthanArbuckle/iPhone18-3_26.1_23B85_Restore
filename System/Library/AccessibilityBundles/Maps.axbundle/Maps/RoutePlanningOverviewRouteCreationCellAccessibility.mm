@interface RoutePlanningOverviewRouteCreationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation RoutePlanningOverviewRouteCreationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RoutePlanningOverviewRouteCreationCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"RoutePlanningOverviewRouteCreationCell" hasInstanceVariable:@"_bodyLabel" withType:"UILabel"];
}

@end