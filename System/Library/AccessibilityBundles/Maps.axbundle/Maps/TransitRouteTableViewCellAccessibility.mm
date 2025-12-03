@interface TransitRouteTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)tableTextAccessibleLabel:(id)label;
@end

@implementation TransitRouteTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TransitRouteTableViewCell" hasInstanceVariable:@"_route" withType:"GEOComposedRoute"];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"tableTextAccessibleLabel:" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TransitRouteTableViewCell" isKindOfClass:@"RouteTableViewCell"];
  [validationsCopy validateClass:@"RouteTableViewCell" hasInstanceMethod:@"useRoutePreviewDescription" withFullSignature:{"B", 0}];
}

- (id)tableTextAccessibleLabel:(id)label
{
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = TransitRouteTableViewCellAccessibility;
  v5 = [(TransitRouteTableViewCellAccessibility *)&v12 tableTextAccessibleLabel:labelCopy];
  objc_opt_class();
  v6 = [(TransitRouteTableViewCellAccessibility *)self safeValueForKey:@"_route"];
  v7 = __UIAccessibilityCastAsClass();

  _accessibilityTransitArtworkText = [v7 _accessibilityTransitArtworkText];

  v9 = __AXStringForVariables();

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v10 = [v9 stringByReplacingOccurrencesOfString:@"·" withString:{@", ", v5, @"__AXStringForVariablesSentinel"}];

    v9 = v10;
  }

  return v9;
}

- (id)accessibilityHint
{
  if ([(TransitRouteTableViewCellAccessibility *)self safeBoolForKey:@"useRoutePreviewDescription"])
  {
    accessibilityHint = AXMapsLocString(@"TRANSIT_PREVIEW_HINT");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TransitRouteTableViewCellAccessibility;
    accessibilityHint = [(TransitRouteTableViewCellAccessibility *)&v5 accessibilityHint];
  }

  return accessibilityHint;
}

@end