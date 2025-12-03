@interface INGetAvailableRestaurantReservationBookingsIntentResponse
- (BOOL)isEqual:(id)equal;
- (INGetAvailableRestaurantReservationBookingsIntentCode)code;
- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithAvailableBookings:(NSArray *)availableBookings code:(INGetAvailableRestaurantReservationBookingsIntentCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithBackingStore:(id)store;
- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGetAvailableRestaurantReservationBookingsIntentResponse

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  completionCopy = completion;
  v7 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self copyWithZone:0];
  (*(completion + 2))(completionCopy, v7);
}

- (id)_dictionaryRepresentation
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = @"code";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INGetAvailableRestaurantReservationBookingsIntentResponse code](self, "code")}];
  v16[0] = v3;
  v15[1] = @"localizedRestaurantDescriptionText";
  localizedRestaurantDescriptionText = self->_localizedRestaurantDescriptionText;
  null = localizedRestaurantDescriptionText;
  if (!localizedRestaurantDescriptionText)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null;
  v15[2] = @"localizedBookingAdvisementText";
  localizedBookingAdvisementText = self->_localizedBookingAdvisementText;
  null2 = localizedBookingAdvisementText;
  if (!localizedBookingAdvisementText)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null2;
  v15[3] = @"termsAndConditions";
  termsAndConditions = self->_termsAndConditions;
  null3 = termsAndConditions;
  if (!termsAndConditions)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null3;
  v15[4] = @"availableBookings";
  availableBookings = self->_availableBookings;
  null4 = availableBookings;
  if (!availableBookings)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (availableBookings)
  {
    if (termsAndConditions)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (termsAndConditions)
    {
LABEL_11:
      if (localizedBookingAdvisementText)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (localizedRestaurantDescriptionText)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!localizedBookingAdvisementText)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (localizedRestaurantDescriptionText)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (INGetAvailableRestaurantReservationBookingsIntentCode)code
{
  v3.receiver = self;
  v3.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
    goto LABEL_34;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = 0;
    goto LABEL_34;
  }

  v8 = v7;
  localizedBookingAdvisementText = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedBookingAdvisementText];
  if (!localizedBookingAdvisementText)
  {
    localizedBookingAdvisementText2 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedBookingAdvisementText];
    if (!localizedBookingAdvisementText2)
    {
      v12 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  localizedBookingAdvisementText3 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedBookingAdvisementText];
  localizedBookingAdvisementText4 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedBookingAdvisementText];
  if (localizedBookingAdvisementText4)
  {
    localizedBookingAdvisementText5 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedBookingAdvisementText];
    v12 = [localizedBookingAdvisementText3 isEqualToString:localizedBookingAdvisementText5];
  }

  else
  {
    v12 = [localizedBookingAdvisementText3 isEqualToString:&stru_1F01E0850];
  }

  if (!localizedBookingAdvisementText)
  {
    goto LABEL_14;
  }

LABEL_15:

  termsAndConditions = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self termsAndConditions];
  if (!termsAndConditions)
  {
    localizedBookingAdvisementText3 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 termsAndConditions];
    if (!localizedBookingAdvisementText3)
    {
      v17 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  termsAndConditions2 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self termsAndConditions];
  termsAndConditions3 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 termsAndConditions];
  v17 = [termsAndConditions2 isEqual:termsAndConditions3];

  if (!termsAndConditions)
  {
    goto LABEL_20;
  }

LABEL_21:

  localizedRestaurantDescriptionText = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedRestaurantDescriptionText];
  if (!localizedRestaurantDescriptionText)
  {
    localizedRestaurantDescriptionText2 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedRestaurantDescriptionText];
    if (!localizedRestaurantDescriptionText2)
    {
      localizedRestaurantDescriptionText2 = 0;
      v24 = 1;
LABEL_29:

      goto LABEL_30;
    }
  }

  localizedRestaurantDescriptionText3 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedRestaurantDescriptionText];
  localizedRestaurantDescriptionText4 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedRestaurantDescriptionText];
  if (localizedRestaurantDescriptionText4)
  {
    [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedRestaurantDescriptionText];
    v21 = v17;
    v23 = v22 = v12;
    v24 = [localizedRestaurantDescriptionText3 isEqualToString:v23];

    v12 = v22;
    v17 = v21;
  }

  else
  {
    v24 = [localizedRestaurantDescriptionText3 isEqualToString:&stru_1F01E0850];
  }

  if (!localizedRestaurantDescriptionText)
  {
    goto LABEL_29;
  }

LABEL_30:

  v13 = 0;
  if ((v12 & v17) == 1 && v24)
  {
    availableBookings = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self availableBookings];
    availableBookings2 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 availableBookings];
    v13 = [availableBookings isEqualToArray:availableBookings2];
  }

LABEL_34:
  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  v4 = [(INIntentResponse *)&v14 copyWithZone:zone];
  localizedRestaurantDescriptionText = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedRestaurantDescriptionText];
  [v4 setLocalizedRestaurantDescriptionText:localizedRestaurantDescriptionText];

  localizedBookingAdvisementText = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedBookingAdvisementText];
  [v4 setLocalizedBookingAdvisementText:localizedBookingAdvisementText];

  termsAndConditions = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self termsAndConditions];
  [v4 setTermsAndConditions:termsAndConditions];

  availableBookings = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self availableBookings];

  if (availableBookings)
  {
    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    availableBookings2 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self availableBookings];
    v11 = [v9 initWithArray:availableBookings2 copyItems:1];
    v12 = v4[11];
    v4[11] = v11;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  coderCopy = coder;
  [(INIntentResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_availableBookings forKey:{@"availableBookings", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_localizedRestaurantDescriptionText forKey:@"localizedRestaurantDescriptionText"];
  [coderCopy encodeObject:self->_localizedBookingAdvisementText forKey:@"localizedBookingAdvisementText"];
  [coderCopy encodeObject:self->_termsAndConditions forKey:@"termsAndConditions"];
}

- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  v5 = [(INIntentResponse *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedBookingAdvisementText"];
    localizedBookingAdvisementText = v5->_localizedBookingAdvisementText;
    v5->_localizedBookingAdvisementText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsAndConditions"];
    termsAndConditions = v5->_termsAndConditions;
    v5->_termsAndConditions = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedRestaurantDescriptionText"];
    localizedRestaurantDescriptionText = v5->_localizedRestaurantDescriptionText;
    v5->_localizedRestaurantDescriptionText = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"availableBookings"];

    if (v15)
    {
      objc_storeStrong(&v5->_availableBookings, v15);
    }
  }

  return v5;
}

- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithAvailableBookings:(NSArray *)availableBookings code:(INGetAvailableRestaurantReservationBookingsIntentCode)code userActivity:(NSUserActivity *)userActivity
{
  v8 = availableBookings;
  v13.receiver = self;
  v13.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  v9 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:userActivity];
  if (v9)
  {
    v10 = [(NSArray *)v8 copy];
    v11 = v9->_availableBookings;
    v9->_availableBookings = v10;
  }

  return v9;
}

@end