@interface RideBookingRideStatus
+ (RideBookingRideStatus)statusWithApplication:(id)a3 error:(unint64_t)a4;
- (BOOL)_feedbackRequired;
- (BOOL)_shouldShowPayment;
- (BOOL)_showFeedbackType:(unint64_t)a3;
- (BOOL)isActiveRide;
- (BOOL)isScheduledRide;
- (BOOL)isValidRide;
- (BOOL)shouldShowFeedbackControls;
- (CLLocation)vehicleLocation;
- (CLPlacemark)dropoffLocation;
- (CLPlacemark)pickupLocation;
- (NSArray)cardActions;
- (NSArray)cardFareLineItems;
- (NSArray)intentResponseFailures;
- (NSArray)tippingOptions;
- (NSDate)estimatedDropOffDate;
- (NSDateComponents)scheduledPickupWindowStartDateComponents;
- (NSNumber)pickupETAMinutes;
- (NSString)bannerAttributionTitle;
- (NSString)cancelCommandTitle;
- (NSString)cardDisclaimer;
- (NSString)cardRideCompletedActionButtonTitle;
- (NSString)cardSubtitle;
- (NSString)cardTertiaryTitle;
- (NSString)cardTitle;
- (NSString)contactCommandTitle;
- (NSString)driverPhoneNumber;
- (NSString)openInAppCommandTitle;
- (NSString)templatedViewSubtitle;
- (NSString)templatedViewTitle;
- (NSString)traySubtitle;
- (NSString)trayTitle;
- (RideBookingApplication)application;
- (RideBookingRideStatus)initWithApplication:(id)a3 rideOption:(id)a4 canceled:(BOOL)a5 canceledByService:(BOOL)a6 userActivityForCanceling:(id)a7 identifier:(id)a8 phase:(unint64_t)a9 error:(unint64_t)a10;
- (RidesharingSpecialPricingBadge)cardFormattedPriceRangeBadge;
- (UIImage)cardIcon;
- (UIImage)driverImage;
- (UIImage)templatedViewAppIcon;
- (UIImage)vehicleImage;
- (id)_approachingPickupTemplatedViewTitle;
- (id)_approachingPickupTrayTitle;
- (id)_completedCardSubtitle;
- (id)_completedCardTertiaryTitle;
- (id)_completedTemplatedViewSubtitle;
- (id)_completedTemplatedViewTitle;
- (id)_completedTraySubtitle;
- (id)_completedTrayTitle;
- (id)_confirmedTemplatedViewSubtitle;
- (id)_confirmedTemplatedViewTitle;
- (id)_confirmedTrayTitle;
- (id)_destinationAddress;
- (id)_driverName;
- (id)_minuteStringForSeconds:(double)a3;
- (id)_ongoingCardSubtitle;
- (id)_ongoingTemplatedViewSubtitle;
- (id)_ongoingTemplatedViewTitle;
- (id)_ongoingTrayTitle;
- (id)_pickupAddress;
- (id)_pickupTemplatedViewTitle;
- (id)_pickupTrayTitle;
- (id)_receivedCardSubtitle;
- (id)_receivedTemplatedViewSubtitle;
- (id)_receivedTemplatedViewTitle;
- (id)_receivedTrayTitle;
- (id)_scheduledCardSubtitle;
- (id)_scheduledTraySubtitle;
- (id)_scheduledTrayTitle;
- (id)description;
- (id)timeFormatter;
- (void)setGetRideStatusIntentResponse:(id)a3;
- (void)setIntentsRideStatus:(id)a3;
- (void)setRequestRideIntentResponse:(id)a3;
@end

@implementation RideBookingRideStatus

