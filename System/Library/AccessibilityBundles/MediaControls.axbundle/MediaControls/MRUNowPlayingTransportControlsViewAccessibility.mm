@interface MRUNowPlayingTransportControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation MRUNowPlayingTransportControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"leadingButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"leftButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"centerButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"rightButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"routingButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"layout" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MRUNowPlayingTransportControlsView" hasInstanceMethod:@"showRoutingButton" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MRUTransportButton" hasInstanceMethod:@"transportControlItem" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  if ([(MRUNowPlayingTransportControlsViewAccessibility *)self safeIntForKey:@"_layout"])
  {
    v11.receiver = self;
    v11.super_class = MRUNowPlayingTransportControlsViewAccessibility;
    v3 = [(MRUNowPlayingTransportControlsViewAccessibility *)&v11 accessibilityElements];
  }

  else
  {
    v3 = objc_opt_new();
    v4 = [(MRUNowPlayingTransportControlsViewAccessibility *)self safeValueForKey:@"leadingButton"];
    v5 = [v4 safeValueForKey:@"transportControlItem"];

    if (v5)
    {
      [v3 axSafelyAddObject:v4];
    }

    v6 = [(MRUNowPlayingTransportControlsViewAccessibility *)self safeValueForKey:@"leftButton"];
    [v3 axSafelyAddObject:v6];

    v7 = [(MRUNowPlayingTransportControlsViewAccessibility *)self safeValueForKey:@"centerButton"];
    [v3 axSafelyAddObject:v7];

    v8 = [(MRUNowPlayingTransportControlsViewAccessibility *)self safeValueForKey:@"rightButton"];
    [v3 axSafelyAddObject:v8];

    if ([(MRUNowPlayingTransportControlsViewAccessibility *)self safeBoolForKey:@"_showRoutingButton"])
    {
      v9 = [(MRUNowPlayingTransportControlsViewAccessibility *)self safeValueForKey:@"routingButton"];
      [v3 axSafelyAddObject:v9];
    }
  }

  return v3;
}

@end