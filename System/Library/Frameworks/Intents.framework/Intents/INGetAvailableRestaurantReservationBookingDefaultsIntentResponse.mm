@interface INGetAvailableRestaurantReservationBookingDefaultsIntentResponse
- (BOOL)isEqual:(id)equal;
- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithBackingStore:(id)store;
- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithCoder:(id)coder;
- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithDefaultPartySize:(NSUInteger)defaultPartySize defaultBookingDate:(NSDate *)defaultBookingDate code:(INGetAvailableRestaurantReservationBookingDefaultsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGetAvailableRestaurantReservationBookingDefaultsIntentResponse

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  completionCopy = completion;
  v7 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self copyWithZone:0];
  (*(completion + 2))(completionCopy, v7);
}

- (id)_dictionaryRepresentation
{
  v18[6] = *MEMORY[0x1E69E9840];
  v17[0] = @"defaultPartySize";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_defaultPartySize];
  v18[0] = v15;
  v17[1] = @"defaultBookingDate";
  defaultBookingDate = self->_defaultBookingDate;
  null = defaultBookingDate;
  if (!defaultBookingDate)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null;
  v17[2] = @"maximumPartySize";
  maximumPartySize = self->_maximumPartySize;
  null2 = maximumPartySize;
  if (!maximumPartySize)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null2;
  v17[3] = @"minimumPartySize";
  minimumPartySize = self->_minimumPartySize;
  null3 = minimumPartySize;
  if (!minimumPartySize)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null3;
  v17[4] = @"providerImage";
  providerImage = self->_providerImage;
  null4 = providerImage;
  if (!providerImage)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = null4;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_28;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_28;
  }

  v7 = v6;
  minimumPartySize = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self minimumPartySize];
  if (!minimumPartySize)
  {
    minimumPartySize2 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 minimumPartySize];
    if (!minimumPartySize2)
    {
      v26 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  minimumPartySize3 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self minimumPartySize];
  minimumPartySize4 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 minimumPartySize];
  if (minimumPartySize4)
  {
    minimumPartySize5 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 minimumPartySize];
    v26 = [minimumPartySize3 isEqualToNumber:minimumPartySize5];
  }

  else
  {
    v13 = MEMORY[0x1E696AD98];
    minimumPartySize5 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self minimumPartySize];
    v14 = [v13 numberWithInteger:{objc_msgSend(minimumPartySize5, "integerValue") - 1}];
    v26 = [minimumPartySize3 isEqualToNumber:v14];
  }

  if (!minimumPartySize)
  {
    goto LABEL_14;
  }

LABEL_15:

  maximumPartySize = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self maximumPartySize];
  if (!maximumPartySize)
  {
    minimumPartySize2 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 maximumPartySize];
    if (!minimumPartySize2)
    {
      v19 = 1;
LABEL_23:

      goto LABEL_24;
    }
  }

  maximumPartySize2 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self maximumPartySize];
  maximumPartySize3 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 maximumPartySize];
  if (maximumPartySize3)
  {
    maximumPartySize4 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 maximumPartySize];
    v19 = [maximumPartySize2 isEqualToNumber:maximumPartySize4];
  }

  else
  {
    v20 = MEMORY[0x1E696AD98];
    maximumPartySize4 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self maximumPartySize];
    v21 = [v20 numberWithInteger:{objc_msgSend(maximumPartySize4, "integerValue") - 1}];
    v19 = [maximumPartySize2 isEqualToNumber:v21];
  }

  if (!maximumPartySize)
  {
    goto LABEL_23;
  }

LABEL_24:

  defaultPartySize = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 defaultPartySize];
  v12 = 0;
  if (((defaultPartySize == [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self defaultPartySize]) & v26) == 1 && v19)
  {
    defaultBookingDate = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)v7 defaultBookingDate];
    defaultBookingDate2 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self defaultBookingDate];
    v12 = [defaultBookingDate isEqualToDate:defaultBookingDate2];
  }

LABEL_28:
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  v4 = [(INIntentResponse *)&v11 copyWithZone:zone];
  v4[8] = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self defaultPartySize];
  defaultBookingDate = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self defaultBookingDate];
  v6 = v4[9];
  v4[9] = defaultBookingDate;

  maximumPartySize = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self maximumPartySize];
  [v4 setMaximumPartySize:maximumPartySize];

  minimumPartySize = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self minimumPartySize];
  [v4 setMinimumPartySize:minimumPartySize];

  providerImage = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self providerImage];
  [v4 setProviderImage:providerImage];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  coderCopy = coder;
  [(INIntentResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_defaultPartySize forKey:{@"defaultPartySize", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_defaultBookingDate forKey:@"defaultBookingDate"];
  [coderCopy encodeObject:self->_minimumPartySize forKey:@"minimumPartySize"];
  [coderCopy encodeObject:self->_maximumPartySize forKey:@"maximumPartySize"];
  [coderCopy encodeObject:self->_providerImage forKey:@"providerImage"];
}

- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  v5 = [(INIntentResponse *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumPartySize"];
    minimumPartySize = v5->_minimumPartySize;
    v5->_minimumPartySize = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumPartySize"];
    maximumPartySize = v5->_maximumPartySize;
    v5->_maximumPartySize = v8;

    v5->_defaultPartySize = [coderCopy decodeIntegerForKey:@"defaultPartySize"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultBookingDate"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerImage"];
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

- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v6 = MEMORY[0x1E695DF00];
  activityCopy = activity;
  date = [v6 date];
  v9 = [(INGetAvailableRestaurantReservationBookingDefaultsIntentResponse *)self initWithDefaultPartySize:2 defaultBookingDate:date code:code userActivity:activityCopy];

  return v9;
}

- (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

@end