- (void)setRequestRideIntentResponse:(id)a3
{
  value = a3;
  v4 = [(RideBookingRideStatus *)self requestRideIntentResponse];
  if (([v4 isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_10121321A, value, 3);
  }
}

- (void)setGetRideStatusIntentResponse:(id)a3
{
  value = a3;
  v4 = [(RideBookingRideStatus *)self getRideStatusIntentResponse];
  if (([v4 isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_101213219, value, 3);
  }
}

- (void)setIntentsRideStatus:(id)a3
{
  value = a3;
  v4 = [(RideBookingRideStatus *)self intentsRideStatus];
  if (([v4 isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_101213218, value, 3);
  }
}

- (RideBookingApplication)application
{
  WeakRetained = objc_loadWeakRetained(&self->_application);

  return WeakRetained;
}

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_application);
  v4 = [NSString stringWithFormat:@"RBRideStatus: %@\nIdentifier: %@", WeakRetained, self->_identifier];

  return v4;
}

- (BOOL)isActiveRide
{
  v3 = [(RideBookingRideStatus *)self isValidRide];
  if (v3)
  {
    LOBYTE(v3) = [(RideBookingRideStatus *)self phase]!= 4;
  }

  return v3;
}

- (BOOL)isValidRide
{
  v3 = [(RideBookingRideStatus *)self identifier];
  v4 = v3 && ![(RideBookingRideStatus *)self isCanceledByUser]&& [(RideBookingRideStatus *)self phase]!= 0;

  return v4;
}

- (RideBookingRideStatus)initWithApplication:(id)a3 rideOption:(id)a4 canceled:(BOOL)a5 canceledByService:(BOOL)a6 userActivityForCanceling:(id)a7 identifier:(id)a8 phase:(unint64_t)a9 error:(unint64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v25.receiver = self;
  v25.super_class = RideBookingRideStatus;
  v20 = [(RideBookingRideStatus *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_application, v16);
    objc_storeStrong(&v21->_rideOption, a4);
    v21->_rideStatusIsCanceled = a5;
    v21->_rideStatusIsCanceledByService = a6;
    v21->_phase = a9;
    v21->_rideStatusError = a10;
    v22 = [v19 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    objc_storeStrong(&v21->_userActivityForCanceling, a7);
  }

  return v21;
}

+ (RideBookingRideStatus)statusWithApplication:(id)a3 error:(unint64_t)a4
{
  v5 = a3;
  v6 = [[RideBookingRideStatus alloc] initWithApplication:v5 rideOption:0 canceled:0 canceledByService:0 userActivityForCanceling:0 identifier:0 phase:0 error:a4];

  return v6;
}

- (NSArray)intentResponseFailures
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 setIntent:4];
  [v4 setFailure:0];
  v5 = [(RideBookingRideStatus *)self rideStatusError];
  if (v5 <= 8 && ((0x1FDu >> v5) & 1) != 0)
  {
    [v4 setFailure:dword_1012156F4[v5]];
  }

  if ([v4 failure])
  {
    v6 = [v4 copy];
    [v3 addObject:v6];
  }

  v7 = [(RideBookingRideStatus *)self intentsRideStatus];
  v8 = [v7 rideIdentifier];

  if (!v8)
  {
    [v4 setFailure:13];
    v9 = [v4 copy];
    [v3 addObject:v9];
  }

  v10 = [(RideBookingRideStatus *)self intentsRideStatus];
  v11 = [v10 rideOption];
  v12 = [v11 name];
  v13 = [v12 length];

  if (!v13)
  {
    [v4 setFailure:11];
    v14 = [v4 copy];
    [v3 addObject:v14];
  }

  v15 = [(RideBookingRideStatus *)self intentsRideStatus];
  v16 = [v15 estimatedPickupDate];

  if (!v16)
  {
    [v4 setFailure:12];
    v17 = [v4 copy];
    [v3 addObject:v17];
  }

  v18 = [(RideBookingRideStatus *)self intentsRideStatus];
  v19 = [v18 vehicle];
  v20 = [v19 location];
  v21 = v20;
  if (v20 && ([v20 coordinate], latitude = v33.latitude, longitude = v33.longitude, CLLocationCoordinate2DIsValid(v33)) && fabs(latitude) > 2.22044605e-16)
  {

    if (fabs(longitude) > 2.22044605e-16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  [v4 setFailure:17];
  v24 = [v4 copy];
  [v3 addObject:v24];

LABEL_19:
  v25 = [(RideBookingRideStatus *)self intentsRideStatus];
  if (v25)
  {
    v26 = v25;
    v27 = [(RideBookingRideStatus *)self intentsRideStatus];
    v28 = [v27 phase];

    if (!v28)
    {
      [v4 setFailure:14];
      v29 = [v4 copy];
      [v3 addObject:v29];
    }
  }

  v30 = [v3 copy];

  return v30;
}

- (NSArray)tippingOptions
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 completionStatus];
  v5 = [v4 defaultTippingOptions];
  v6 = [v5 allObjects];
  v7 = sub_100021DB0(v6, &stru_10164E7D0);

  v8 = [(RideBookingRideStatus *)self intentsRideStatus];
  v9 = [v8 completionStatus];
  if ([v9 isCompleted] && -[RideBookingRideStatus shouldShowTippingOptions](self, "shouldShowTippingOptions"))
  {
    v10 = [v7 count];

    if (v10)
    {
      v10 = v7;
    }
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (NSDate)estimatedDropOffDate
{
  v2 = [(RideBookingRideStatus *)self intentsRideStatus];
  v3 = [v2 estimatedDropOffDate];

  return v3;
}

- (NSNumber)pickupETAMinutes
{
  v2 = self;
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 estimatedPickupDate];

  if (v4)
  {
    v5 = [v2 intentsRideStatus];
    v6 = [v5 estimatedPickupDate];
    [v6 timeIntervalSinceNow];
    if (round(v7 * 0.0166666667) < 1.0)
    {
      v2 = 1;
    }

    else
    {
      v8 = [v2 intentsRideStatus];
      v9 = [v8 estimatedPickupDate];
      [v9 timeIntervalSinceNow];
      LODWORD(v2) = vcvtad_u64_f64(v10 * 0.0166666667);
    }

    v11 = [NSNumber numberWithUnsignedInt:v2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSDateComponents)scheduledPickupWindowStartDateComponents
{
  v2 = [(RideBookingRideStatus *)self intentsRideStatus];
  v3 = [v2 scheduledPickupTime];
  v4 = [v3 startDateComponents];

  return v4;
}

- (CLPlacemark)dropoffLocation
{
  v2 = [(RideBookingRideStatus *)self intentsRideStatus];
  v3 = [v2 dropOffLocation];

  return v3;
}

- (CLPlacemark)pickupLocation
{
  v2 = [(RideBookingRideStatus *)self intentsRideStatus];
  v3 = [v2 pickupLocation];

  return v3;
}

- (UIImage)vehicleImage
{
  v3 = +[RideBookingAccessProxy imageCache];
  v4 = [(RideBookingRideStatus *)self intentsRideStatus];
  v5 = [v4 vehicle];
  v6 = [v5 mapAnnotationImage];
  v7 = [v6 _identifier];
  v8 = [v3 imageForKey:v7];

  return v8;
}

- (CLLocation)vehicleLocation
{
  v2 = [(RideBookingRideStatus *)self intentsRideStatus];
  v3 = [v2 vehicle];
  v4 = [v3 location];

  return v4;
}

- (id)_driverName
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 driver];
  v5 = [v4 nameComponents];

  if (v5)
  {
    v6 = [(RideBookingRideStatus *)self intentsRideStatus];
    v7 = [v6 driver];
    v8 = [v7 nameComponents];
    v9 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v8 style:0 options:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UIImage)driverImage
{
  v3 = +[RideBookingAccessProxy imageCache];
  v4 = [(RideBookingRideStatus *)self intentsRideStatus];
  v5 = [v4 driver];
  v6 = [v5 image];
  v7 = [v6 _identifier];
  v8 = [v3 imageForKey:v7];

  return v8;
}

- (NSString)driverPhoneNumber
{
  v2 = [(RideBookingRideStatus *)self intentsRideStatus];
  v3 = [v2 driver];
  v4 = [v3 phoneNumber];

  return v4;
}

- (NSString)contactCommandTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Contact Driver" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)cancelCommandTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 phase];

  if (v4 > 2)
  {
    if ((v4 - 5) < 2 || v4 == 3)
    {
LABEL_11:
      v5 = @"Cancel Ride";
      goto LABEL_13;
    }

    if (v4 != 4)
    {
      goto LABEL_14;
    }

LABEL_10:
    v5 = @"[Ridesharing] cancel button";
    goto LABEL_13;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v5 = @"Cancel Request";
    goto LABEL_13;
  }

  if (v4 != 2)
  {
    goto LABEL_14;
  }

  if (![(RideBookingRideStatus *)self isScheduledRide])
  {
    goto LABEL_11;
  }

  v5 = @"Cancel Scheduled Ride";
LABEL_13:
  v6 = +[NSBundle mainBundle];
  v3 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];

LABEL_14:

  return v3;
}

