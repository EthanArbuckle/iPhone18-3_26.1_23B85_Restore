@interface RideBookingRideOption
- (NSString)detailedDescription;
- (NSString)partySizeSelectionPrompt;
- (NSString)priceRange;
- (NSString)selectionCommandTitle;
- (NSUserActivity)userActivityForBookingInApplication;
- (RideBookingApplication)application;
- (RideBookingRideOption)initWithApplication:(id)application optionName:(id)name paymentMethods:(id)methods estimatedPickupDate:(id)date passengersChoice:(id)choice;
- (RidesharingSpecialPricingBadge)specialPricingBadge;
- (UIImage)iconImage;
- (id)description;
- (void)setIntentsRideOption:(id)option;
@end

@implementation RideBookingRideOption

- (void)setIntentsRideOption:(id)option
{
  value = option;
  intentsRideOption = [(RideBookingRideOption *)self intentsRideOption];
  if (([intentsRideOption isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_101214F04, value, 3);
  }
}

- (RideBookingApplication)application
{
  WeakRetained = objc_loadWeakRetained(&self->_application);

  return WeakRetained;
}

- (id)description
{
  name = self->_name;
  WeakRetained = objc_loadWeakRetained(&self->_application);
  v5 = [NSString stringWithFormat:@"Name: %@\nApplication: %@\nPayment Methods: %@\nPassenger Choices: %@\nETA: %@ Minutes", name, WeakRetained, self->_paymentMethods, self->_passengerChoices, self->_etaMinutes];

  return v5;
}

- (RideBookingRideOption)initWithApplication:(id)application optionName:(id)name paymentMethods:(id)methods estimatedPickupDate:(id)date passengersChoice:(id)choice
{
  applicationCopy = application;
  nameCopy = name;
  methodsCopy = methods;
  dateCopy = date;
  choiceCopy = choice;
  v24.receiver = self;
  v24.super_class = RideBookingRideOption;
  v17 = [(RideBookingRideOption *)&v24 init];
  if (v17)
  {
    v18 = [nameCopy copy];
    name = v17->_name;
    v17->_name = v18;

    objc_storeWeak(&v17->_application, applicationCopy);
    if (dateCopy)
    {
      [dateCopy timeIntervalSinceNow];
      v21 = [NSNumber numberWithUnsignedInteger:vcvtpd_u64_f64(v20 * 0.0166666667)];
      etaMinutes = v17->_etaMinutes;
      v17->_etaMinutes = v21;
    }

    objc_storeStrong(&v17->_paymentMethods, methods);
    objc_storeStrong(&v17->_passengerChoices, choice);
  }

  return v17;
}

- (NSUserActivity)userActivityForBookingInApplication
{
  intentsRideOption = [(RideBookingRideOption *)self intentsRideOption];
  userActivityForBookingInApplication = [intentsRideOption userActivityForBookingInApplication];

  return userActivityForBookingInApplication;
}

- (RidesharingSpecialPricingBadge)specialPricingBadge
{
  v3 = +[RideBookingAccessProxy imageCache];
  intentsRideOption = [(RideBookingRideOption *)self intentsRideOption];
  specialPricingBadgeImage = [intentsRideOption specialPricingBadgeImage];
  _identifier = [specialPricingBadgeImage _identifier];
  v7 = [v3 imageForKey:_identifier];

  v8 = [[RidesharingSpecialPricingBadge alloc] initWithTemplateImage:v7];

  return v8;
}

- (NSString)partySizeSelectionPrompt
{
  intentsRideOption = [(RideBookingRideOption *)self intentsRideOption];
  availablePartySizeOptionsSelectionPrompt = [intentsRideOption availablePartySizeOptionsSelectionPrompt];

  return availablePartySizeOptionsSelectionPrompt;
}

- (NSString)priceRange
{
  intentsRideOption = [(RideBookingRideOption *)self intentsRideOption];
  usesMeteredFare = [intentsRideOption usesMeteredFare];
  bOOLValue = [usesMeteredFare BOOLValue];

  if (bOOLValue)
  {
    intentsRideOption2 = +[NSBundle mainBundle];
    v7 = [intentsRideOption2 localizedStringForKey:@"Metered fare [Ridesharing]" value:@"localized string not found" table:0];
  }

  else
  {
    intentsRideOption2 = [(RideBookingRideOption *)self intentsRideOption];
    priceRange = [intentsRideOption2 priceRange];
    _maps_formattedStringWithDefaultShortFormatStrings = [priceRange _maps_formattedStringWithDefaultShortFormatStrings];
    v10 = _maps_formattedStringWithDefaultShortFormatStrings;
    v11 = &stru_1016631F0;
    if (_maps_formattedStringWithDefaultShortFormatStrings)
    {
      v11 = _maps_formattedStringWithDefaultShortFormatStrings;
    }

    v7 = v11;
  }

  return v7;
}

- (NSString)detailedDescription
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  intentsRideOption = [(RideBookingRideOption *)self intentsRideOption];
  availablePartySizeOptions = [intentsRideOption availablePartySizeOptions];

  v4 = [availablePartySizeOptions countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v22;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(availablePartySizeOptions);
        }

        v10 = *(*(&v21 + 1) + 8 * v8);
        unsignedIntegerValue = [v9 unsignedIntegerValue];
        partySizeRange = [v10 partySizeRange];
        [v10 partySizeRange];
        if (unsignedIntegerValue <= &partySizeRange[v13])
        {
          partySizeRange2 = [v10 partySizeRange];
          [v10 partySizeRange];
          unsignedIntegerValue2 = &partySizeRange2[v16];
        }

        else
        {
          unsignedIntegerValue2 = [v9 unsignedIntegerValue];
        }

        v6 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue2];

        v8 = v8 + 1;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [availablePartySizeOptions countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  etaMinutes = [(RideBookingRideOption *)self etaMinutes];
  v18 = [NSString _maps_ridesharingETA:etaMinutes partySize:v6];

  return v18;
}

- (NSString)selectionCommandTitle
{
  intentsRideOption = [(RideBookingRideOption *)self intentsRideOption];
  userActivityForBookingInApplication = [intentsRideOption userActivityForBookingInApplication];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (userActivityForBookingInApplication)
  {
    v6 = @"Open [Ridesharing]";
  }

  else
  {
    v6 = @"Next [Ridesharing]";
  }

  v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

  return v7;
}

- (UIImage)iconImage
{
  application = [(RideBookingRideOption *)self application];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    application2 = [(RideBookingRideOption *)self application];
    v6 = [application2 iconWithFormat:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end