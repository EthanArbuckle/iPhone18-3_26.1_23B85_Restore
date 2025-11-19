@interface MapsSettingsRestaurantBookingController
- (id)localizedExtensionsFooter;
- (id)localizedExtensionsHeader;
@end

@implementation MapsSettingsRestaurantBookingController

- (id)localizedExtensionsHeader
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v3 = [v2 localizedStringForKey:@"Table Booking Extensions Group Title [Settings]" value:@"localized string not found" table:0];

  return v3;
}

- (id)localizedExtensionsFooter
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v3 = [v2 localizedStringForKey:@"Table Booking Extensions Footer [Settings]" value:@"localized string not found" table:0];

  return v3;
}

@end