- (NSString)openInAppCommandTitle
{
  v3 = [(RideBookingRideStatus *)self application];
  v4 = [v3 name];

  v5 = +[NSBundle mainBundle];
  if (v4)
  {
    v6 = [v5 localizedStringForKey:@"Open in %@ [Ridesharing]" value:@"localized string not found" table:0];
    v7 = [(RideBookingRideStatus *)self application];
    v8 = [v7 name];
    v9 = [NSString stringWithFormat:v6, v8];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"Open in app [Ridesharing]" value:@"localized string not found" table:0];
  }

  return v9;
}

- (BOOL)_shouldShowPayment
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 completionStatus];
  v5 = [v4 paymentAmount];
  v6 = [v5 amount];

  v7 = [(RideBookingRideStatus *)self intentsRideStatus];
  v8 = [v7 completionStatus];
  v9 = [v8 paymentAmount];
  v10 = [v9 currencyCode];

  if (v6)
  {
    v11 = [v6 compare:&off_1016E94A0] == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v6)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;

  return v13 & v11;
}

- (NSString)cardRideCompletedActionButtonTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 completionStatus];

  if ([v4 isCompleted] && objc_msgSend(v4, "isOutstanding") && -[RideBookingRideStatus _shouldShowPayment](self, "_shouldShowPayment"))
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[ridesharing] pay %@ now" value:@"localized string not found" table:0];
    v7 = [v4 paymentAmount];
    v8 = [v7 amount];
    v9 = [v4 paymentAmount];
    v10 = [v9 currencyCode];
    v11 = [NSString _navigation_formattedStringForPriceValueWithAmount:v8 currencyCode:v10 showsCurrencySymbol:1];
    v12 = [NSString localizedStringWithFormat:v6, v11];
  }

  else
  {
    v13 = [(RideBookingRideStatus *)self application];
    v14 = [v13 name];

    v5 = +[NSBundle mainBundle];
    if (v14)
    {
      v15 = [v5 localizedStringForKey:@"[ridesharing] view in %@" value:@"localized string not found" table:0];
      v16 = [(RideBookingRideStatus *)self application];
      v17 = [v16 name];
      v12 = [NSString localizedStringWithFormat:v15, v17];
    }

    else
    {
      v12 = [v5 localizedStringForKey:@"[ridesharing] view in app" value:@"localized string not found" table:0];
    }
  }

  return v12;
}

- (NSArray)cardActions
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 additionalActionActivities];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C420BC;
  v7[3] = &unk_10164E790;
  v7[4] = self;
  v5 = sub_100021DB0(v4, v7);

  return v5;
}

- (id)_completedCardTertiaryTitle
{
  if ([(RideBookingRideStatus *)self _shouldShowPayment])
  {
    v3 = [(RideBookingRideStatus *)self intentsRideStatus];
    v4 = [v3 completionStatus];
    v5 = [v4 paymentAmount];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Total fare is card %@ [Ridesharing]" value:@"localized string not found" table:0];
    v8 = [v5 amount];
    v9 = [v5 currencyCode];
    v10 = [NSString _navigation_formattedStringForPriceValueWithAmount:v8 currencyCode:v9];
    v11 = [NSString localizedStringWithFormat:v7, v10];
  }

  else
  {
    v11 = &stru_1016631F0;
  }

  return v11;
}

- (id)_completedCardSubtitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 completionStatus];
  v5 = [v4 isMissedPickup];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Driver has departed card [Ridesharing]";
  }

  else
  {
    v9 = [(RideBookingRideStatus *)self intentsRideStatus];
    v10 = [v9 completionStatus];
    v11 = [v10 isCanceled];

    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v11)
    {
      v8 = @"Trip was canceled card [Ridesharing]";
    }

    else
    {
      v8 = @"Trip is complete card [Ridesharing]";
    }
  }

  v12 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];

  return v12;
}

- (id)_ongoingCardSubtitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 estimatedDropOffDate];

  if (v4)
  {
    v5 = [(RideBookingRideStatus *)self intentsRideStatus];
    v6 = [v5 estimatedDropOffDate];
    [v6 timeIntervalSinceNow];
    v7 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Arriving in %@ card subtitle [Ridesharing]" value:@"localized string not found" table:0];
    v10 = [NSString localizedStringWithFormat:v9, v7];
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  return v10;
}

- (id)_scheduledCardSubtitle
{
  v2 = [(RideBookingRideStatus *)self intentsRideStatus];
  v3 = [v2 scheduledPickupTime];
  v4 = [v3 startDateComponents];
  v5 = [NSString _maps_ridesharingScheduledPickupWindowStart:v4 partySize:0];

  return v5;
}

- (id)_receivedCardSubtitle
{
  v5 = [(RideBookingRideStatus *)self intentsRideStatus];
  v6 = [v5 estimatedPickupDate];
  if (v6)
  {
    v7 = [(RideBookingRideStatus *)self intentsRideStatus];
    v8 = [v7 estimatedPickupDate];
    [v8 timeIntervalSinceNow];
    v10 = round(v9 * 0.0166666667);
    v11 = 1.0;
    if (v10 >= 1.0)
    {
      v2 = [(RideBookingRideStatus *)self intentsRideStatus];
      v3 = [v2 estimatedPickupDate];
      [v3 timeIntervalSinceNow];
      v11 = round(v12 * 0.0166666667);
    }

    v13 = [NSNumber numberWithDouble:v11];
    v14 = [NSString _maps_ridesharingETA:v13 partySize:0];

    if (v10 >= 1.0)
    {
    }
  }

  else
  {
    v14 = [NSString _maps_ridesharingETA:0 partySize:0];
  }

  return v14;
}

- (NSArray)cardFareLineItems
{
  v2 = [(RideBookingRideStatus *)self rideOption];
  v3 = [v2 intentsRideOption];
  v4 = [RidesharingFareLineItem _fareItemsFromRideOption:v3];

  return v4;
}

- (NSString)cardDisclaimer
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Route value:fares table:{and waits are estimates and may vary due to traffic, weather, or other factors.", @"localized string not found", 0}];

  return v3;
}

- (RidesharingSpecialPricingBadge)cardFormattedPriceRangeBadge
{
  v2 = [(RideBookingRideStatus *)self rideOption];
  v3 = [v2 specialPricingBadge];

  return v3;
}

