@interface TransitRouteTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)tableTextAccessibleLabel:(id)a3;
@end

@implementation TransitRouteTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TransitRouteTableViewCell" hasInstanceVariable:@"_route" withType:"GEOComposedRoute"];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"tableTextAccessibleLabel:" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TransitRouteTableViewCell" isKindOfClass:@"RouteTableViewCell"];
  [v3 validateClass:@"RouteTableViewCell" hasInstanceMethod:@"useRoutePreviewDescription" withFullSignature:{"B", 0}];
}

- (id)tableTextAccessibleLabel:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TransitRouteTableViewCellAccessibility;
  v5 = [(TransitRouteTableViewCellAccessibility *)&v12 tableTextAccessibleLabel:v4];
  objc_opt_class();
  v6 = [(TransitRouteTableViewCellAccessibility *)self safeValueForKey:@"_route"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 _accessibilityTransitArtworkText];

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
    v3 = AXMapsLocString(@"TRANSIT_PREVIEW_HINT");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TransitRouteTableViewCellAccessibility;
    v3 = [(TransitRouteTableViewCellAccessibility *)&v5 accessibilityHint];
  }

  return v3;
}

@end