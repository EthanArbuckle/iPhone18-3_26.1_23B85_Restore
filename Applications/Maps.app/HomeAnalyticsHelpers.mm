@interface HomeAnalyticsHelpers
+ (void)captureDisplayActionForSuggestionsEntry:(id)entry;
@end

@implementation HomeAnalyticsHelpers

+ (void)captureDisplayActionForSuggestionsEntry:(id)entry
{
  entryCopy = entry;
  if ([entryCopy type] == 9)
  {
    v3 = [entryCopy stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
    mKMapItem3 = [entryCopy stringForKey:@"MapsSuggestionsRideBookingRideIDKey"];
    _restaurantLink_firstProviderIdentifier = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:v3 rideIdentifier:mKMapItem3];
    [_restaurantLink_firstProviderIdentifier setViewedInProactiveTray:1];
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  if ([entryCopy type] == 8)
  {
    mKMapItem = [entryCopy MKMapItem];
    v3 = +[RestaurantReservationAnalyticsBookedSession currentAnalyticsBookedSessionForMuid:createIfNotPresent:](RestaurantReservationAnalyticsBookedSession, "currentAnalyticsBookedSessionForMuid:createIfNotPresent:", [mKMapItem _muid], 1);

    [v3 setViewedInProactiveTray:1];
    mKMapItem2 = [entryCopy MKMapItem];
    [v3 setMuid:{objc_msgSend(mKMapItem2, "_muid")}];

    mKMapItem3 = [entryCopy MKMapItem];
    _restaurantLink_firstProviderIdentifier = [mKMapItem3 _restaurantLink_firstProviderIdentifier];
    [v3 setAppID:_restaurantLink_firstProviderIdentifier];
    goto LABEL_5;
  }

  if ([entryCopy type] == 20)
  {
    v3 = +[MKMapService sharedService];
    [v3 captureUserAction:2108 onTarget:8 eventValue:0];
    goto LABEL_6;
  }

  if ([entryCopy type] == 21)
  {
    [GEOAPPortal captureUserAction:2138 target:8 value:0];
    [GEOAPPortal captureUserAction:339 target:8 value:0];
  }

  else if ([entryCopy type] == 11)
  {
    v3 = [SearchFieldItem searchFieldItemsForRouteInSuggestionsEntry:entryCopy excludeCurrentLocationOrigin:1];
    if ([v3 count] <= 1)
    {
      v8 = 70;
    }

    else
    {
      v8 = 71;
    }

    [GEOAPPortal captureUserAction:9002 target:v8 value:0];
    goto LABEL_6;
  }

LABEL_7:
}

@end