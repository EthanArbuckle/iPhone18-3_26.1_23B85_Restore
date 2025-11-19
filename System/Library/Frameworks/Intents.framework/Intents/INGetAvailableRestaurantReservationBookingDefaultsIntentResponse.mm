@interface INGetAvailableRestaurantReservationBookingDefaultsIntentResponse
- (BOOL)isEqual:(id)a3;
- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithBackingStore:(id)a3;
- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithCoder:(id)a3;
- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithDefaultPartySize:(NSUInteger)defaultPartySize defaultBookingDate:(NSDate *)defaultBookingDate code:(INGetAvailableRestaurantReservationBookingDefaultsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INGetAvailableRestaurantReservationBookingDefaultsIntentResponse

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self copyWithZone:0];
  (*(a4 + 2))(v6, v7);
}

- (id)_dictionaryRepresentation
{
  v18[6] = *MEMORY[0x1E69E9840];
  v17[0] = @"defaultPartySize";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_defaultPartySize];
  v18[0] = v15;
  v17[1] = @"defaultBookingDate";
  defaultBookingDate = self->_defaultBookingDate;
  v4 = defaultBookingDate;
  if (!defaultBookingDate)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v4;
  v17[2] = @"maximumPartySize";
  maximumPartySize = self->_maximumPartySize;
  v6 = maximumPartySize;
  if (!maximumPartySize)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v6;
  v17[3] = @"minimumPartySize";
  minimumPartySize = self->_minimumPartySize;
  v8 = minimumPartySize;
  if (!minimumPartySize)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v8;
  v17[4] = @"providerImage";
  providerImage = self->_providerImage;
  v10 = providerImage;
  if (!providerImage)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = v10;
  v17[5] = @"code";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INGetAvailableRestaurantReservationBookingDefaultsIntentResponse code](self, "code", v15)}];
  v18[5] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];

  if (providerImage)
  {
    if (minimumPartySize)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (minimumPartySize)
    {
LABEL_11:
      if (maximumPartySize)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (defaultBookingDate)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!maximumPartySize)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (defaultBookingDate)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v12 = 1;
    goto LABEL_28;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_28;
  }

  v7 = v6;
  v8 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self minimumPartySize];
  if (!v8)
  {
    v3 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 minimumPartySize];
    if (!v3)
    {
      v26 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  v9 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self minimumPartySize];
  v10 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 minimumPartySize];
  if (v10)
  {
    v11 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 minimumPartySize];
    v26 = [v9 isEqualToNumber:v11];
  }

  else
  {
    v13 = MEMORY[0x1E696AD98];
    v11 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self minimumPartySize];
    v14 = [v13 numberWithInteger:{objc_msgSend(v11, "integerValue") - 1}];
    v26 = [v9 isEqualToNumber:v14];
  }

  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_15:

  v15 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self maximumPartySize];
  if (!v15)
  {
    v3 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 maximumPartySize];
    if (!v3)
    {
      v19 = 1;
LABEL_23:

      goto LABEL_24;
    }
  }

  v16 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self maximumPartySize];
  v17 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 maximumPartySize];
  if (v17)
  {
    v18 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 maximumPartySize];
    v19 = [v16 isEqualToNumber:v18];
  }

  else
  {
    v20 = MEMORY[0x1E696AD98];
    v18 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self maximumPartySize];
    v21 = [v20 numberWithInteger:{objc_msgSend(v18, "integerValue") - 1}];
    v19 = [v16 isEqualToNumber:v21];
  }

  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_24:

  v22 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 defaultPartySize];
  v12 = 0;
  if (((v22 == [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self defaultPartySize]) & v26) == 1 && v19)
  {
    v23 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 defaultBookingDate];
    v24 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self defaultBookingDate];
    v12 = [v23 isEqualToDate:v24];
  }

LABEL_28:
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  v4 = [(INIntentResponse *)&v11 copyWithZone:a3];
  v4[8] = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self defaultPartySize];
  v5 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self defaultBookingDate];
  v6 = v4[9];
  v4[9] = v5;

  v7 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self maximumPartySize];
  [v4 setMaximumPartySize:v7];

  v8 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self minimumPartySize];
  [v4 setMinimumPartySize:v8];

  v9 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self providerImage];
  [v4 setProviderImage:v9];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  v4 = a3;
  [(INIntentResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_defaultPartySize forKey:{@"defaultPartySize", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_defaultBookingDate forKey:@"defaultBookingDate"];
  [v4 encodeObject:self->_minimumPartySize forKey:@"minimumPartySize"];
  [v4 encodeObject:self->_maximumPartySize forKey:@"maximumPartySize"];
  [v4 encodeObject:self->_providerImage forKey:@"providerImage"];
}

- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  v5 = [(INIntentResponse *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumPartySize"];
    minimumPartySize = v5->_minimumPartySize;
    v5->_minimumPartySize = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumPartySize"];
    maximumPartySize = v5->_maximumPartySize;
    v5->_maximumPartySize = v8;

    v5->_defaultPartySize = [v4 decodeIntegerForKey:@"defaultPartySize"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultBookingDate"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerImage"];
    if (v10)
    {
      objc_storeStrong(&v5->_defaultBookingDate, v10);
    }

    if (v11)
    {
      objc_storeStrong(&v5->_providerImage, v11);
    }
  }

  return v5;
}

- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithDefaultPartySize:(NSUInteger)defaultPartySize defaultBookingDate:(NSDate *)defaultBookingDate code:(INGetAvailableRestaurantReservationBookingDefaultsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v11 = defaultBookingDate;
  v15.receiver = self;
  v15.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  v12 = [(INIntentResponse *)&v15 _initWithCode:code userActivity:userActivity];
  v13 = v12;
  if (v12)
  {
    v12->_defaultPartySize = defaultPartySize;
    objc_storeStrong(&v12->_defaultBookingDate, defaultBookingDate);
  }

  return v13;
}

- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = [v6 date];
  v9 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self initWithDefaultPartySize:2 defaultBookingDate:v8 code:a3 userActivity:v7];

  return v9;
}

- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

@end