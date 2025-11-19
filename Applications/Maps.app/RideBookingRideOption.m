@interface RideBookingRideOption
- (NSString)detailedDescription;
- (NSString)partySizeSelectionPrompt;
- (NSString)priceRange;
- (NSString)selectionCommandTitle;
- (NSUserActivity)userActivityForBookingInApplication;
- (RideBookingApplication)application;
- (RideBookingRideOption)initWithApplication:(id)a3 optionName:(id)a4 paymentMethods:(id)a5 estimatedPickupDate:(id)a6 passengersChoice:(id)a7;
- (RidesharingSpecialPricingBadge)specialPricingBadge;
- (UIImage)iconImage;
- (id)description;
- (void)setIntentsRideOption:(id)a3;
@end

@implementation RideBookingRideOption

- (void)setIntentsRideOption:(id)a3
{
  value = a3;
  v4 = [(RideBookingRideOption *)self intentsRideOption];
  if (([v4 isEqual:value] & 1) == 0)
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

- (RideBookingRideOption)initWithApplication:(id)a3 optionName:(id)a4 paymentMethods:(id)a5 estimatedPickupDate:(id)a6 passengersChoice:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = RideBookingRideOption;
  v17 = [(RideBookingRideOption *)&v24 init];
  if (v17)
  {
    v18 = [v13 copy];
    name = v17->_name;
    v17->_name = v18;

    objc_storeWeak(&v17->_application, v12);
    if (v15)
    {
      [v15 timeIntervalSinceNow];
      v21 = [NSNumber numberWithUnsignedInteger:vcvtpd_u64_f64(v20 * 0.0166666667)];
      etaMinutes = v17->_etaMinutes;
      v17->_etaMinutes = v21;
    }

    objc_storeStrong(&v17->_paymentMethods, a5);
    objc_storeStrong(&v17->_passengerChoices, a7);
  }

  return v17;
}

- (NSUserActivity)userActivityForBookingInApplication
{
  v2 = [(RideBookingRideOption *)self intentsRideOption];
  v3 = [v2 userActivityForBookingInApplication];

  return v3;
}

- (RidesharingSpecialPricingBadge)specialPricingBadge
{
  v3 = +[RideBookingAccessProxy imageCache];
  v4 = [(RideBookingRideOption *)self intentsRideOption];
  v5 = [v4 specialPricingBadgeImage];
  v6 = [v5 _identifier];
  v7 = [v3 imageForKey:v6];

  v8 = [[RidesharingSpecialPricingBadge alloc] initWithTemplateImage:v7];

  return v8;
}

- (NSString)partySizeSelectionPrompt
{
  v2 = [(RideBookingRideOption *)self intentsRideOption];
  v3 = [v2 availablePartySizeOptionsSelectionPrompt];

  return v3;
}

- (NSString)priceRange
{
  v3 = [(RideBookingRideOption *)self intentsRideOption];
  v4 = [v3 usesMeteredFare];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Metered fare [Ridesharing]" value:@"localized string not found" table:0];
  }

  else
  {
    v6 = [(RideBookingRideOption *)self intentsRideOption];
    v8 = [v6 priceRange];
    v9 = [v8 _maps_formattedStringWithDefaultShortFormatStrings];
    v10 = v9;
    v11 = &stru_1016631F0;
    if (v9)
    {
      v11 = v9;
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
  v2 = [(RideBookingRideOption *)self intentsRideOption];
  v3 = [v2 availablePartySizeOptions];

  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v21 + 1) + 8 * v8);
        v11 = [v9 unsignedIntegerValue];
        v12 = [v10 partySizeRange];
        [v10 partySizeRange];
        if (v11 <= &v12[v13])
        {
          v15 = [v10 partySizeRange];
          [v10 partySizeRange];
          v14 = &v15[v16];
        }

        else
        {
          v14 = [v9 unsignedIntegerValue];
        }

        v6 = [NSNumber numberWithUnsignedInteger:v14];

        v8 = v8 + 1;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v17 = [(RideBookingRideOption *)self etaMinutes];
  v18 = [NSString _maps_ridesharingETA:v17 partySize:v6];

  return v18;
}

- (NSString)selectionCommandTitle
{
  v2 = [(RideBookingRideOption *)self intentsRideOption];
  v3 = [v2 userActivityForBookingInApplication];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
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
  v3 = [(RideBookingRideOption *)self application];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(RideBookingRideOption *)self application];
    v6 = [v5 iconWithFormat:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end