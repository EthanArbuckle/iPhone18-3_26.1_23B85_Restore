@interface RideBookingRequestRideStatus
+ (RideBookingRequestRideStatus)statusWithApplication:(id)application error:(unint64_t)error;
+ (RideBookingRequestRideStatus)statusWithApplication:(id)application rideOption:(id)option startingWaypointCoordinate:(CLLocationCoordinate2D)coordinate origin:(id)origin destination:(id)destination loadingRequestRideStatus:(BOOL)status etaMinutesAtStartWaypoint:(id)waypoint;
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
  application = [(RideBookingRequestRideStatus *)self application];
  name = [application name];
  v8 = [v5 initWithFormat:v4, name];

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
  rideOption = [(RideBookingRequestRideStatus *)self rideOption];
  name = [rideOption name];
  v7 = [NSString localizedStringWithFormat:v4, name];

  return v7;
}

- (NSString)requestCommandTitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Request %@ [Ridesharing]" value:@"localized string not found" table:0];
  rideOption = [(RideBookingRequestRideStatus *)self rideOption];
  name = [rideOption name];
  v7 = [NSString stringWithFormat:v4, name];

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
  rideOption = [(RideBookingRequestRideStatus *)self rideOption];
  intentsRideOption = [rideOption intentsRideOption];
  disclaimerMessage = [intentsRideOption disclaimerMessage];

  return disclaimerMessage;
}

- (NSArray)cardFareLineItems
{
  rideOption = [(RideBookingRequestRideStatus *)self rideOption];
  intentsRideOption = [rideOption intentsRideOption];
  v4 = [RidesharingFareLineItem _fareItemsFromRideOption:intentsRideOption];

  return v4;
}

- (NSString)openInAppCommandTitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Open in %@ [Ridesharing]" value:@"localized string not found" table:0];
  application = [(RideBookingRequestRideStatus *)self application];
  name = [application name];
  v7 = [NSString stringWithFormat:v4, name];

  return v7;
}

- (RidesharingSpecialPricingBadge)cardFormattedPriceRangeBadge
{
  rideOption = [(RideBookingRequestRideStatus *)self rideOption];
  specialPricingBadge = [rideOption specialPricingBadge];

  return specialPricingBadge;
}

- (NSString)cardFormattedPriceRange
{
  rideOption = [(RideBookingRequestRideStatus *)self rideOption];
  priceRange = [rideOption priceRange];

  return priceRange;
}

- (NSString)cardSubtitle
{
  if ([(RideBookingRequestRideStatus *)self loadingRequest])
  {
    rideOption = [(RideBookingRequestRideStatus *)self rideOption];
    detailedDescription = [rideOption detailedDescription];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    rideOption2 = [(RideBookingRequestRideStatus *)self rideOption];
    passengerChoices = [rideOption2 passengerChoices];

    v7 = [passengerChoices countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(passengerChoices);
          }

          v13 = *(*(&v18 + 1) + 8 * v11);
          unsignedIntegerValue = [v12 unsignedIntegerValue];
          if (unsignedIntegerValue <= [v13 numberOfPassengers])
          {
            numberOfPassengers = [v13 numberOfPassengers];
          }

          else
          {
            numberOfPassengers = [v12 unsignedIntegerValue];
          }

          v9 = [NSNumber numberWithUnsignedInteger:numberOfPassengers];

          v11 = v11 + 1;
          v12 = v9;
        }

        while (v8 != v11);
        v8 = [passengerChoices countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    etaMinutesAtStartWaypoint = [(RideBookingRequestRideStatus *)self etaMinutesAtStartWaypoint];
    detailedDescription = [NSString _maps_ridesharingETA:etaMinutesAtStartWaypoint partySize:v9];
  }

  return detailedDescription;
}

- (NSString)cardTitle
{
  rideOption = [(RideBookingRequestRideStatus *)self rideOption];
  name = [rideOption name];

  return name;
}

- (UIImage)cardIcon
{
  rideOption = [(RideBookingRequestRideStatus *)self rideOption];
  iconImage = [rideOption iconImage];

  return iconImage;
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

+ (RideBookingRequestRideStatus)statusWithApplication:(id)application rideOption:(id)option startingWaypointCoordinate:(CLLocationCoordinate2D)coordinate origin:(id)origin destination:(id)destination loadingRequestRideStatus:(BOOL)status etaMinutesAtStartWaypoint:(id)waypoint
{
  statusCopy = status;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  waypointCopy = waypoint;
  destinationCopy = destination;
  originCopy = origin;
  optionCopy = option;
  applicationCopy = application;
  v21 = objc_opt_new();
  [v21 setApplication:applicationCopy];

  [v21 setStartWaypointCoordinate:{latitude, longitude}];
  [v21 setOrigin:originCopy];

  [v21 setDestination:destinationCopy];
  [v21 setRideOption:optionCopy];
  passengerChoices = [optionCopy passengerChoices];

  [v21 setRequiresPassengerSelection:{objc_msgSend(passengerChoices, "count") > 1}];
  rideOption = [v21 rideOption];
  paymentMethods = [rideOption paymentMethods];
  v25 = [paymentMethods count];

  if (v25)
  {
    rideOption2 = [v21 rideOption];
    paymentMethods2 = [rideOption2 paymentMethods];
    firstObject = [paymentMethods2 firstObject];
    [v21 setPaymentMethod:firstObject];
  }

  [v21 setLoadingRequest:statusCopy];
  v29 = [waypointCopy copy];

  [v21 setEtaMinutesAtStartWaypoint:v29];

  return v21;
}

+ (RideBookingRequestRideStatus)statusWithApplication:(id)application error:(unint64_t)error
{
  applicationCopy = application;
  v6 = objc_opt_new();
  [v6 setApplication:applicationCopy];

  [v6 setRequestRideStatusError:error];

  return v6;
}

@end