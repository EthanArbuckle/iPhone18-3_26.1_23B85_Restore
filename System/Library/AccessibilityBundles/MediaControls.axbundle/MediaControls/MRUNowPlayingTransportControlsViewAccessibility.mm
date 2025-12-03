@interface MRUNowPlayingTransportControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation MRUNowPlayingTransportControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"leadingButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"leftButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"centerButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"rightButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"routingButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"layout" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"showRoutingButton" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MRUTransportButton" hasInstanceMethod:@"transportControlItem" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  if ([(MRUNowPlayingTransportControlsViewAccessibility *)self safeIntForKey:@"_layout"])
  {
    v11.receiver = self;
    v11.super_class = MRUNowPlayingTransportControlsViewAccessibility;
    accessibilityElements = [(MRUNowPlayingTransportControlsViewAccessibility *)&v11 accessibilityElements];
  }

  else
  {
    accessibilityElements = objc_opt_new();
    v4 = [(MRUNowPlayingTransportControlsViewAccessibility *)self safeValueForKey:@"leadingButton"];
    v5 = [v4 safeValueForKey:@"transportControlItem"];

    if (v5)
    {
      [accessibilityElements axSafelyAddObject:v4];
    }

    v6 = [(MRUNowPlayingTransportControlsViewAccessibility *)self safeValueForKey:@"leftButton"];
    [accessibilityElements axSafelyAddObject:v6];

    v7 = [(MRUNowPlayingTransportControlsViewAccessibility *)self safeValueForKey:@"centerButton"];
    [accessibilityElements axSafelyAddObject:v7];

    v8 = [(MRUNowPlayingTransportControlsViewAccessibility *)self safeValueForKey:@"rightButton"];
    [accessibilityElements axSafelyAddObject:v8];

    if ([(MRUNowPlayingTransportControlsViewAccessibility *)self safeBoolForKey:@"_showRoutingButton"])
    {
      v9 = [(MRUNowPlayingTransportControlsViewAccessibility *)self safeValueForKey:@"routingButton"];
      [accessibilityElements axSafelyAddObject:v9];
    }
  }

  return accessibilityElements;
}

@end