- (NSString)cardTertiaryTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 phase];

  v5 = &stru_1016631F0;
  if (v4 <= 6)
  {
    if (((1 << v4) & 0x6E) != 0)
    {
      v6 = [(RideBookingRideStatus *)self rideOption];
      v5 = [v6 priceRange];
    }

    else if (v4 == 4)
    {
      v5 = [(RideBookingRideStatus *)self _completedCardTertiaryTitle];
    }
  }

  return v5;
}

- (NSString)cardSubtitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 phase];

  v5 = &stru_1016631F0;
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v5 = [(RideBookingRideStatus *)self _completedCardSubtitle];
        break;
      case 5:
        v5 = [(RideBookingRideStatus *)self _approachingPickupCardSubtitle];
        break;
      case 6:
        v5 = [(RideBookingRideStatus *)self _pickupCardSubtitle];
        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        v5 = [(RideBookingRideStatus *)self _receivedCardSubtitle];
        break;
      case 2:
        if ([(RideBookingRideStatus *)self isScheduledRide])
        {
          [(RideBookingRideStatus *)self _scheduledCardSubtitle];
        }

        else
        {
          [(RideBookingRideStatus *)self _confirmedCardSubtitle];
        }
        v5 = ;
        break;
      case 3:
        v5 = [(RideBookingRideStatus *)self _ongoingCardSubtitle];
        break;
    }
  }

  return v5;
}

- (NSString)cardTitle
{
  v2 = [(RideBookingRideStatus *)self rideOption];
  v3 = [v2 name];

  return v3;
}

- (UIImage)cardIcon
{
  v2 = [(RideBookingRideStatus *)self application];
  v3 = [v2 iconWithFormat:0];

  return v3;
}

- (NSString)bannerAttributionTitle
{
  v3 = [(RideBookingRideStatus *)self application];
  v4 = [v3 name];

  v5 = +[NSBundle mainBundle];
  if (v4)
  {
    v6 = [v5 localizedStringForKey:@"[ridesharing] banner view attribution" value:@"localized string not found" table:0];
    v7 = [(RideBookingRideStatus *)self application];
    v8 = [v7 name];
    v9 = [NSString localizedStringWithFormat:v6, v8];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"[ridesharing] banner view attribution no app name" value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_completedTraySubtitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 completionStatus];
  v5 = [v4 isMissedPickup];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Driver has departed proactive [Ridesharing]";
LABEL_5:
    v12 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
LABEL_6:

    goto LABEL_7;
  }

  v9 = [(RideBookingRideStatus *)self intentsRideStatus];
  v10 = [v9 completionStatus];
  v11 = [v10 isCanceled];

  if (v11)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Trip was canceled proactive [Ridesharing]";
    goto LABEL_5;
  }

  if (![(RideBookingRideStatus *)self _feedbackRequired])
  {
    if (![(RideBookingRideStatus *)self _shouldShowPayment])
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"Arrived proactive [Ridesharing]";
      goto LABEL_5;
    }

    v19 = [(RideBookingRideStatus *)self intentsRideStatus];
    v20 = [v19 completionStatus];
    v7 = [v20 paymentAmount];

    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"Total fare is %@ proactive [Ridesharing]" value:@"localized string not found" table:0];
    v23 = [v7 amount];
    v24 = [v7 currencyCode];
    v25 = [NSString _navigation_formattedStringForPriceValueWithAmount:v23 currencyCode:v24];
    v12 = [NSString localizedStringWithFormat:v22, v25];

LABEL_15:
    goto LABEL_6;
  }

  v14 = [(RideBookingRideStatus *)self _driverName];
  v15 = [v14 length];

  if (!v15)
  {
    v26 = [(RideBookingRideStatus *)self intentsRideStatus];
    v7 = [v26 estimatedPickupDate];

    if (!v7)
    {
      v12 = &stru_1016631F0;
      goto LABEL_6;
    }

    if (qword_10195EC58 != -1)
    {
      dispatch_once(&qword_10195EC58, &stru_10164E768);
    }

    v27 = +[NSCalendar autoupdatingCurrentCalendar];
    v28 = [v27 isDateInToday:v7];

    if (!v28)
    {
      v45 = 0;
      v39 = +[NSCalendar autoupdatingCurrentCalendar];
      v40 = +[NSCalendar autoupdatingCurrentCalendar];
      v41 = [v40 timeZone];
      v42 = [v39 _navigation_transitRelativeDateStringForDate:v7 context:5 inTimeZone:v41 outUsedFormat:&v45];

      v43 = +[NSBundle mainBundle];
      v44 = [v43 localizedStringForKey:@"ridesharing.completed.feedbackRequired.rideDay" value:@"localized string not found" table:0];
      v12 = [NSString localizedStringWithFormat:v44, v42];

      goto LABEL_6;
    }

    v21 = [qword_10195EC50 stringFromDate:v7];
    v29 = MapsSuggestionsTimeZone();
    v30 = v7;
    v31 = v29;
    if (!v29)
    {
      v31 = MapsSuggestionsTimeZone();
    }

    v32 = +[NSCalendar autoupdatingCurrentCalendar];
    v33 = [v32 componentsInTimeZone:v31 fromDate:v30];

    v34 = [v33 hour];
    if (v34 == 1 || v34 == 13)
    {
      v36 = @"ridesharing.completed.feedbackRequired.rideTime at 1 O'clock";
    }

    else
    {
      v36 = @"ridesharing.completed.feedbackRequired.rideTime";
    }

    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:v36 value:@"localized string not found" table:0];

    v12 = [NSString localizedStringWithFormat:v38, v21];

    goto LABEL_15;
  }

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"ridesharing.tray.subtitle.completed.feedbackRequired.driverName" value:@"localized string not found" table:0];
  v18 = [(RideBookingRideStatus *)self _driverName];
  v12 = [NSString localizedStringWithFormat:v17, v18];

LABEL_7:

  return v12;
}

