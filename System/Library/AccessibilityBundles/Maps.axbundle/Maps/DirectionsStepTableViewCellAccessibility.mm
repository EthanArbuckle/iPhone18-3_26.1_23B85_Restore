@interface DirectionsStepTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axRoadDescriptionLabel;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateRoadDescriptionListView;
@end

@implementation DirectionsStepTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DirectionsStepTableViewCell" hasInstanceVariable:@"_stepView" withType:"DirectionsStepView"];
  [validationsCopy validateClass:@"DirectionsStepView" hasInstanceVariable:@"_labelListView" withType:"RouteStepLabelListView"];
  [validationsCopy validateClass:@"DirectionsStepView" hasInstanceVariable:@"_roadDescriptionLabel" withType:"MKMultiPartLabel"];
  [validationsCopy validateClass:@"DirectionsStepView" hasInstanceMethod:@"setRoute:step:stepIndex:alignToLeftEdgeIfNoManeuverSign:size:" withFullSignature:{"v", "@", "@", "Q", "B", "q", 0}];
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
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityLabel
{
  _axStepView = [(DirectionsStepTableViewCellAccessibility *)self _axStepView];
  v4 = [_axStepView safeValueForKey:@"_labelListView"];
  accessibilityLabel = [v4 accessibilityLabel];
  _axRoadDescriptionLabel = [(DirectionsStepTableViewCellAccessibility *)self _axRoadDescriptionLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end