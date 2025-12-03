@interface INGetAvailableRestaurantReservationBookingsIntent
+ (id)intentDescription;
- (BOOL)isEqual:(id)equal;
- (INGetAvailableRestaurantReservationBookingsIntent)initWithCoder:(id)coder;
- (INGetAvailableRestaurantReservationBookingsIntent)initWithRestaurant:(INRestaurant *)restaurant partySize:(NSUInteger)partySize preferredBookingDateComponents:(NSDateComponents *)preferredBookingDateComponents maximumNumberOfResults:(NSNumber *)maximumNumberOfResults earliestBookingDateForResults:(NSDate *)earliestBookingDateForResults latestBookingDateForResults:(NSDate *)latestBookingDateForResults;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGetAvailableRestaurantReservationBookingsIntent

- (id)_dictionaryRepresentation
{
  v19[6] = *MEMORY[0x1E69E9840];
  v18[0] = @"restaurant";
  restaurant = self->_restaurant;
  null = restaurant;
  if (!restaurant)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v19[0] = null;
  v18[1] = @"partySize";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_partySize];
  v19[1] = v17;
  v18[2] = @"preferredBookingDateComponents";
  preferredBookingDateComponents = self->_preferredBookingDateComponents;
  null2 = preferredBookingDateComponents;
  if (!preferredBookingDateComponents)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = null2;
  v18[3] = @"maximumNumberOfResults";
  maximumNumberOfResults = self->_maximumNumberOfResults;
  null3 = maximumNumberOfResults;
  if (!maximumNumberOfResults)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = null3;
  v18[4] = @"earliestBookingDateForResults";
  earliestBookingDateForResults = self->_earliestBookingDateForResults;
  null4 = earliestBookingDateForResults;
  if (!earliestBookingDateForResults)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = null4;
  v18[5] = @"latestBookingDateForResults";
  latestBookingDateForResults = self->_latestBookingDateForResults;
  null5 = latestBookingDateForResults;
  if (!latestBookingDateForResults)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v19[5] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
  if (latestBookingDateForResults)
  {
    if (earliestBookingDateForResults)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (earliestBookingDateForResults)
    {
LABEL_13:
      if (maximumNumberOfResults)
      {
        goto LABEL_14;
      }

LABEL_22:

      if (preferredBookingDateComponents)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  if (!maximumNumberOfResults)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (preferredBookingDateComponents)
  {
    goto LABEL_15;
  }

LABEL_23:

LABEL_15:
  if (!restaurant)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = INGetAvailableRestaurantReservationBookingsIntent;
  v4 = [(INIntent *)&v12 copyWithZone:zone];
  restaurant = [(INGetAvailableRestaurantReservationBookingsIntent *)self restaurant];
  [v4 setRestaurant:restaurant];

  [v4 setPartySize:{-[INGetAvailableRestaurantReservationBookingsIntent partySize](self, "partySize")}];
  maximumNumberOfResults = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
  [v4 setMaximumNumberOfResults:maximumNumberOfResults];

  earliestBookingDateForResults = [(INGetAvailableRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];
  [v4 setEarliestBookingDateForResults:earliestBookingDateForResults];

  latestBookingDateForResults = [(INGetAvailableRestaurantReservationBookingsIntent *)self latestBookingDateForResults];
  [v4 setLatestBookingDateForResults:latestBookingDateForResults];

  preferredBookingDateComponents = [(INGetAvailableRestaurantReservationBookingsIntent *)self preferredBookingDateComponents];
  [v4 setPreferredBookingDateComponents:preferredBookingDateComponents];

  preferredBookingDate = [(INGetAvailableRestaurantReservationBookingsIntent *)self preferredBookingDate];
  [v4 setPreferredBookingDate:preferredBookingDate];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
    goto LABEL_34;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v10) = 0;
    goto LABEL_34;
  }

  v7 = v6;
  preferredBookingDateComponents = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 preferredBookingDateComponents];
  if (preferredBookingDateComponents)
  {
    v9 = 0;
  }

  else
  {
    preferredBookingDateComponents2 = [(INGetAvailableRestaurantReservationBookingsIntent *)self preferredBookingDateComponents];
    v9 = preferredBookingDateComponents2 == 0;
  }

  preferredBookingDateComponents3 = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 preferredBookingDateComponents];
  if (preferredBookingDateComponents3)
  {
    v13 = preferredBookingDateComponents3;
    preferredBookingDateComponents4 = [(INGetAvailableRestaurantReservationBookingsIntent *)self preferredBookingDateComponents];

    if (preferredBookingDateComponents4)
    {
      preferredBookingDateComponents5 = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 preferredBookingDateComponents];
      preferredBookingDateComponents6 = [(INGetAvailableRestaurantReservationBookingsIntent *)self preferredBookingDateComponents];
      v9 = [preferredBookingDateComponents5 isEqual:preferredBookingDateComponents6];
    }
  }

  maximumNumberOfResults = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 maximumNumberOfResults];
  if (!maximumNumberOfResults)
  {
    maximumNumberOfResults2 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
    if (!maximumNumberOfResults2)
    {
      v20 = 1;
LABEL_17:

      goto LABEL_18;
    }
  }

  maximumNumberOfResults3 = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 maximumNumberOfResults];
  maximumNumberOfResults4 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
  v20 = [maximumNumberOfResults3 isEqual:maximumNumberOfResults4];

  if (!maximumNumberOfResults)
  {
    goto LABEL_17;
  }