- (id)_scheduledTraySubtitle
{
  if (qword_10195EC48 != -1)
  {
    dispatch_once(&qword_10195EC48, &stru_10164E748);
  }

  [qword_10195EC40 setTimeStyle:1];
  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195EC40 setLocale:v3];

  v4 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
  v5 = [v4 timeZone];
  [qword_10195EC40 setTimeZone:v5];

  v6 = +[NSCalendar autoupdatingCurrentCalendar];
  v7 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
  v8 = [v6 dateFromComponents:v7];

  v9 = [qword_10195EC40 stringFromDate:v8];
  v10 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
  v11 = [v10 timeZone];
  v12 = [v11 abbreviation];

  v13 = +[NSCalendar autoupdatingCurrentCalendar];
  v14 = [v13 timeZone];
  v15 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
  v16 = [v15 timeZone];
  v17 = [v14 isEqualToTimeZone:v16];

  if (v17)
  {

    v12 = 0;
  }

  v45 = 0;
  v18 = +[NSCalendar autoupdatingCurrentCalendar];
  v19 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
  v20 = [v19 timeZone];
  v21 = [v18 _navigation_transitRelativeDateStringForDate:v8 context:5 inTimeZone:v20 outUsedFormat:&v45];

  if (v12)
  {
    v22 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
    v23 = [v22 timeZone];
    v24 = v8;
    v25 = v23;
    if (!v23)
    {
      v25 = MapsSuggestionsTimeZone();
    }

    v26 = +[NSCalendar autoupdatingCurrentCalendar];
    v27 = [v26 componentsInTimeZone:v25 fromDate:v24];

    v28 = [v27 hour];
    if (v28 == 13 || v28 == 1)
    {
      v29 = +[NSBundle mainBundle];
      v30 = v29;
      v31 = @"Pickup %@ at %@ %@ [Ridesharing] at 1 O'clock";
    }

    else
    {
      v29 = +[NSBundle mainBundle];
      v30 = v29;
      v31 = @"Pickup %@ at %@ %@ [Ridesharing]";
    }

    v41 = [v29 localizedStringForKey:v31 value:@"localized string not found" table:0];

    [NSString localizedStringWithFormat:v41, v21, v9, v12];
  }

  else
  {
    v32 = MapsSuggestionsTimeZone();
    v33 = v8;
    v34 = v32;
    if (!v32)
    {
      v34 = MapsSuggestionsTimeZone();
    }

    v35 = +[NSCalendar autoupdatingCurrentCalendar];
    v36 = [v35 componentsInTimeZone:v34 fromDate:v33];

    v37 = [v36 hour];
    if (v37 == 13 || v37 == 1)
    {
      v38 = +[NSBundle mainBundle];
      v39 = v38;
      v40 = @"Pickup date and time [Ridesharing] at 1 O'clock";
    }

    else
    {
      v38 = +[NSBundle mainBundle];
      v39 = v38;
      v40 = @"Pickup date and time [Ridesharing] not at 1";
    }

    v41 = [v38 localizedStringForKey:v40 value:@"localized string not found" table:0];

    [NSString localizedStringWithFormat:v41, v21, v9, v44];
  }
  v42 = ;

  return v42;
}

- (id)_completedTrayTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 completionStatus];
  v5 = [v4 isCanceled];

  if (v5)
  {
    v6 = [(RideBookingRideStatus *)self rideOption];
    v7 = [v6 name];

    if (v7)
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"%@ was canceled [Ridesharing]";
LABEL_8:
      v13 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
      v14 = [(RideBookingRideStatus *)self rideOption];
      v15 = [v14 name];
      v16 = [NSString localizedStringWithFormat:v13, v15];

      goto LABEL_12;
    }

    v17 = +[NSBundle mainBundle];
    v9 = v17;
    v18 = @"The current ride was canceled [Ridesharing]";
  }

  else
  {
    if ([(RideBookingRideStatus *)self _feedbackRequired])
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"ridesharing.tray.title.completed.feedbackRequired";
      goto LABEL_8;
    }

    v11 = [(RideBookingRideStatus *)self rideOption];
    v12 = [v11 name];

    if (v12)
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"%@ is complete [Ridesharing]";
      goto LABEL_8;
    }

    v17 = +[NSBundle mainBundle];
    v9 = v17;
    v18 = @"The current ride is complete [Ridesharing]";
  }

  v16 = [v17 localizedStringForKey:v18 value:@"localized string not found" table:0];
LABEL_12:

  return v16;
}

- (id)_ongoingTrayTitle
{
  v3 = [(RideBookingRideStatus *)self _destinationAddress];
  v4 = [(RideBookingRideStatus *)self rideOption];
  v5 = [v4 name];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 length];

    if (v7)
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"%@ to %@ [Ridesharing]" value:@"localized string not found" table:0];
      v10 = [(RideBookingRideStatus *)self rideOption];
      v11 = [v10 name];
      v12 = [NSString localizedStringWithFormat:v9, v11, v3];

      goto LABEL_10;
    }
  }

  else
  {
  }

  if ([v3 length])
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Ride to %@ [Ridesharing]" value:@"localized string not found" table:0];
    v13 = [NSString localizedStringWithFormat:v9, v3];
LABEL_9:
    v12 = v13;
    goto LABEL_10;
  }

  v8 = [(RideBookingRideStatus *)self rideOption];
  v14 = [v8 name];
  if (v14)
  {
    v13 = v14;
    v9 = v13;
    goto LABEL_9;
  }

  v16 = +[NSBundle mainBundle];
  v12 = [v16 localizedStringForKey:@"Current ride [Ridesharing]" value:@"localized string not found" table:0];

  v9 = 0;
LABEL_10:

  return v12;
}

- (id)_pickupTrayTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 estimatedPickupEndDate];

  if (v4)
  {
    [v4 timeIntervalSinceNow];
    v5 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];
    v6 = [(RideBookingRideStatus *)self rideOption];
    v7 = [v6 name];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 localizedStringForKey:@"%@ departs in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v11 = [(RideBookingRideStatus *)self rideOption];
      v12 = [v11 name];
      v13 = [NSString localizedStringWithFormat:v10, v12, v5];
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"Ride departs in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v13 = [NSString localizedStringWithFormat:v10, v5];
    }
  }

  else
  {
    v14 = [(RideBookingRideStatus *)self rideOption];
    v15 = [v14 name];

    v5 = +[NSBundle mainBundle];
    if (v15)
    {
      v16 = [v5 localizedStringForKey:@"%@ has arrived [Ridesharing]" value:@"localized string not found" table:0];
      v17 = [(RideBookingRideStatus *)self rideOption];
      v18 = [v17 name];
      v13 = [NSString localizedStringWithFormat:v16, v18];
    }

    else
    {
      v13 = [v5 localizedStringForKey:@"Ride has arrived [Ridesharing]" value:@"localized string not found" table:0];
    }
  }

  return v13;
}

