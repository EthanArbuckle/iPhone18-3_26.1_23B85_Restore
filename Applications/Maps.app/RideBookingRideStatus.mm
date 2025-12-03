@interface RideBookingRideStatus
+ (RideBookingRideStatus)statusWithApplication:(id)application error:(unint64_t)error;
- (BOOL)_feedbackRequired;
- (BOOL)_shouldShowPayment;
- (BOOL)_showFeedbackType:(unint64_t)type;
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
- (RideBookingRideStatus)initWithApplication:(id)application rideOption:(id)option canceled:(BOOL)canceled canceledByService:(BOOL)service userActivityForCanceling:(id)canceling identifier:(id)identifier phase:(unint64_t)phase error:(unint64_t)self0;
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
- (id)_minuteStringForSeconds:(double)seconds;
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
- (void)setGetRideStatusIntentResponse:(id)response;
- (void)setIntentsRideStatus:(id)status;
- (void)setRequestRideIntentResponse:(id)response;
@end

@implementation RideBookingRideStatus

- (void)setRequestRideIntentResponse:(id)response
{
  value = response;
  requestRideIntentResponse = [(RideBookingRideStatus *)self requestRideIntentResponse];
  if (([requestRideIntentResponse isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_10121321A, value, 3);
  }
}

- (void)setGetRideStatusIntentResponse:(id)response
{
  value = response;
  getRideStatusIntentResponse = [(RideBookingRideStatus *)self getRideStatusIntentResponse];
  if (([getRideStatusIntentResponse isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_101213219, value, 3);
  }
}

- (void)setIntentsRideStatus:(id)status
{
  value = status;
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  if (([intentsRideStatus isEqual:value] & 1) == 0)
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
  isValidRide = [(RideBookingRideStatus *)self isValidRide];
  if (isValidRide)
  {
    LOBYTE(isValidRide) = [(RideBookingRideStatus *)self phase]!= 4;
  }

  return isValidRide;
}

- (BOOL)isValidRide
{
  identifier = [(RideBookingRideStatus *)self identifier];
  v4 = identifier && ![(RideBookingRideStatus *)self isCanceledByUser]&& [(RideBookingRideStatus *)self phase]!= 0;

  return v4;
}

- (RideBookingRideStatus)initWithApplication:(id)application rideOption:(id)option canceled:(BOOL)canceled canceledByService:(BOOL)service userActivityForCanceling:(id)canceling identifier:(id)identifier phase:(unint64_t)phase error:(unint64_t)self0
{
  applicationCopy = application;
  optionCopy = option;
  cancelingCopy = canceling;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = RideBookingRideStatus;
  v20 = [(RideBookingRideStatus *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_application, applicationCopy);
    objc_storeStrong(&v21->_rideOption, option);
    v21->_rideStatusIsCanceled = canceled;
    v21->_rideStatusIsCanceledByService = service;
    v21->_phase = phase;
    v21->_rideStatusError = error;
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    objc_storeStrong(&v21->_userActivityForCanceling, canceling);
  }

  return v21;
}

+ (RideBookingRideStatus)statusWithApplication:(id)application error:(unint64_t)error
{
  applicationCopy = application;
  v6 = [[RideBookingRideStatus alloc] initWithApplication:applicationCopy rideOption:0 canceled:0 canceledByService:0 userActivityForCanceling:0 identifier:0 phase:0 error:error];

  return v6;
}

- (NSArray)intentResponseFailures
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 setIntent:4];
  [v4 setFailure:0];
  rideStatusError = [(RideBookingRideStatus *)self rideStatusError];
  if (rideStatusError <= 8 && ((0x1FDu >> rideStatusError) & 1) != 0)
  {
    [v4 setFailure:dword_1012156F4[rideStatusError]];
  }

  if ([v4 failure])
  {
    v6 = [v4 copy];
    [v3 addObject:v6];
  }

  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  rideIdentifier = [intentsRideStatus rideIdentifier];

  if (!rideIdentifier)
  {
    [v4 setFailure:13];
    v9 = [v4 copy];
    [v3 addObject:v9];
  }

  intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
  rideOption = [intentsRideStatus2 rideOption];
  name = [rideOption name];
  v13 = [name length];

  if (!v13)
  {
    [v4 setFailure:11];
    v14 = [v4 copy];
    [v3 addObject:v14];
  }

  intentsRideStatus3 = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedPickupDate = [intentsRideStatus3 estimatedPickupDate];

  if (!estimatedPickupDate)
  {
    [v4 setFailure:12];
    v17 = [v4 copy];
    [v3 addObject:v17];
  }

  intentsRideStatus4 = [(RideBookingRideStatus *)self intentsRideStatus];
  vehicle = [intentsRideStatus4 vehicle];
  location = [vehicle location];
  v21 = location;
  if (location && ([location coordinate], latitude = v33.latitude, longitude = v33.longitude, CLLocationCoordinate2DIsValid(v33)) && fabs(latitude) > 2.22044605e-16)
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
  intentsRideStatus5 = [(RideBookingRideStatus *)self intentsRideStatus];
  if (intentsRideStatus5)
  {
    v26 = intentsRideStatus5;
    intentsRideStatus6 = [(RideBookingRideStatus *)self intentsRideStatus];
    phase = [intentsRideStatus6 phase];

    if (!phase)
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus = [intentsRideStatus completionStatus];
  defaultTippingOptions = [completionStatus defaultTippingOptions];
  allObjects = [defaultTippingOptions allObjects];
  v7 = sub_100021DB0(allObjects, &stru_10164E7D0);

  intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus2 = [intentsRideStatus2 completionStatus];
  if ([completionStatus2 isCompleted] && -[RideBookingRideStatus shouldShowTippingOptions](self, "shouldShowTippingOptions"))
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedDropOffDate = [intentsRideStatus estimatedDropOffDate];

  return estimatedDropOffDate;
}

- (NSNumber)pickupETAMinutes
{
  selfCopy = self;
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedPickupDate = [intentsRideStatus estimatedPickupDate];

  if (estimatedPickupDate)
  {
    intentsRideStatus2 = [selfCopy intentsRideStatus];
    estimatedPickupDate2 = [intentsRideStatus2 estimatedPickupDate];
    [estimatedPickupDate2 timeIntervalSinceNow];
    if (round(v7 * 0.0166666667) < 1.0)
    {
      selfCopy = 1;
    }

    else
    {
      intentsRideStatus3 = [selfCopy intentsRideStatus];
      estimatedPickupDate3 = [intentsRideStatus3 estimatedPickupDate];
      [estimatedPickupDate3 timeIntervalSinceNow];
      LODWORD(selfCopy) = vcvtad_u64_f64(v10 * 0.0166666667);
    }

    v11 = [NSNumber numberWithUnsignedInt:selfCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSDateComponents)scheduledPickupWindowStartDateComponents
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  scheduledPickupTime = [intentsRideStatus scheduledPickupTime];
  startDateComponents = [scheduledPickupTime startDateComponents];

  return startDateComponents;
}

- (CLPlacemark)dropoffLocation
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  dropOffLocation = [intentsRideStatus dropOffLocation];

  return dropOffLocation;
}

- (CLPlacemark)pickupLocation
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  pickupLocation = [intentsRideStatus pickupLocation];

  return pickupLocation;
}