LABEL_18:

  earliestBookingDateForResults = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 earliestBookingDateForResults];
  if (earliestBookingDateForResults)
  {
    v22 = 0;
  }

  else
  {
    earliestBookingDateForResults2 = [(INGetAvailableRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];
    v22 = earliestBookingDateForResults2 == 0;
  }

  earliestBookingDateForResults3 = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 earliestBookingDateForResults];
  if (earliestBookingDateForResults3)
  {
    v25 = earliestBookingDateForResults3;
    earliestBookingDateForResults4 = [(INGetAvailableRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];

    if (earliestBookingDateForResults4)
    {
      earliestBookingDateForResults5 = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 earliestBookingDateForResults];
      earliestBookingDateForResults6 = [(INGetAvailableRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];
      v22 = [earliestBookingDateForResults5 isEqualToDate:earliestBookingDateForResults6];
    }
  }

  latestBookingDateForResults = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 latestBookingDateForResults];
  if (latestBookingDateForResults)
  {
    v30 = 0;
  }

  else
  {
    latestBookingDateForResults2 = [(INGetAvailableRestaurantReservationBookingsIntent *)self latestBookingDateForResults];
    v30 = latestBookingDateForResults2 == 0;
  }

  latestBookingDateForResults3 = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 latestBookingDateForResults];
  if (latestBookingDateForResults3)
  {
    v33 = latestBookingDateForResults3;
    latestBookingDateForResults4 = [(INGetAvailableRestaurantReservationBookingsIntent *)self latestBookingDateForResults];

    if (latestBookingDateForResults4)
    {
      latestBookingDateForResults5 = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 latestBookingDateForResults];
      latestBookingDateForResults6 = [(INGetAvailableRestaurantReservationBookingsIntent *)self latestBookingDateForResults];
      v30 = [latestBookingDateForResults5 isEqualToDate:latestBookingDateForResults6];
    }
  }

  restaurant = [(INGetAvailableRestaurantReservationBookingsIntent *)self restaurant];
  restaurant2 = [(INGetAvailableRestaurantReservationBookingsIntent *)v7 restaurant];
  if ([restaurant isEqual:restaurant2])
  {
    partySize = [(INGetAvailableRestaurantReservationBookingsIntent *)self partySize];
    v10 = (partySize == [(INGetAvailableRestaurantReservationBookingsIntent *)v7 partySize]) & v9 & v20 & v22 & v30;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

LABEL_34:
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetAvailableRestaurantReservationBookingsIntent;
  coderCopy = coder;
  [(INIntent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_preferredBookingDate forKey:{@"preferredBookingDate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_restaurant forKey:@"restaurant"];
  [coderCopy encodeInteger:self->_partySize forKey:@"partySize"];
  [coderCopy encodeObject:self->_preferredBookingDateComponents forKey:@"preferredBookingDateComponents"];
  [coderCopy encodeObject:self->_maximumNumberOfResults forKey:@"maximumNumberOfResults"];
  [coderCopy encodeObject:self->_earliestBookingDateForResults forKey:@"earliestBookingDateForResults"];
  [coderCopy encodeObject:self->_latestBookingDateForResults forKey:@"latestBookingDateForResults"];
}

- (INGetAvailableRestaurantReservationBookingsIntent)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = INGetAvailableRestaurantReservationBookingsIntent;
  v5 = [(INIntent *)&v22 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restaurant"];
  if (v6)
  {
    restaurant = v5->_restaurant;
    v5->_restaurant = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredBookingDate"];
    preferredBookingDate = v5->_preferredBookingDate;
    v5->_preferredBookingDate = v8;

    v5->_partySize = [coderCopy decodeIntegerForKey:@"partySize"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredBookingDateComponents"];
    preferredBookingDateComponents = v5->_preferredBookingDateComponents;
    v5->_preferredBookingDateComponents = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumNumberOfResults"];
    maximumNumberOfResults = v5->_maximumNumberOfResults;
    v5->_maximumNumberOfResults = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"earliestBookingDateForResults"];
    earliestBookingDateForResults = v5->_earliestBookingDateForResults;
    v5->_earliestBookingDateForResults = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestBookingDateForResults"];
    latestBookingDateForResults = v5->_latestBookingDateForResults;
    v5->_latestBookingDateForResults = v16;

LABEL_4:
    v18 = v5;
    goto LABEL_8;
  }

  v19 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v24 = "[INGetAvailableRestaurantReservationBookingsIntent initWithCoder:]";
    v25 = 2080;
    v26 = "_restaurant";
    _os_log_error_impl(&dword_18E991000, v19, OS_LOG_TYPE_ERROR, "%s Null value for %s", buf, 0x16u);
  }

  v18 = 0;
LABEL_8:

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (INGetAvailableRestaurantReservationBookingsIntent)initWithRestaurant:(INRestaurant *)restaurant partySize:(NSUInteger)partySize preferredBookingDateComponents:(NSDateComponents *)preferredBookingDateComponents maximumNumberOfResults:(NSNumber *)maximumNumberOfResults earliestBookingDateForResults:(NSDate *)earliestBookingDateForResults latestBookingDateForResults:(NSDate *)latestBookingDateForResults
{
  v14 = restaurant;
  v15 = preferredBookingDateComponents;
  v16 = maximumNumberOfResults;
  v17 = earliestBookingDateForResults;
  v18 = latestBookingDateForResults;
  v22.receiver = self;
  v22.super_class = INGetAvailableRestaurantReservationBookingsIntent;
  v19 = [(INIntent *)&v22 init];
  v20 = v19;
  if (v19)
  {
    [(INGetAvailableRestaurantReservationBookingsIntent *)v19 setRestaurant:v14];
    [(INGetAvailableRestaurantReservationBookingsIntent *)v20 setPartySize:partySize];
    [(INGetAvailableRestaurantReservationBookingsIntent *)v20 setPreferredBookingDateComponents:v15];
    [(INGetAvailableRestaurantReservationBookingsIntent *)v20 setMaximumNumberOfResults:v16];
    [(INGetAvailableRestaurantReservationBookingsIntent *)v20 setEarliestBookingDateForResults:v17];
    [(INGetAvailableRestaurantReservationBookingsIntent *)v20 setLatestBookingDateForResults:v18];
  }

  return v20;
}

+ (id)intentDescription
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__INGetAvailableRestaurantReservationBookingsIntent_intentDescription__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (intentDescription_onceToken_42689 != -1)
  {
    dispatch_once(&intentDescription_onceToken_42689, block);
  }

  v2 = intentDescription_intentDescription_42690;

  return v2;
}

void __70__INGetAvailableRestaurantReservationBookingsIntent_intentDescription__block_invoke()
{
  v11[6] = *MEMORY[0x1E69E9840];
  v0 = [[INIntentSlotDescription alloc] initWithName:@"restaurant" tag:1 facadePropertyName:@"restaurant" dataPropertyName:0 isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DBA00 provideOptionsSelectorStrings:&unk_1F02DBA18 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRestaurantForGetAvailableRestaurantReservationBookings_withCompletion_, 0, @"restaurant"];
  v11[0] = v0;
  v10[1] = @"partySize";
  v1 = [[INIntentSlotDescription alloc] initWithName:@"partySize" tag:2 facadePropertyName:@"partySize" dataPropertyName:0 isExtended:0 isPrivate:0 valueType:8 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DBA30 provideOptionsSelectorStrings:&unk_1F02DBA48 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePartySizeForGetAvailableRestaurantReservationBookings_withCompletion_, 0];
  v11[1] = v1;
  v10[2] = @"preferredBookingDateComponents";
  v2 = [[INIntentSlotDescription alloc] initWithName:@"preferredBookingDateComponents" tag:3 facadePropertyName:@"preferredBookingDateComponents" dataPropertyName:0 isExtended:0 isPrivate:0 valueType:14 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DBA60 provideOptionsSelectorStrings:&unk_1F02DBA78 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePreferredBookingDateComponentsForGetAvailableRestaurantReservationBookings_withCompletion_, 0];
  v11[2] = v2;
  v10[3] = @"maximumNumberOfResults";
  v3 = [[INIntentSlotDescription alloc] initWithName:@"maximumNumberOfResults" tag:4 facadePropertyName:@"maximumNumberOfResults" dataPropertyName:0 isExtended:0 isPrivate:1 valueType:24 valueStyle:2 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v11[3] = v3;
  v10[4] = @"earliestBookingDateForResults";
  v4 = [[INIntentSlotDescription alloc] initWithName:@"earliestBookingDateForResults" tag:5 facadePropertyName:@"earliestBookingDateForResults" dataPropertyName:0 isExtended:0 isPrivate:1 valueType:14 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v11[4] = v4;
  v10[5] = @"latestBookingDateForResults";
  v5 = [[INIntentSlotDescription alloc] initWithName:@"latestBookingDateForResults" tag:6 facadePropertyName:@"latestBookingDateForResults" dataPropertyName:0 isExtended:0 isPrivate:1 valueType:14 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v11[5] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];

  v7 = [[INIntentDescription alloc] initWithName:@"GetAvailableRestaurantReservationBookingsIntent" responseName:@"GetAvailableRestaurantReservationBookingsIntentResponse" facadeClass:objc_opt_class() dataClass:0 type:0 isPrivate:0 handleSelector:sel_handleGetAvailableRestaurantReservationBookings_completion_ confirmSelector:sel_confirmGetAvailableRestaurantReservationBookings_completion_ slotsByName:v6];
  v8 = intentDescription_intentDescription_42690;
  intentDescription_intentDescription_42690 = v7;

  v9 = *MEMORY[0x1E69E9840];
}

@end