- (id)_approachingPickupTrayTitle
{
  v3 = [(RideBookingRideStatus *)self rideOption];
  v4 = [v3 name];

  v5 = +[NSBundle mainBundle];
  if (v4)
  {
    v6 = [v5 localizedStringForKey:@"%@ is arriving [Ridesharing]" value:@"localized string not found" table:0];
    v7 = [(RideBookingRideStatus *)self rideOption];
    v8 = [v7 name];
    v9 = [NSString localizedStringWithFormat:v6, v8];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"Ride is arriving [Ridesharing]" value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_confirmedTrayTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 estimatedPickupDate];

  if (v4)
  {
    [v4 timeIntervalSinceNow];
    v5 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];
    v6 = [(RideBookingRideStatus *)self rideOption];
    v7 = [v6 name];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 localizedStringForKey:@"%@ arrives in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v11 = [(RideBookingRideStatus *)self rideOption];
      v12 = [v11 name];
      v13 = [NSString localizedStringWithFormat:v10, v12, v5];
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"Ride arrives in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v13 = [NSString localizedStringWithFormat:v10, v5];
    }
  }

  else
  {
    v14 = [(RideBookingRideStatus *)self rideOption];
    v15 = [v14 name];

    v5 = +[NSBundle mainBundle];
    if (v15)
    {
      v16 = [v5 localizedStringForKey:@"%@ arrives soon [Ridesharing]" value:@"localized string not found" table:0];
      v17 = [(RideBookingRideStatus *)self rideOption];
      v18 = [v17 name];
      v13 = [NSString localizedStringWithFormat:v16, v18];
    }

    else
    {
      v13 = [v5 localizedStringForKey:@"Ride arrives soon [Ridesharing]" value:@"localized string not found" table:0];
    }
  }

  return v13;
}

- (id)_receivedTrayTitle
{
  v3 = [(RideBookingRideStatus *)self rideOption];
  v4 = [v3 name];

  v5 = +[NSBundle mainBundle];
  if (v4)
  {
    v6 = [v5 localizedStringForKey:@"Requesting %@ [Ridesharing]" value:@"localized string not found" table:0];
    v7 = [(RideBookingRideStatus *)self rideOption];
    v8 = [v7 name];
    v9 = [NSString stringWithFormat:v6, v8];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"Requesting ride [Ridesharing-Default]" value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_scheduledTrayTitle
{
  v3 = [(RideBookingRideStatus *)self _destinationAddress];
  v4 = [(RideBookingRideStatus *)self _pickupAddress];
  v5 = [(RideBookingRideStatus *)self rideOption];
  v6 = [v5 name];

  v7 = [v3 length];
  if (v6)
  {
    if (v7)
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"%@ to %@ [Ridesharing]" value:@"localized string not found" table:0];
      v10 = [(RideBookingRideStatus *)self rideOption];
      v11 = [v10 name];
      [NSString localizedStringWithFormat:v9, v11, v3];
    }

    else
    {
      v13 = [v4 length];
      v14 = +[NSBundle mainBundle];
      v8 = v14;
      if (v13)
      {
        v9 = [v14 localizedStringForKey:@"%@ from %@ [Ridesharing]" value:@"localized string not found" table:0];
        v10 = [(RideBookingRideStatus *)self rideOption];
        v11 = [v10 name];
        [NSString localizedStringWithFormat:v9, v11, v4];
      }

      else
      {
        v9 = [v14 localizedStringForKey:@"%@ [Ridesharing]" value:@"localized string not found" table:0];
        v10 = [(RideBookingRideStatus *)self rideOption];
        v11 = [v10 name];
        [NSString localizedStringWithFormat:v9, v11, v17];
      }
    }
    v15 = ;

    goto LABEL_13;
  }

  if (v7)
  {
    v8 = +[NSBundle mainBundle];
    v12 = [v8 localizedStringForKey:@"Ride to %@ [Ridesharing]" value:@"localized string not found" table:0];
    [NSString localizedStringWithFormat:v12, v3];
    v15 = LABEL_10:;

    goto LABEL_13;
  }

  if ([v4 length])
  {
    v8 = +[NSBundle mainBundle];
    v12 = [v8 localizedStringForKey:@"Ride from %@ [Ridesharing]" value:@"localized string not found" table:0];
    [NSString localizedStringWithFormat:v12, v4];
    goto LABEL_10;
  }

  v8 = +[NSBundle mainBundle];
  v15 = [v8 localizedStringForKey:@"Ride" value:@"localized string not found" table:0];
LABEL_13:

  return v15;
}

- (NSString)traySubtitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 phase];

  v5 = &stru_1016631F0;
  if (v4 > 3)
  {
    if ((v4 - 5) >= 2)
    {
      if (v4 != 4)
      {
        goto LABEL_16;
      }

      v6 = [(RideBookingRideStatus *)self _completedTraySubtitle];
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  if ((v4 - 1) < 2)
  {
    if ([(RideBookingRideStatus *)self isScheduledRide])
    {
      v6 = [(RideBookingRideStatus *)self _scheduledTraySubtitle];
LABEL_15:
      v5 = v6;
      goto LABEL_16;
    }

LABEL_6:
    v7 = [(RideBookingRideStatus *)self _pickupAddress];
    if (![v7 length])
    {
LABEL_12:

      goto LABEL_16;
    }

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"Pickup at %@ [Ridesharing]";
LABEL_11:
    v15 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
    v5 = [NSString localizedStringWithFormat:v15, v7];

    goto LABEL_12;
  }

  if (v4 != 3)
  {
    goto LABEL_16;
  }

  v11 = [(RideBookingRideStatus *)self intentsRideStatus];
  v12 = [v11 estimatedDropOffDate];

  if (v12)
  {
    v13 = [(RideBookingRideStatus *)self intentsRideStatus];
    v14 = [v13 estimatedDropOffDate];
    [v14 timeIntervalSinceNow];
    v7 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"You’ll arrive in %@ [Ridesharing]";
    goto LABEL_11;
  }

  v5 = &stru_1016631F0;
LABEL_16:

  return v5;
}

- (id)_destinationAddress
{
  v2 = [(RideBookingRideStatus *)self dropoffLocation];
  v3 = [v2 _geoMapItem];
  v4 = [v3 name];

  return v4;
}

- (id)_pickupAddress
{
  v2 = [(RideBookingRideStatus *)self pickupLocation];
  v3 = [v2 _geoMapItem];
  v4 = [v3 name];

  return v4;
}

- (NSString)trayTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 phase];

  v5 = &stru_1016631F0;
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v5 = [(RideBookingRideStatus *)self _completedTrayTitle];
        break;
      case 5:
        v5 = [(RideBookingRideStatus *)self _approachingPickupTrayTitle];
        break;
      case 6:
        v5 = [(RideBookingRideStatus *)self _pickupTrayTitle];
        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        v5 = [(RideBookingRideStatus *)self _receivedTrayTitle];
        break;
      case 2:
        if ([(RideBookingRideStatus *)self isScheduledRide])
        {
          [(RideBookingRideStatus *)self _scheduledTrayTitle];
        }

        else
        {
          [(RideBookingRideStatus *)self _confirmedTrayTitle];
        }
        v5 = ;
        break;
      case 3:
        v5 = [(RideBookingRideStatus *)self _ongoingTrayTitle];
        break;
    }
  }

  return v5;
}

- (id)_completedTemplatedViewSubtitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 estimatedPickupDate];

  if ([(RideBookingRideStatus *)self _feedbackRequired])
  {
    if (v4)
    {
      if (qword_10195EC38 != -1)
      {
        dispatch_once(&qword_10195EC38, &stru_10164E728);
      }

      v5 = [qword_10195EC30 stringFromDate:v4];
      v22 = 0;
      v6 = +[NSCalendar autoupdatingCurrentCalendar];
      v7 = +[NSCalendar autoupdatingCurrentCalendar];
      v8 = [v7 timeZone];
      v9 = [v6 _navigation_transitRelativeDateStringForDate:v4 context:5 inTimeZone:v8 outUsedFormat:&v22];

      v10 = MapsSuggestionsTimeZone();
      v11 = v4;
      v12 = v10;
      if (!v10)
      {
        v12 = MapsSuggestionsTimeZone();
      }

      v13 = +[NSCalendar autoupdatingCurrentCalendar];
      v14 = [v13 componentsInTimeZone:v12 fromDate:v11];

      v15 = [v14 hour];
      if (v15 == 1 || v15 == 13)
      {
        v17 = @"Pickup date and time [Ridesharing] at 1";
      }

      else
      {
        v17 = @"Pickup date and time [Ridesharing] not at 1";
      }

      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:v17 value:@"localized string not found" table:0];

      v20 = [NSString localizedStringWithFormat:v19, v9, v5];
    }

    else
    {
      v20 = &stru_1016631F0;
    }
  }

  else
  {
    v20 = [(RideBookingRideStatus *)self _completedTraySubtitle];
  }

  return v20;
}

- (id)_ongoingTemplatedViewSubtitle
{
  v2 = [(RideBookingRideStatus *)self intentsRideStatus];
  v3 = [v2 dropOffLocation];
  v4 = [v3 _geoMapItem];
  v5 = [v4 name];

  if ([v5 length])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Ridesharing] templated view ongoing subtitle" value:@"localized string not found" table:0];
    v8 = [NSString localizedStringWithFormat:v7, v5];
  }

  else
  {
    v8 = &stru_1016631F0;
  }

  return v8;
}

- (id)_confirmedTemplatedViewSubtitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 vehicle];
  v5 = [v4 registrationPlate];

  v6 = [(RideBookingRideStatus *)self intentsRideStatus];
  v7 = [v6 vehicle];
  v8 = [v7 manufacturer];

  v9 = [(RideBookingRideStatus *)self intentsRideStatus];
  v10 = [v9 vehicle];
  v11 = [v10 model];

  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;
  if (v8 && v11)
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"[Ridesharing] templated view vehicle make" value:@"localized string not found" table:0];
    v13 = [NSString localizedStringWithFormat:v15, v8, v11];
  }

  if (v13 && v5)
  {
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"[Ridesharing] templated view vehicle details" value:@"localized string not found" table:0];
    v18 = [NSString localizedStringWithFormat:v17, v13, v5];
  }

  else
  {
    v19 = &stru_1016631F0;
    if (v5)
    {
      v19 = v5;
    }

    if (v13)
    {
      v19 = v13;
    }

    v18 = v19;
  }

  return v18;
}

- (id)_receivedTemplatedViewSubtitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Ridesharing] contacting nearby drivers..." value:@"localized string not found" table:0];

  return v3;
}

- (id)_completedTemplatedViewTitle
{
  if ([(RideBookingRideStatus *)self _feedbackRequired])
  {
    v3 = [(RideBookingRideStatus *)self _driverName];
    v4 = [v3 length];

    v5 = +[NSBundle mainBundle];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 localizedStringForKey:@"ridesharing.tray.subtitle.completed.feedbackRequired.driverName" value:@"localized string not found" table:0];
      v8 = [(RideBookingRideStatus *)self _driverName];
      v9 = [NSString localizedStringWithFormat:v7, v8];
    }

    else
    {
      v7 = [v5 localizedStringForKey:@"ridesharing.templated.title.completed.feedbackRequired.rideName" value:@"localized string not found" table:0];
      v8 = [(RideBookingRideStatus *)self rideOption];
      v10 = [v8 name];
      v9 = [NSString localizedStringWithFormat:v7, v10];
    }
  }

  else
  {
    v9 = [(RideBookingRideStatus *)self _completedTrayTitle];
  }

  return v9;
}

- (id)_ongoingTemplatedViewTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 estimatedDropOffDate];

  if (v4)
  {
    [v4 timeIntervalSinceNow];
    v5 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Ridesharing] You’ll arrive in %@" value:@"localized string not found" table:0];
    v8 = [NSString localizedStringWithFormat:v7, v5];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v8 = [v5 localizedStringForKey:@"[Ridesharing] You’ll arrive soon" value:@"localized string not found" table:0];
  }

  return v8;
}

- (id)_pickupTemplatedViewTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 estimatedPickupEndDate];

  if (v4)
  {
    [v4 timeIntervalSinceNow];
    v5 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];
    v6 = [(RideBookingRideStatus *)self rideOption];
    v7 = [v6 name];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 localizedStringForKey:@"Your %@ departs in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v11 = [(RideBookingRideStatus *)self rideOption];
      v12 = [v11 name];
      v13 = [NSString localizedStringWithFormat:v10, v12, v5];
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"Your ride departs in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v13 = [NSString localizedStringWithFormat:v10, v5];
    }
  }

  else
  {
    v14 = [(RideBookingRideStatus *)self rideOption];
    v15 = [v14 name];

    v5 = +[NSBundle mainBundle];
    if (v15)
    {
      v16 = [v5 localizedStringForKey:@"Your %@ has arrived [Ridesharing]" value:@"localized string not found" table:0];
      v17 = [(RideBookingRideStatus *)self rideOption];
      v18 = [v17 name];
      v13 = [NSString localizedStringWithFormat:v16, v18];
    }

    else
    {
      v13 = [v5 localizedStringForKey:@"Your ride has arrived [Ridesharing]" value:@"localized string not found" table:0];
    }
  }

  return v13;
}