- (UIImage)vehicleImage
{
  v3 = +[RideBookingAccessProxy imageCache];
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  vehicle = [intentsRideStatus vehicle];
  mapAnnotationImage = [vehicle mapAnnotationImage];
  _identifier = [mapAnnotationImage _identifier];
  v8 = [v3 imageForKey:_identifier];

  return v8;
}

- (CLLocation)vehicleLocation
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  vehicle = [intentsRideStatus vehicle];
  location = [vehicle location];

  return location;
}

- (id)_driverName
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  driver = [intentsRideStatus driver];
  nameComponents = [driver nameComponents];

  if (nameComponents)
  {
    intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
    driver2 = [intentsRideStatus2 driver];
    nameComponents2 = [driver2 nameComponents];
    v9 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:nameComponents2 style:0 options:0];
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  driver = [intentsRideStatus driver];
  image = [driver image];
  _identifier = [image _identifier];
  v8 = [v3 imageForKey:_identifier];

  return v8;
}

- (NSString)driverPhoneNumber
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  driver = [intentsRideStatus driver];
  phoneNumber = [driver phoneNumber];

  return phoneNumber;
}

- (NSString)contactCommandTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Contact Driver" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)cancelCommandTitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  phase = [intentsRideStatus phase];

  if (phase > 2)
  {
    if ((phase - 5) < 2 || phase == 3)
    {
LABEL_11:
      v5 = @"Cancel Ride";
      goto LABEL_13;
    }

    if (phase != 4)
    {
      goto LABEL_14;
    }

LABEL_10:
    v5 = @"[Ridesharing] cancel button";
    goto LABEL_13;
  }

  if (!phase)
  {
    goto LABEL_10;
  }

  if (phase == 1)
  {
    v5 = @"Cancel Request";
    goto LABEL_13;
  }

  if (phase != 2)
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
  intentsRideStatus = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];

LABEL_14:

  return intentsRideStatus;
}

- (NSString)openInAppCommandTitle
{
  application = [(RideBookingRideStatus *)self application];
  name = [application name];

  v5 = +[NSBundle mainBundle];
  if (name)
  {
    v6 = [v5 localizedStringForKey:@"Open in %@ [Ridesharing]" value:@"localized string not found" table:0];
    application2 = [(RideBookingRideStatus *)self application];
    name2 = [application2 name];
    v9 = [NSString stringWithFormat:v6, name2];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"Open in app [Ridesharing]" value:@"localized string not found" table:0];
  }

  return v9;
}

