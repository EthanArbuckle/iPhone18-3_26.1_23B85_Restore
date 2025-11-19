@interface RideBookingRequestRideStatus
+ (RideBookingRequestRideStatus)statusWithApplication:(id)a3 error:(unint64_t)a4;
+ (RideBookingRequestRideStatus)statusWithApplication:(id)a3 rideOption:(id)a4 startingWaypointCoordinate:(CLLocationCoordinate2D)a5 origin:(id)a6 destination:(id)a7 loadingRequestRideStatus:(BOOL)a8 etaMinutesAtStartWaypoint:(id)a9;
- (CLLocationCoordinate2D)startWaypointCoordinate;
- (NSArray)cardFareLineItems;
- (NSString)appleDisclaimer;
- (NSString)cardFormattedPriceRange;
- (NSString)cardSubtitle;
- (NSString)cardTitle;
- (NSString)disclaimerMessage;
- (NSString)expirationAlertMessage;
- (NSString)expirationAlertTitle;
- (NSString)openInAppCommandTitle;
- (NSString)paymentSelectionTitle;
- (NSString)requestCommandTitle;
- (RideBookingApplication)application;
- (RidesharingSpecialPricingBadge)cardFormattedPriceRangeBadge;
- (UIImage)cardIcon;
@end

@implementation RideBookingRequestRideStatus

- (NSString)paymentSelectionTitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SavedPaymentMethod" value:@"localized string not found" table:0];

  v5 = [NSString alloc];
  v6 = [(RideBookingRequestRideStatus *)self application];
  v7 = [v6 name];
  v8 = [v5 initWithFormat:v4, v7];

  return v8;
}

- (NSString)expirationAlertMessage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[ridesharing] expiration alert message" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)expirationAlertTitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[ridesharing] expiration alert title" value:@"localized string not found" table:0];
  v5 = [(RideBookingRequestRideStatus *)self rideOption];
  v6 = [v5 name];
  v7 = [NSString localizedStringWithFormat:v4, v6];

  return v7;
}

- (NSString)requestCommandTitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Request %@ [Ridesharing]" value:@"localized string not found" table:0];
  v5 = [(RideBookingRequestRideStatus *)self rideOption];
  v6 = [v5 name];
  v7 = [NSString stringWithFormat:v4, v6];

  return v7;
}

- (NSString)appleDisclaimer
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Route value:fares table:{and waits are estimates and may vary due to traffic, weather, or other factors.", @"localized string not found", 0}];

  return v3;
}

- (NSString)disclaimerMessage
{
  v2 = [(RideBookingRequestRideStatus *)self rideOption];
  v3 = [v2 intentsRideOption];
  v4 = [v3 disclaimerMessage];

  return v4;
}

- (NSArray)cardFareLineItems
{
  v2 = [(RideBookingRequestRideStatus *)self rideOption];
  v3 = [v2 intentsRideOption];
  v4 = [RidesharingFareLineItem _fareItemsFromRideOption:v3];

  return v4;
}

- (NSString)openInAppCommandTitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Open in %@ [Ridesharing]" value:@"localized string not found" table:0];
  v5 = [(RideBookingRequestRideStatus *)self application];
  v6 = [v5 name];
  v7 = [NSString stringWithFormat:v4, v6];

  return v7;
}

- (RidesharingSpecialPricingBadge)cardFormattedPriceRangeBadge
{
  v2 = [(RideBookingRequestRideStatus *)self rideOption];
  v3 = [v2 specialPricingBadge];

  return v3;
}

- (NSString)cardFormattedPriceRange
{
  v2 = [(RideBookingRequestRideStatus *)self rideOption];
  v3 = [v2 priceRange];

  return v3;
}

- (NSString)cardSubtitle
{
  if ([(RideBookingRequestRideStatus *)self loadingRequest])
  {
    v3 = [(RideBookingRequestRideStatus *)self rideOption];
    v4 = [v3 detailedDescription];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(RideBookingRequestRideStatus *)self rideOption];
    v6 = [v5 passengerChoices];

    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      do
      {
        v11 = 0;
        v12 = v9;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v18 + 1) + 8 * v11);
          v14 = [v12 unsignedIntegerValue];
          if (v14 <= [v13 numberOfPassengers])
          {
            v15 = [v13 numberOfPassengers];
          }

          else
          {
            v15 = [v12 unsignedIntegerValue];
          }

          v9 = [NSNumber numberWithUnsignedInteger:v15];

          v11 = v11 + 1;
          v12 = v9;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v16 = [(RideBookingRequestRideStatus *)self etaMinutesAtStartWaypoint];
    v4 = [NSString _maps_ridesharingETA:v16 partySize:v9];
  }

  return v4;
}

- (NSString)cardTitle
{
  v2 = [(RideBookingRequestRideStatus *)self rideOption];
  v3 = [v2 name];

  return v3;
}

- (UIImage)cardIcon
{
  v2 = [(RideBookingRequestRideStatus *)self rideOption];
  v3 = [v2 iconImage];

  return v3;
}

- (RideBookingApplication)application
{
  WeakRetained = objc_loadWeakRetained(&self->_application);

  return WeakRetained;
}

- (CLLocationCoordinate2D)startWaypointCoordinate
{
  latitude = self->_startWaypointCoordinate.latitude;
  longitude = self->_startWaypointCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

+ (RideBookingRequestRideStatus)statusWithApplication:(id)a3 rideOption:(id)a4 startingWaypointCoordinate:(CLLocationCoordinate2D)a5 origin:(id)a6 destination:(id)a7 loadingRequestRideStatus:(BOOL)a8 etaMinutesAtStartWaypoint:(id)a9
{
  v9 = a8;
  longitude = a5.longitude;
  latitude = a5.latitude;
  v16 = a9;
  v17 = a7;
  v18 = a6;
  v19 = a4;
  v20 = a3;
  v21 = objc_opt_new();
  [v21 setApplication:v20];

  [v21 setStartWaypointCoordinate:{latitude, longitude}];
  [v21 setOrigin:v18];

  [v21 setDestination:v17];
  [v21 setRideOption:v19];
  v22 = [v19 passengerChoices];

  [v21 setRequiresPassengerSelection:{objc_msgSend(v22, "count") > 1}];
  v23 = [v21 rideOption];
  v24 = [v23 paymentMethods];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [v21 rideOption];
    v27 = [v26 paymentMethods];
    v28 = [v27 firstObject];
    [v21 setPaymentMethod:v28];
  }

  [v21 setLoadingRequest:v9];
  v29 = [v16 copy];

  [v21 setEtaMinutesAtStartWaypoint:v29];

  return v21;
}

+ (RideBookingRequestRideStatus)statusWithApplication:(id)a3 error:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setApplication:v5];

  [v6 setRequestRideStatusError:a4];

  return v6;
}

@end