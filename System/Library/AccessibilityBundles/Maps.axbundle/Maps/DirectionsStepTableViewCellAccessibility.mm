@interface DirectionsStepTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axRoadDescriptionLabel;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateRoadDescriptionListView;
@end

@implementation DirectionsStepTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DirectionsStepTableViewCell" hasInstanceVariable:@"_stepView" withType:"DirectionsStepView"];
  [v3 validateClass:@"DirectionsStepView" hasInstanceVariable:@"_labelListView" withType:"RouteStepLabelListView"];
  [v3 validateClass:@"DirectionsStepView" hasInstanceVariable:@"_roadDescriptionLabel" withType:"MKMultiPartLabel"];
  [v3 validateClass:@"DirectionsStepView" hasInstanceMethod:@"setRoute:step:stepIndex:alignToLeftEdgeIfNoManeuverSign:size:" withFullSignature:{"v", "@", "@", "Q", "B", "q", 0}];
}

- (void)_axAnnotateRoadDescriptionListView
{
  v2 = [(DirectionsStepTableViewCellAccessibility *)self safeUIViewForKey:@"_roadDescriptionLabel"];
  [v2 setAccessibilityElementsHidden:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = DirectionsStepTableViewCellAccessibility;
  [(DirectionsStepTableViewCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(DirectionsStepTableViewCellAccessibility *)self _axAnnotateRoadDescriptionListView];
}

- (id)_axRoadDescriptionLabel
{
  v2 = [(DirectionsStepTableViewCellAccessibility *)self safeUIViewForKey:@"_roadDescriptionLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(DirectionsStepTableViewCellAccessibility *)self _axStepView];
  v4 = [v3 safeValueForKey:@"_labelListView"];
  v5 = [v4 accessibilityLabel];
  v8 = [(DirectionsStepTableViewCellAccessibility *)self _axRoadDescriptionLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end