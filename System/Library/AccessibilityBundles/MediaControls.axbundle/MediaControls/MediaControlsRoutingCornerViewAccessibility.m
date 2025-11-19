@interface MediaControlsRoutingCornerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation MediaControlsRoutingCornerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MediaControlsRoutingCornerView" hasInstanceMethod:@"isRouting" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MediaControlsRoutingCornerView" hasInstanceMethod:@"routesAreAvailable" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = [(MediaControlsRoutingCornerViewAccessibility *)self safeBoolForKey:@"routesAreAvailable"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  if (([(MediaControlsRoutingCornerViewAccessibility *)self safeBoolForKey:@"isRouting"]& 1) != 0)
  {
    v3 = @"connected.route";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  if ([(MediaControlsRoutingCornerViewAccessibility *)self safeBoolForKey:@"routesAreAvailable"])
  {
    v3 = @"available.route";
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end