@interface INGetAvailableRestaurantReservationBookingsIntentResponse
- (BOOL)isEqual:(id)a3;
- (INGetAvailableRestaurantReservationBookingsIntentCode)code;
- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithAvailableBookings:(NSArray *)availableBookings code:(INGetAvailableRestaurantReservationBookingsIntentCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithBackingStore:(id)a3;
- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INGetAvailableRestaurantReservationBookingsIntentResponse

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self copyWithZone:0];
  (*(a4 + 2))(v6, v7);
}

- (id)_dictionaryRepresentation
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = @"code";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INGetAvailableRestaurantReservationBookingsIntentResponse code](self, "code")}];
  v16[0] = v3;
  v15[1] = @"localizedRestaurantDescriptionText";
  localizedRestaurantDescriptionText = self->_localizedRestaurantDescriptionText;
  v5 = localizedRestaurantDescriptionText;
  if (!localizedRestaurantDescriptionText)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v5;
  v15[2] = @"localizedBookingAdvisementText";
  localizedBookingAdvisementText = self->_localizedBookingAdvisementText;
  v7 = localizedBookingAdvisementText;
  if (!localizedBookingAdvisementText)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v7;
  v15[3] = @"termsAndConditions";
  termsAndConditions = self->_termsAndConditions;
  v9 = termsAndConditions;
  if (!termsAndConditions)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v9;
  v15[4] = @"availableBookings";
  availableBookings = self->_availableBookings;
  v11 = availableBookings;
  if (!availableBookings)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = v11;
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (v6 == self)
  {
    v13 = 1;
    goto LABEL_34;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = 0;
    goto LABEL_34;
  }

  v8 = v7;
  v9 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedBookingAdvisementText];
  if (!v9)
  {
    v3 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedBookingAdvisementText];
    if (!v3)
    {
      v12 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  v4 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedBookingAdvisementText];
  v10 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedBookingAdvisementText];
  if (v10)
  {
    v11 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedBookingAdvisementText];
    v12 = [v4 isEqualToString:v11];
  }

  else
  {
    v12 = [v4 isEqualToString:&stru_1F01E0850];
  }

  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_15:

  v14 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self termsAndConditions];
  if (!v14)
  {
    v4 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 termsAndConditions];
    if (!v4)
    {
      v17 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  v15 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self termsAndConditions];
  v16 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 termsAndConditions];
  v17 = [v15 isEqual:v16];

  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_21:

  v18 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedRestaurantDescriptionText];
  if (!v18)
  {
    v28 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedRestaurantDescriptionText];
    if (!v28)
    {
      v28 = 0;
      v24 = 1;
LABEL_29:

      goto LABEL_30;
    }
  }

  v19 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedRestaurantDescriptionText];
  v20 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedRestaurantDescriptionText];
  if (v20)
  {
    [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 localizedRestaurantDescriptionText];
    v21 = v17;
    v23 = v22 = v12;
    v24 = [v19 isEqualToString:v23];

    v12 = v22;
    v17 = v21;
  }

  else
  {
    v24 = [v19 isEqualToString:&stru_1F01E0850];
  }

  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_30:

  v13 = 0;
  if ((v12 & v17) == 1 && v24)
  {
    v25 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self availableBookings];
    v26 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)v8 availableBookings];
    v13 = [v25 isEqualToArray:v26];
  }

LABEL_34:
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  v4 = [(INIntentResponse *)&v14 copyWithZone:a3];
  v5 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedRestaurantDescriptionText];
  [v4 setLocalizedRestaurantDescriptionText:v5];

  v6 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self localizedBookingAdvisementText];
  [v4 setLocalizedBookingAdvisementText:v6];

  v7 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self termsAndConditions];
  [v4 setTermsAndConditions:v7];

  v8 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self availableBookings];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    v10 = [(INGetAvailableRestaurantReservationBookingsIntentResponse *)self availableBookings];
    v11 = [v9 initWithArray:v10 copyItems:1];
    v12 = v4[11];
    v4[11] = v11;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  v4 = a3;
  [(INIntentResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_availableBookings forKey:{@"availableBookings", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_localizedRestaurantDescriptionText forKey:@"localizedRestaurantDescriptionText"];
  [v4 encodeObject:self->_localizedBookingAdvisementText forKey:@"localizedBookingAdvisementText"];
  [v4 encodeObject:self->_termsAndConditions forKey:@"termsAndConditions"];
}

- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  v5 = [(INIntentResponse *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedBookingAdvisementText"];
    localizedBookingAdvisementText = v5->_localizedBookingAdvisementText;
    v5->_localizedBookingAdvisementText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsAndConditions"];
    termsAndConditions = v5->_termsAndConditions;
    v5->_termsAndConditions = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedRestaurantDescriptionText"];
    localizedRestaurantDescriptionText = v5->_localizedRestaurantDescriptionText;
    v5->_localizedRestaurantDescriptionText = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"availableBookings"];

    if (v15)
    {
      objc_storeStrong(&v5->_availableBookings, v15);
    }
  }

  return v5;
}

- (INGetAvailableRestaurantReservationBookingsIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INGetAvailableRestaurantReservationBookingsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
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