- (id)_approachingPickupTemplatedViewTitle
{
  v3 = [(RideBookingRideStatus *)self rideOption];
  v4 = [v3 name];

  v5 = +[NSBundle mainBundle];
  if (v4)
  {
    v6 = [v5 localizedStringForKey:@"Your %@ is arriving now [Ridesharing]" value:@"localized string not found" table:0];
    v7 = [(RideBookingRideStatus *)self rideOption];
    v8 = [v7 name];
    v9 = [NSString localizedStringWithFormat:v6, v8];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"Your ride is arriving now [Ridesharing]" value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_confirmedTemplatedViewTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 estimatedPickupDate];

  if (v4)
  {
    [v4 timeIntervalSinceNow];
    v5 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];
    v6 = [(RideBookingRideStatus *)self rideOption];
    v7 = [v6 name];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 localizedStringForKey:@"Your %@ arrives in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v11 = [(RideBookingRideStatus *)self rideOption];
      v12 = [v11 name];
      v13 = [NSString localizedStringWithFormat:v10, v12, v5];
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"Your ride arrives in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v13 = [NSString localizedStringWithFormat:v10, v5];
    }
  }

  else
  {
    v14 = [(RideBookingRideStatus *)self rideOption];
    v15 = [v14 name];

    v5 = +[NSBundle mainBundle];
    if (v15)
    {
      v16 = [v5 localizedStringForKey:@"Your %@ arrives soon [Ridesharing]" value:@"localized string not found" table:0];
      v17 = [(RideBookingRideStatus *)self rideOption];
      v18 = [v17 name];
      v13 = [NSString localizedStringWithFormat:v16, v18];
    }

    else
    {
      v13 = [v5 localizedStringForKey:@"Your ride arrives soon [Ridesharing]" value:@"localized string not found" table:0];
    }
  }

  return v13;
}

- (id)_receivedTemplatedViewTitle
{
  v3 = [(RideBookingRideStatus *)self rideOption];
  v4 = [v3 name];

  v5 = +[NSBundle mainBundle];
  if (v4)
  {
    v6 = [v5 localizedStringForKey:@"Requesting your %@ [Ridesharing]" value:@"localized string not found" table:0];
    v7 = [(RideBookingRideStatus *)self rideOption];
    v8 = [v7 name];
    v9 = [NSString stringWithFormat:v6, v8];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"Requesting ride proactive [Ridesharing-Default]" value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_minuteStringForSeconds:(double)a3
{
  v3 = fmax(a3, 60.0);
  v4 = [(RideBookingRideStatus *)self timeFormatter];
  v5 = [v4 stringFromTimeInterval:v3];

  return v5;
}

- (id)timeFormatter
{
  if (qword_10195EC28 != -1)
  {
    dispatch_once(&qword_10195EC28, &stru_10164E708);
  }

  v3 = qword_10195EC20;

  return v3;
}

- (NSString)templatedViewSubtitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 phase];

  v5 = &stru_1016631F0;
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v5 = [(RideBookingRideStatus *)self _completedTemplatedViewSubtitle];
        break;
      case 5:
        v5 = [(RideBookingRideStatus *)self _approachingPickupTemplatedViewSubtitle];
        break;
      case 6:
        v5 = [(RideBookingRideStatus *)self _pickupTemplatedViewSubtitle];
        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        v5 = [(RideBookingRideStatus *)self _receivedTemplatedViewSubtitle];
        break;
      case 2:
        v5 = [(RideBookingRideStatus *)self _confirmedTemplatedViewSubtitle];
        break;
      case 3:
        v5 = [(RideBookingRideStatus *)self _ongoingTemplatedViewSubtitle];
        break;
    }
  }

  return v5;
}

- (NSString)templatedViewTitle
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 phase];

  v5 = &stru_1016631F0;
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v5 = [(RideBookingRideStatus *)self _completedTemplatedViewTitle];
        break;
      case 5:
        v5 = [(RideBookingRideStatus *)self _approachingPickupTemplatedViewTitle];
        break;
      case 6:
        v5 = [(RideBookingRideStatus *)self _pickupTemplatedViewTitle];
        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        v5 = [(RideBookingRideStatus *)self _receivedTemplatedViewTitle];
        break;
      case 2:
        v5 = [(RideBookingRideStatus *)self _confirmedTemplatedViewTitle];
        break;
      case 3:
        v5 = [(RideBookingRideStatus *)self _ongoingTemplatedViewTitle];
        break;
    }
  }

  return v5;
}

- (UIImage)templatedViewAppIcon
{
  v2 = [(RideBookingRideStatus *)self application];
  v3 = [v2 iconWithFormat:2];

  return v3;
}

- (BOOL)isScheduledRide
{
  if ([(RideBookingRideStatus *)self phase]!= 2)
  {
    return 0;
  }

  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 scheduledPickupTime];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_feedbackRequired
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 completionStatus];
  if (([v4 feedbackType] & 2) != 0)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v5 = [(RideBookingRideStatus *)self intentsRideStatus];
    v6 = [v5 completionStatus];
    v7 = [v6 feedbackType] & 1;
  }

  return v7;
}

- (BOOL)_showFeedbackType:(unint64_t)a3
{
  v4 = [(RideBookingRideStatus *)self intentsRideStatus];
  v5 = [v4 completionStatus];

  v6 = [v5 isCompleted] && (objc_msgSend(v5, "feedbackType") & a3) != 0;
  return v6;
}

- (BOOL)shouldShowFeedbackControls
{
  v3 = [(RideBookingRideStatus *)self intentsRideStatus];
  v4 = [v3 completionStatus];
  if (![v4 isCompleted])
  {

    return 0;
  }

  if (![(RideBookingRideStatus *)self shouldShowTippingOptions])
  {
    v6 = [(RideBookingRideStatus *)self shouldShowRatingOptions];

    return (v6 & 1) != 0;
  }

  return 1;
}

@end