- (BOOL)_shouldShowPayment
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus = [intentsRideStatus completionStatus];
  paymentAmount = [completionStatus paymentAmount];
  amount = [paymentAmount amount];

  intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus2 = [intentsRideStatus2 completionStatus];
  paymentAmount2 = [completionStatus2 paymentAmount];
  currencyCode = [paymentAmount2 currencyCode];

  if (amount)
  {
    v11 = [amount compare:&off_1016E94A0] == 1;
  }

  else
  {
    v11 = 0;
  }

  if (amount)
  {
    v12 = currencyCode == 0;
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus = [intentsRideStatus completionStatus];

  if ([completionStatus isCompleted] && objc_msgSend(completionStatus, "isOutstanding") && -[RideBookingRideStatus _shouldShowPayment](self, "_shouldShowPayment"))
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[ridesharing] pay %@ now" value:@"localized string not found" table:0];
    paymentAmount = [completionStatus paymentAmount];
    amount = [paymentAmount amount];
    paymentAmount2 = [completionStatus paymentAmount];
    currencyCode = [paymentAmount2 currencyCode];
    v11 = [NSString _navigation_formattedStringForPriceValueWithAmount:amount currencyCode:currencyCode showsCurrencySymbol:1];
    v12 = [NSString localizedStringWithFormat:v6, v11];
  }

  else
  {
    application = [(RideBookingRideStatus *)self application];
    name = [application name];

    v5 = +[NSBundle mainBundle];
    if (name)
    {
      v15 = [v5 localizedStringForKey:@"[ridesharing] view in %@" value:@"localized string not found" table:0];
      application2 = [(RideBookingRideStatus *)self application];
      name2 = [application2 name];
      v12 = [NSString localizedStringWithFormat:v15, name2];
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  additionalActionActivities = [intentsRideStatus additionalActionActivities];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C420BC;
  v7[3] = &unk_10164E790;
  v7[4] = self;
  v5 = sub_100021DB0(additionalActionActivities, v7);

  return v5;
}

- (id)_completedCardTertiaryTitle
{
  if ([(RideBookingRideStatus *)self _shouldShowPayment])
  {
    intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
    completionStatus = [intentsRideStatus completionStatus];
    paymentAmount = [completionStatus paymentAmount];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Total fare is card %@ [Ridesharing]" value:@"localized string not found" table:0];
    amount = [paymentAmount amount];
    currencyCode = [paymentAmount currencyCode];
    v10 = [NSString _navigation_formattedStringForPriceValueWithAmount:amount currencyCode:currencyCode];
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus = [intentsRideStatus completionStatus];
  isMissedPickup = [completionStatus isMissedPickup];

  if (isMissedPickup)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Driver has departed card [Ridesharing]";
  }

  else
  {
    intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
    completionStatus2 = [intentsRideStatus2 completionStatus];
    isCanceled = [completionStatus2 isCanceled];

    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (isCanceled)
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedDropOffDate = [intentsRideStatus estimatedDropOffDate];

  if (estimatedDropOffDate)
  {
    intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
    estimatedDropOffDate2 = [intentsRideStatus2 estimatedDropOffDate];
    [estimatedDropOffDate2 timeIntervalSinceNow];
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  scheduledPickupTime = [intentsRideStatus scheduledPickupTime];
  startDateComponents = [scheduledPickupTime startDateComponents];
  v5 = [NSString _maps_ridesharingScheduledPickupWindowStart:startDateComponents partySize:0];

  return v5;
}

- (id)_receivedCardSubtitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedPickupDate = [intentsRideStatus estimatedPickupDate];
  if (estimatedPickupDate)
  {
    intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
    estimatedPickupDate2 = [intentsRideStatus2 estimatedPickupDate];
    [estimatedPickupDate2 timeIntervalSinceNow];
    v10 = round(v9 * 0.0166666667);
    v11 = 1.0;
    if (v10 >= 1.0)
    {
      intentsRideStatus3 = [(RideBookingRideStatus *)self intentsRideStatus];
      estimatedPickupDate3 = [intentsRideStatus3 estimatedPickupDate];
      [estimatedPickupDate3 timeIntervalSinceNow];
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
  rideOption = [(RideBookingRideStatus *)self rideOption];
  intentsRideOption = [rideOption intentsRideOption];
  v4 = [RidesharingFareLineItem _fareItemsFromRideOption:intentsRideOption];

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
  rideOption = [(RideBookingRideStatus *)self rideOption];
  specialPricingBadge = [rideOption specialPricingBadge];

  return specialPricingBadge;
}

- (NSString)cardTertiaryTitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  phase = [intentsRideStatus phase];

  priceRange = &stru_1016631F0;
  if (phase <= 6)
  {
    if (((1 << phase) & 0x6E) != 0)
    {
      rideOption = [(RideBookingRideStatus *)self rideOption];
      priceRange = [rideOption priceRange];
    }

    else if (phase == 4)
    {
      priceRange = [(RideBookingRideStatus *)self _completedCardTertiaryTitle];
    }
  }

  return priceRange;
}

- (NSString)cardSubtitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  phase = [intentsRideStatus phase];

  _completedCardSubtitle = &stru_1016631F0;
  if (phase > 3)
  {
    switch(phase)
    {
      case 4:
        _completedCardSubtitle = [(RideBookingRideStatus *)self _completedCardSubtitle];
        break;
      case 5:
        _completedCardSubtitle = [(RideBookingRideStatus *)self _approachingPickupCardSubtitle];
        break;
      case 6:
        _completedCardSubtitle = [(RideBookingRideStatus *)self _pickupCardSubtitle];
        break;
    }
  }

  else
  {
    switch(phase)
    {
      case 1:
        _completedCardSubtitle = [(RideBookingRideStatus *)self _receivedCardSubtitle];
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
        _completedCardSubtitle = ;
        break;
      case 3:
        _completedCardSubtitle = [(RideBookingRideStatus *)self _ongoingCardSubtitle];
        break;
    }
  }

  return _completedCardSubtitle;
}

- (NSString)cardTitle
{
  rideOption = [(RideBookingRideStatus *)self rideOption];
  name = [rideOption name];

  return name;
}

- (UIImage)cardIcon
{
  application = [(RideBookingRideStatus *)self application];
  v3 = [application iconWithFormat:0];

  return v3;
}

- (NSString)bannerAttributionTitle
{
  application = [(RideBookingRideStatus *)self application];
  name = [application name];

  v5 = +[NSBundle mainBundle];
  if (name)
  {
    v6 = [v5 localizedStringForKey:@"[ridesharing] banner view attribution" value:@"localized string not found" table:0];
    application2 = [(RideBookingRideStatus *)self application];
    name2 = [application2 name];
    v9 = [NSString localizedStringWithFormat:v6, name2];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"[ridesharing] banner view attribution no app name" value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_completedTraySubtitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus = [intentsRideStatus completionStatus];
  isMissedPickup = [completionStatus isMissedPickup];

  if (isMissedPickup)
  {
    v6 = +[NSBundle mainBundle];
    paymentAmount = v6;
    v8 = @"Driver has departed proactive [Ridesharing]";
LABEL_5:
    v12 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
LABEL_6:

    goto LABEL_7;
  }

  intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus2 = [intentsRideStatus2 completionStatus];
  isCanceled = [completionStatus2 isCanceled];

  if (isCanceled)
  {
    v6 = +[NSBundle mainBundle];
    paymentAmount = v6;
    v8 = @"Trip was canceled proactive [Ridesharing]";
    goto LABEL_5;
  }

  if (![(RideBookingRideStatus *)self _feedbackRequired])
  {
    if (![(RideBookingRideStatus *)self _shouldShowPayment])
    {
      v6 = +[NSBundle mainBundle];
      paymentAmount = v6;
      v8 = @"Arrived proactive [Ridesharing]";
      goto LABEL_5;
    }

    intentsRideStatus3 = [(RideBookingRideStatus *)self intentsRideStatus];
    completionStatus3 = [intentsRideStatus3 completionStatus];
    paymentAmount = [completionStatus3 paymentAmount];

    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"Total fare is %@ proactive [Ridesharing]" value:@"localized string not found" table:0];
    amount = [paymentAmount amount];
    currencyCode = [paymentAmount currencyCode];
    v25 = [NSString _navigation_formattedStringForPriceValueWithAmount:amount currencyCode:currencyCode];
    v12 = [NSString localizedStringWithFormat:v22, v25];

LABEL_15:
    goto LABEL_6;
  }

  _driverName = [(RideBookingRideStatus *)self _driverName];
  v15 = [_driverName length];

  if (!v15)
  {
    intentsRideStatus4 = [(RideBookingRideStatus *)self intentsRideStatus];
    paymentAmount = [intentsRideStatus4 estimatedPickupDate];

    if (!paymentAmount)
    {
      v12 = &stru_1016631F0;
      goto LABEL_6;
    }

    if (qword_10195EC58 != -1)
    {
      dispatch_once(&qword_10195EC58, &stru_10164E768);
    }

    v27 = +[NSCalendar autoupdatingCurrentCalendar];
    v28 = [v27 isDateInToday:paymentAmount];

    if (!v28)
    {
      v45 = 0;
      v39 = +[NSCalendar autoupdatingCurrentCalendar];
      v40 = +[NSCalendar autoupdatingCurrentCalendar];
      timeZone = [v40 timeZone];
      v42 = [v39 _navigation_transitRelativeDateStringForDate:paymentAmount context:5 inTimeZone:timeZone outUsedFormat:&v45];

      v43 = +[NSBundle mainBundle];
      v44 = [v43 localizedStringForKey:@"ridesharing.completed.feedbackRequired.rideDay" value:@"localized string not found" table:0];
      v12 = [NSString localizedStringWithFormat:v44, v42];

      goto LABEL_6;
    }

    v21 = [qword_10195EC50 stringFromDate:paymentAmount];
    v29 = MapsSuggestionsTimeZone();
    v30 = paymentAmount;
    v31 = v29;
    if (!v29)
    {
      v31 = MapsSuggestionsTimeZone();
    }

    v32 = +[NSCalendar autoupdatingCurrentCalendar];
    v33 = [v32 componentsInTimeZone:v31 fromDate:v30];

    hour = [v33 hour];
    if (hour == 1 || hour == 13)
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
  _driverName2 = [(RideBookingRideStatus *)self _driverName];
  v12 = [NSString localizedStringWithFormat:v17, _driverName2];

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

  scheduledPickupWindowStartDateComponents = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
  timeZone = [scheduledPickupWindowStartDateComponents timeZone];
  [qword_10195EC40 setTimeZone:timeZone];

  v6 = +[NSCalendar autoupdatingCurrentCalendar];
  scheduledPickupWindowStartDateComponents2 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
  v8 = [v6 dateFromComponents:scheduledPickupWindowStartDateComponents2];

  v9 = [qword_10195EC40 stringFromDate:v8];
  scheduledPickupWindowStartDateComponents3 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
  timeZone2 = [scheduledPickupWindowStartDateComponents3 timeZone];
  abbreviation = [timeZone2 abbreviation];

  v13 = +[NSCalendar autoupdatingCurrentCalendar];
  timeZone3 = [v13 timeZone];
  scheduledPickupWindowStartDateComponents4 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
  timeZone4 = [scheduledPickupWindowStartDateComponents4 timeZone];
  v17 = [timeZone3 isEqualToTimeZone:timeZone4];

  if (v17)
  {

    abbreviation = 0;
  }

  v45 = 0;
  v18 = +[NSCalendar autoupdatingCurrentCalendar];
  scheduledPickupWindowStartDateComponents5 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
  timeZone5 = [scheduledPickupWindowStartDateComponents5 timeZone];
  v21 = [v18 _navigation_transitRelativeDateStringForDate:v8 context:5 inTimeZone:timeZone5 outUsedFormat:&v45];

  if (abbreviation)
  {
    scheduledPickupWindowStartDateComponents6 = [(RideBookingRideStatus *)self scheduledPickupWindowStartDateComponents];
    timeZone6 = [scheduledPickupWindowStartDateComponents6 timeZone];
    v24 = v8;
    v25 = timeZone6;
    if (!timeZone6)
    {
      v25 = MapsSuggestionsTimeZone();
    }

    v26 = +[NSCalendar autoupdatingCurrentCalendar];
    v27 = [v26 componentsInTimeZone:v25 fromDate:v24];

    hour = [v27 hour];
    if (hour == 13 || hour == 1)
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

    [NSString localizedStringWithFormat:v41, v21, v9, abbreviation];
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

    hour2 = [v36 hour];
    if (hour2 == 13 || hour2 == 1)
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus = [intentsRideStatus completionStatus];
  isCanceled = [completionStatus isCanceled];

  if (isCanceled)
  {
    rideOption = [(RideBookingRideStatus *)self rideOption];
    name = [rideOption name];

    if (name)
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"%@ was canceled [Ridesharing]";
LABEL_8:
      v13 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
      rideOption2 = [(RideBookingRideStatus *)self rideOption];
      name2 = [rideOption2 name];
      v16 = [NSString localizedStringWithFormat:v13, name2];

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

    rideOption3 = [(RideBookingRideStatus *)self rideOption];
    name3 = [rideOption3 name];

    if (name3)
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
  _destinationAddress = [(RideBookingRideStatus *)self _destinationAddress];
  rideOption = [(RideBookingRideStatus *)self rideOption];
  name = [rideOption name];
  if (name)
  {
    v6 = name;
    v7 = [_destinationAddress length];

    if (v7)
    {
      rideOption3 = +[NSBundle mainBundle];
      v9 = [rideOption3 localizedStringForKey:@"%@ to %@ [Ridesharing]" value:@"localized string not found" table:0];
      rideOption2 = [(RideBookingRideStatus *)self rideOption];
      name2 = [rideOption2 name];
      v12 = [NSString localizedStringWithFormat:v9, name2, _destinationAddress];

      goto LABEL_10;
    }
  }

  else
  {
  }

  if ([_destinationAddress length])
  {
    rideOption3 = +[NSBundle mainBundle];
    v9 = [rideOption3 localizedStringForKey:@"Ride to %@ [Ridesharing]" value:@"localized string not found" table:0];
    v13 = [NSString localizedStringWithFormat:v9, _destinationAddress];
LABEL_9:
    v12 = v13;
    goto LABEL_10;
  }

  rideOption3 = [(RideBookingRideStatus *)self rideOption];
  name3 = [rideOption3 name];
  if (name3)
  {
    v13 = name3;
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedPickupEndDate = [intentsRideStatus estimatedPickupEndDate];

  if (estimatedPickupEndDate)
  {
    [estimatedPickupEndDate timeIntervalSinceNow];
    v5 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];
    rideOption = [(RideBookingRideStatus *)self rideOption];
    name = [rideOption name];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (name)
    {
      v10 = [v8 localizedStringForKey:@"%@ departs in %@ [Ridesharing]" value:@"localized string not found" table:0];
      rideOption2 = [(RideBookingRideStatus *)self rideOption];
      name2 = [rideOption2 name];
      v13 = [NSString localizedStringWithFormat:v10, name2, v5];
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"Ride departs in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v13 = [NSString localizedStringWithFormat:v10, v5];
    }
  }

  else
  {
    rideOption3 = [(RideBookingRideStatus *)self rideOption];
    name3 = [rideOption3 name];

    v5 = +[NSBundle mainBundle];
    if (name3)
    {
      v16 = [v5 localizedStringForKey:@"%@ has arrived [Ridesharing]" value:@"localized string not found" table:0];
      rideOption4 = [(RideBookingRideStatus *)self rideOption];
      name4 = [rideOption4 name];
      v13 = [NSString localizedStringWithFormat:v16, name4];
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
  rideOption = [(RideBookingRideStatus *)self rideOption];
  name = [rideOption name];

  v5 = +[NSBundle mainBundle];
  if (name)
  {
    v6 = [v5 localizedStringForKey:@"%@ is arriving [Ridesharing]" value:@"localized string not found" table:0];
    rideOption2 = [(RideBookingRideStatus *)self rideOption];
    name2 = [rideOption2 name];
    v9 = [NSString localizedStringWithFormat:v6, name2];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"Ride is arriving [Ridesharing]" value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_confirmedTrayTitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedPickupDate = [intentsRideStatus estimatedPickupDate];

  if (estimatedPickupDate)
  {
    [estimatedPickupDate timeIntervalSinceNow];
    v5 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];
    rideOption = [(RideBookingRideStatus *)self rideOption];
    name = [rideOption name];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (name)
    {
      v10 = [v8 localizedStringForKey:@"%@ arrives in %@ [Ridesharing]" value:@"localized string not found" table:0];
      rideOption2 = [(RideBookingRideStatus *)self rideOption];
      name2 = [rideOption2 name];
      v13 = [NSString localizedStringWithFormat:v10, name2, v5];
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"Ride arrives in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v13 = [NSString localizedStringWithFormat:v10, v5];
    }
  }

  else
  {
    rideOption3 = [(RideBookingRideStatus *)self rideOption];
    name3 = [rideOption3 name];

    v5 = +[NSBundle mainBundle];
    if (name3)
    {
      v16 = [v5 localizedStringForKey:@"%@ arrives soon [Ridesharing]" value:@"localized string not found" table:0];
      rideOption4 = [(RideBookingRideStatus *)self rideOption];
      name4 = [rideOption4 name];
      v13 = [NSString localizedStringWithFormat:v16, name4];
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
  rideOption = [(RideBookingRideStatus *)self rideOption];
  name = [rideOption name];

  v5 = +[NSBundle mainBundle];
  if (name)
  {
    v6 = [v5 localizedStringForKey:@"Requesting %@ [Ridesharing]" value:@"localized string not found" table:0];
    rideOption2 = [(RideBookingRideStatus *)self rideOption];
    name2 = [rideOption2 name];
    v9 = [NSString stringWithFormat:v6, name2];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"Requesting ride [Ridesharing-Default]" value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_scheduledTrayTitle
{
  _destinationAddress = [(RideBookingRideStatus *)self _destinationAddress];
  _pickupAddress = [(RideBookingRideStatus *)self _pickupAddress];
  rideOption = [(RideBookingRideStatus *)self rideOption];
  name = [rideOption name];

  v7 = [_destinationAddress length];
  if (name)
  {
    if (v7)
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"%@ to %@ [Ridesharing]" value:@"localized string not found" table:0];
      rideOption2 = [(RideBookingRideStatus *)self rideOption];
      name2 = [rideOption2 name];
      [NSString localizedStringWithFormat:v9, name2, _destinationAddress];
    }

    else
    {
      v13 = [_pickupAddress length];
      v14 = +[NSBundle mainBundle];
      v8 = v14;
      if (v13)
      {
        v9 = [v14 localizedStringForKey:@"%@ from %@ [Ridesharing]" value:@"localized string not found" table:0];
        rideOption2 = [(RideBookingRideStatus *)self rideOption];
        name2 = [rideOption2 name];
        [NSString localizedStringWithFormat:v9, name2, _pickupAddress];
      }

      else
      {
        v9 = [v14 localizedStringForKey:@"%@ [Ridesharing]" value:@"localized string not found" table:0];
        rideOption2 = [(RideBookingRideStatus *)self rideOption];
        name2 = [rideOption2 name];
        [NSString localizedStringWithFormat:v9, name2, v17];
      }
    }
    v15 = ;

    goto LABEL_13;
  }

  if (v7)
  {
    v8 = +[NSBundle mainBundle];
    v12 = [v8 localizedStringForKey:@"Ride to %@ [Ridesharing]" value:@"localized string not found" table:0];
    [NSString localizedStringWithFormat:v12, _destinationAddress];
    v15 = LABEL_10:;

    goto LABEL_13;
  }

  if ([_pickupAddress length])
  {
    v8 = +[NSBundle mainBundle];
    v12 = [v8 localizedStringForKey:@"Ride from %@ [Ridesharing]" value:@"localized string not found" table:0];
    [NSString localizedStringWithFormat:v12, _pickupAddress];
    goto LABEL_10;
  }

  v8 = +[NSBundle mainBundle];
  v15 = [v8 localizedStringForKey:@"Ride" value:@"localized string not found" table:0];
LABEL_13:

  return v15;
}

- (NSString)traySubtitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  phase = [intentsRideStatus phase];

  v5 = &stru_1016631F0;
  if (phase > 3)
  {
    if ((phase - 5) >= 2)
    {
      if (phase != 4)
      {
        goto LABEL_16;
      }

      _completedTraySubtitle = [(RideBookingRideStatus *)self _completedTraySubtitle];
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  if ((phase - 1) < 2)
  {
    if ([(RideBookingRideStatus *)self isScheduledRide])
    {
      _completedTraySubtitle = [(RideBookingRideStatus *)self _scheduledTraySubtitle];
LABEL_15:
      v5 = _completedTraySubtitle;
      goto LABEL_16;
    }

LABEL_6:
    _pickupAddress = [(RideBookingRideStatus *)self _pickupAddress];
    if (![_pickupAddress length])
    {
LABEL_12:

      goto LABEL_16;
    }

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"Pickup at %@ [Ridesharing]";
LABEL_11:
    v15 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
    v5 = [NSString localizedStringWithFormat:v15, _pickupAddress];

    goto LABEL_12;
  }

  if (phase != 3)
  {
    goto LABEL_16;
  }

  intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedDropOffDate = [intentsRideStatus2 estimatedDropOffDate];

  if (estimatedDropOffDate)
  {
    intentsRideStatus3 = [(RideBookingRideStatus *)self intentsRideStatus];
    estimatedDropOffDate2 = [intentsRideStatus3 estimatedDropOffDate];
    [estimatedDropOffDate2 timeIntervalSinceNow];
    _pickupAddress = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];

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
  dropoffLocation = [(RideBookingRideStatus *)self dropoffLocation];
  _geoMapItem = [dropoffLocation _geoMapItem];
  name = [_geoMapItem name];

  return name;
}

- (id)_pickupAddress
{
  pickupLocation = [(RideBookingRideStatus *)self pickupLocation];
  _geoMapItem = [pickupLocation _geoMapItem];
  name = [_geoMapItem name];

  return name;
}

- (NSString)trayTitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  phase = [intentsRideStatus phase];

  _completedTrayTitle = &stru_1016631F0;
  if (phase > 3)
  {
    switch(phase)
    {
      case 4:
        _completedTrayTitle = [(RideBookingRideStatus *)self _completedTrayTitle];
        break;
      case 5:
        _completedTrayTitle = [(RideBookingRideStatus *)self _approachingPickupTrayTitle];
        break;
      case 6:
        _completedTrayTitle = [(RideBookingRideStatus *)self _pickupTrayTitle];
        break;
    }
  }

  else
  {
    switch(phase)
    {
      case 1:
        _completedTrayTitle = [(RideBookingRideStatus *)self _receivedTrayTitle];
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
        _completedTrayTitle = ;
        break;
      case 3:
        _completedTrayTitle = [(RideBookingRideStatus *)self _ongoingTrayTitle];
        break;
    }
  }

  return _completedTrayTitle;
}

- (id)_completedTemplatedViewSubtitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedPickupDate = [intentsRideStatus estimatedPickupDate];

  if ([(RideBookingRideStatus *)self _feedbackRequired])
  {
    if (estimatedPickupDate)
    {
      if (qword_10195EC38 != -1)
      {
        dispatch_once(&qword_10195EC38, &stru_10164E728);
      }

      v5 = [qword_10195EC30 stringFromDate:estimatedPickupDate];
      v22 = 0;
      v6 = +[NSCalendar autoupdatingCurrentCalendar];
      v7 = +[NSCalendar autoupdatingCurrentCalendar];
      timeZone = [v7 timeZone];
      v9 = [v6 _navigation_transitRelativeDateStringForDate:estimatedPickupDate context:5 inTimeZone:timeZone outUsedFormat:&v22];

      v10 = MapsSuggestionsTimeZone();
      v11 = estimatedPickupDate;
      v12 = v10;
      if (!v10)
      {
        v12 = MapsSuggestionsTimeZone();
      }

      v13 = +[NSCalendar autoupdatingCurrentCalendar];
      v14 = [v13 componentsInTimeZone:v12 fromDate:v11];

      hour = [v14 hour];
      if (hour == 1 || hour == 13)
      {
        v17 = @"Pickup date and time [Ridesharing] at 1";
      }

      else
      {
        v17 = @"Pickup date and time [Ridesharing] not at 1";
      }

      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:v17 value:@"localized string not found" table:0];

      _completedTraySubtitle = [NSString localizedStringWithFormat:v19, v9, v5];
    }

    else
    {
      _completedTraySubtitle = &stru_1016631F0;
    }
  }

  else
  {
    _completedTraySubtitle = [(RideBookingRideStatus *)self _completedTraySubtitle];
  }

  return _completedTraySubtitle;
}

- (id)_ongoingTemplatedViewSubtitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  dropOffLocation = [intentsRideStatus dropOffLocation];
  _geoMapItem = [dropOffLocation _geoMapItem];
  name = [_geoMapItem name];

  if ([name length])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Ridesharing] templated view ongoing subtitle" value:@"localized string not found" table:0];
    v8 = [NSString localizedStringWithFormat:v7, name];
  }

  else
  {
    v8 = &stru_1016631F0;
  }

  return v8;
}

- (id)_confirmedTemplatedViewSubtitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  vehicle = [intentsRideStatus vehicle];
  registrationPlate = [vehicle registrationPlate];

  intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
  vehicle2 = [intentsRideStatus2 vehicle];
  manufacturer = [vehicle2 manufacturer];

  intentsRideStatus3 = [(RideBookingRideStatus *)self intentsRideStatus];
  vehicle3 = [intentsRideStatus3 vehicle];
  model = [vehicle3 model];

  if (manufacturer)
  {
    v12 = manufacturer;
  }

  else
  {
    v12 = model;
  }

  v13 = v12;
  if (manufacturer && model)
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"[Ridesharing] templated view vehicle make" value:@"localized string not found" table:0];
    v13 = [NSString localizedStringWithFormat:v15, manufacturer, model];
  }

  if (v13 && registrationPlate)
  {
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"[Ridesharing] templated view vehicle details" value:@"localized string not found" table:0];
    v18 = [NSString localizedStringWithFormat:v17, v13, registrationPlate];
  }

  else
  {
    v19 = &stru_1016631F0;
    if (registrationPlate)
    {
      v19 = registrationPlate;
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
    _driverName = [(RideBookingRideStatus *)self _driverName];
    v4 = [_driverName length];

    v5 = +[NSBundle mainBundle];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 localizedStringForKey:@"ridesharing.tray.subtitle.completed.feedbackRequired.driverName" value:@"localized string not found" table:0];
      _driverName2 = [(RideBookingRideStatus *)self _driverName];
      _completedTrayTitle = [NSString localizedStringWithFormat:v7, _driverName2];
    }

    else
    {
      v7 = [v5 localizedStringForKey:@"ridesharing.templated.title.completed.feedbackRequired.rideName" value:@"localized string not found" table:0];
      _driverName2 = [(RideBookingRideStatus *)self rideOption];
      name = [_driverName2 name];
      _completedTrayTitle = [NSString localizedStringWithFormat:v7, name];
    }
  }

  else
  {
    _completedTrayTitle = [(RideBookingRideStatus *)self _completedTrayTitle];
  }

  return _completedTrayTitle;
}

- (id)_ongoingTemplatedViewTitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedDropOffDate = [intentsRideStatus estimatedDropOffDate];

  if (estimatedDropOffDate)
  {
    [estimatedDropOffDate timeIntervalSinceNow];
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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedPickupEndDate = [intentsRideStatus estimatedPickupEndDate];

  if (estimatedPickupEndDate)
  {
    [estimatedPickupEndDate timeIntervalSinceNow];
    v5 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];
    rideOption = [(RideBookingRideStatus *)self rideOption];
    name = [rideOption name];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (name)
    {
      v10 = [v8 localizedStringForKey:@"Your %@ departs in %@ [Ridesharing]" value:@"localized string not found" table:0];
      rideOption2 = [(RideBookingRideStatus *)self rideOption];
      name2 = [rideOption2 name];
      v13 = [NSString localizedStringWithFormat:v10, name2, v5];
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"Your ride departs in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v13 = [NSString localizedStringWithFormat:v10, v5];
    }
  }

  else
  {
    rideOption3 = [(RideBookingRideStatus *)self rideOption];
    name3 = [rideOption3 name];

    v5 = +[NSBundle mainBundle];
    if (name3)
    {
      v16 = [v5 localizedStringForKey:@"Your %@ has arrived [Ridesharing]" value:@"localized string not found" table:0];
      rideOption4 = [(RideBookingRideStatus *)self rideOption];
      name4 = [rideOption4 name];
      v13 = [NSString localizedStringWithFormat:v16, name4];
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
  rideOption = [(RideBookingRideStatus *)self rideOption];
  name = [rideOption name];

  v5 = +[NSBundle mainBundle];
  if (name)
  {
    v6 = [v5 localizedStringForKey:@"Your %@ is arriving now [Ridesharing]" value:@"localized string not found" table:0];
    rideOption2 = [(RideBookingRideStatus *)self rideOption];
    name2 = [rideOption2 name];
    v9 = [NSString localizedStringWithFormat:v6, name2];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"Your ride is arriving now [Ridesharing]" value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_confirmedTemplatedViewTitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  estimatedPickupDate = [intentsRideStatus estimatedPickupDate];

  if (estimatedPickupDate)
  {
    [estimatedPickupDate timeIntervalSinceNow];
    v5 = [(RideBookingRideStatus *)self _minuteStringForSeconds:?];
    rideOption = [(RideBookingRideStatus *)self rideOption];
    name = [rideOption name];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (name)
    {
      v10 = [v8 localizedStringForKey:@"Your %@ arrives in %@ [Ridesharing]" value:@"localized string not found" table:0];
      rideOption2 = [(RideBookingRideStatus *)self rideOption];
      name2 = [rideOption2 name];
      v13 = [NSString localizedStringWithFormat:v10, name2, v5];
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"Your ride arrives in %@ [Ridesharing]" value:@"localized string not found" table:0];
      v13 = [NSString localizedStringWithFormat:v10, v5];
    }
  }

  else
  {
    rideOption3 = [(RideBookingRideStatus *)self rideOption];
    name3 = [rideOption3 name];

    v5 = +[NSBundle mainBundle];
    if (name3)
    {
      v16 = [v5 localizedStringForKey:@"Your %@ arrives soon [Ridesharing]" value:@"localized string not found" table:0];
      rideOption4 = [(RideBookingRideStatus *)self rideOption];
      name4 = [rideOption4 name];
      v13 = [NSString localizedStringWithFormat:v16, name4];
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
  rideOption = [(RideBookingRideStatus *)self rideOption];
  name = [rideOption name];

  v5 = +[NSBundle mainBundle];
  if (name)
  {
    v6 = [v5 localizedStringForKey:@"Requesting your %@ [Ridesharing]" value:@"localized string not found" table:0];
    rideOption2 = [(RideBookingRideStatus *)self rideOption];
    name2 = [rideOption2 name];
    v9 = [NSString stringWithFormat:v6, name2];
  }

  else
  {
    v9 = [v5 localizedStringForKey:@"Requesting ride proactive [Ridesharing-Default]" value:@"localized string not found" table:0];
  }

  return v9;
}

- (id)_minuteStringForSeconds:(double)seconds
{
  v3 = fmax(seconds, 60.0);
  timeFormatter = [(RideBookingRideStatus *)self timeFormatter];
  v5 = [timeFormatter stringFromTimeInterval:v3];

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
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  phase = [intentsRideStatus phase];

  _completedTemplatedViewSubtitle = &stru_1016631F0;
  if (phase > 3)
  {
    switch(phase)
    {
      case 4:
        _completedTemplatedViewSubtitle = [(RideBookingRideStatus *)self _completedTemplatedViewSubtitle];
        break;
      case 5:
        _completedTemplatedViewSubtitle = [(RideBookingRideStatus *)self _approachingPickupTemplatedViewSubtitle];
        break;
      case 6:
        _completedTemplatedViewSubtitle = [(RideBookingRideStatus *)self _pickupTemplatedViewSubtitle];
        break;
    }
  }

  else
  {
    switch(phase)
    {
      case 1:
        _completedTemplatedViewSubtitle = [(RideBookingRideStatus *)self _receivedTemplatedViewSubtitle];
        break;
      case 2:
        _completedTemplatedViewSubtitle = [(RideBookingRideStatus *)self _confirmedTemplatedViewSubtitle];
        break;
      case 3:
        _completedTemplatedViewSubtitle = [(RideBookingRideStatus *)self _ongoingTemplatedViewSubtitle];
        break;
    }
  }

  return _completedTemplatedViewSubtitle;
}

- (NSString)templatedViewTitle
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  phase = [intentsRideStatus phase];

  _completedTemplatedViewTitle = &stru_1016631F0;
  if (phase > 3)
  {
    switch(phase)
    {
      case 4:
        _completedTemplatedViewTitle = [(RideBookingRideStatus *)self _completedTemplatedViewTitle];
        break;
      case 5:
        _completedTemplatedViewTitle = [(RideBookingRideStatus *)self _approachingPickupTemplatedViewTitle];
        break;
      case 6:
        _completedTemplatedViewTitle = [(RideBookingRideStatus *)self _pickupTemplatedViewTitle];
        break;
    }
  }

  else
  {
    switch(phase)
    {
      case 1:
        _completedTemplatedViewTitle = [(RideBookingRideStatus *)self _receivedTemplatedViewTitle];
        break;
      case 2:
        _completedTemplatedViewTitle = [(RideBookingRideStatus *)self _confirmedTemplatedViewTitle];
        break;
      case 3:
        _completedTemplatedViewTitle = [(RideBookingRideStatus *)self _ongoingTemplatedViewTitle];
        break;
    }
  }

  return _completedTemplatedViewTitle;
}

- (UIImage)templatedViewAppIcon
{
  application = [(RideBookingRideStatus *)self application];
  v3 = [application iconWithFormat:2];

  return v3;
}

- (BOOL)isScheduledRide
{
  if ([(RideBookingRideStatus *)self phase]!= 2)
  {
    return 0;
  }

  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  scheduledPickupTime = [intentsRideStatus scheduledPickupTime];
  v5 = scheduledPickupTime != 0;

  return v5;
}

- (BOOL)_feedbackRequired
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus = [intentsRideStatus completionStatus];
  if (([completionStatus feedbackType] & 2) != 0)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    intentsRideStatus2 = [(RideBookingRideStatus *)self intentsRideStatus];
    completionStatus2 = [intentsRideStatus2 completionStatus];
    v7 = [completionStatus2 feedbackType] & 1;
  }

  return v7;
}

- (BOOL)_showFeedbackType:(unint64_t)type
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus = [intentsRideStatus completionStatus];

  v6 = [completionStatus isCompleted] && (objc_msgSend(completionStatus, "feedbackType") & type) != 0;
  return v6;
}

- (BOOL)shouldShowFeedbackControls
{
  intentsRideStatus = [(RideBookingRideStatus *)self intentsRideStatus];
  completionStatus = [intentsRideStatus completionStatus];
  if (![completionStatus isCompleted])
  {

    return 0;
  }

  if (![(RideBookingRideStatus *)self shouldShowTippingOptions])
  {
    shouldShowRatingOptions = [(RideBookingRideStatus *)self shouldShowRatingOptions];

    return (shouldShowRatingOptions & 1) != 0;
  }

  return 1;
}

@end