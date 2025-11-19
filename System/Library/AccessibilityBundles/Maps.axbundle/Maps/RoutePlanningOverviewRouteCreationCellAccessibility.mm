@interface RoutePlanningOverviewRouteCreationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation RoutePlanningOverviewRouteCreationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RoutePlanningOverviewRouteCreationCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"RoutePlanningOverviewRouteCreationCell" hasInstanceVariable:@"_bodyLabel" withType:"UILabel"];
}

@end