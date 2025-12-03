@interface INGetUserCurrentRestaurantReservationBookingsIntent
+ (id)intentDescription;
- (BOOL)isEqual:(id)equal;
- (INGetUserCurrentRestaurantReservationBookingsIntent)initWithCoder:(id)coder;
- (INGetUserCurrentRestaurantReservationBookingsIntent)initWithRestaurant:(INRestaurant *)restaurant reservationIdentifier:(NSString *)reservationIdentifier maximumNumberOfResults:(NSNumber *)maximumNumberOfResults earliestBookingDateForResults:(NSDate *)earliestBookingDateForResults;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGetUserCurrentRestaurantReservationBookingsIntent

+ (id)intentDescription
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__INGetUserCurrentRestaurantReservationBookingsIntent_intentDescription__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (intentDescription_onceToken_39166 != -1)
  {
    dispatch_once(&intentDescription_onceToken_39166, block);
  }

  v2 = intentDescription_intentDescription_39167;

  return v2;
}

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"restaurant";
  restaurant = self->_restaurant;
  null = restaurant;
  if (!restaurant)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"reservationIdentifier";
  reservationIdentifier = self->_reservationIdentifier;
  null2 = reservationIdentifier;
  if (!reservationIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"maximumNumberOfResults";
  maximumNumberOfResults = self->_maximumNumberOfResults;
  null3 = maximumNumberOfResults;
  if (!maximumNumberOfResults)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"earliestBookingDateForResults";
  earliestBookingDateForResults = self->_earliestBookingDateForResults;
  null4 = earliestBookingDateForResults;
  if (!earliestBookingDateForResults)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (earliestBookingDateForResults)
  {
    if (maximumNumberOfResults)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (maximumNumberOfResults)
    {
LABEL_11:
      if (reservationIdentifier)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (restaurant)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!reservationIdentifier)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (restaurant)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = INGetUserCurrentRestaurantReservationBookingsIntent;
  v4 = [(INIntent *)&v10 copyWithZone:zone];
  restaurant = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self restaurant];
  [v4 setRestaurant:restaurant];

  reservationIdentifier = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self reservationIdentifier];
  [v4 setReservationIdentifier:reservationIdentifier];

  maximumNumberOfResults = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
  [v4 setMaximumNumberOfResults:maximumNumberOfResults];

  earliestBookingDateForResults = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];
  [v4 setEarliestBookingDateForResults:earliestBookingDateForResults];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
        restaurant = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 restaurant];
        if (restaurant || ([(INGetUserCurrentRestaurantReservationBookingsIntent *)self restaurant], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (restaurant)
          {
LABEL_12:

            reservationIdentifier = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 reservationIdentifier];
            if (reservationIdentifier || ([(INGetUserCurrentRestaurantReservationBookingsIntent *)self reservationIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              reservationIdentifier2 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 reservationIdentifier];
              reservationIdentifier3 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self reservationIdentifier];
              if (reservationIdentifier3)
              {
                reservationIdentifier4 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self reservationIdentifier];
                v15 = [reservationIdentifier2 isEqualToString:reservationIdentifier4];
              }

              else
              {
                v15 = [reservationIdentifier2 isEqualToString:&stru_1F01E0850];
              }

              if (reservationIdentifier)
              {
LABEL_21:

                maximumNumberOfResults = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 maximumNumberOfResults];
                if (maximumNumberOfResults || ([(INGetUserCurrentRestaurantReservationBookingsIntent *)self maximumNumberOfResults], (reservationIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  maximumNumberOfResults2 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 maximumNumberOfResults];
                  maximumNumberOfResults3 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
                  if (maximumNumberOfResults3)
                  {
                    maximumNumberOfResults4 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
                    v20 = [maximumNumberOfResults2 isEqualToNumber:maximumNumberOfResults4];
                  }

                  else
                  {
                    v20 = [maximumNumberOfResults2 isEqualToNumber:&unk_1F02D7FC0];
                  }

                  if (maximumNumberOfResults)
                  {
LABEL_30:

                    earliestBookingDateForResults = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 earliestBookingDateForResults];
                    if (earliestBookingDateForResults || ([(INGetUserCurrentRestaurantReservationBookingsIntent *)self earliestBookingDateForResults], (reservationIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      earliestBookingDateForResults2 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 earliestBookingDateForResults];
                      earliestBookingDateForResults3 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];
                      if (earliestBookingDateForResults3)
                      {
                        [(INGetUserCurrentRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];
                      }

                      else
                      {
                        [MEMORY[0x1E695DF00] distantPast];
                      }
                      v24 = ;
                      v25 = [earliestBookingDateForResults2 isEqualToDate:v24];

                      if (earliestBookingDateForResults)
                      {
                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      v25 = 1;
                    }

LABEL_39:
                    v11 = isKindOfClass & v15 & v20 & v25;

                    goto LABEL_40;
                  }
                }

                else
                {
                  v20 = 1;
                }

                goto LABEL_30;
              }
            }

            else
            {
              v15 = 1;
            }

            goto LABEL_21;
          }
        }

        else
        {
          isKindOfClass = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_40:

  return v11 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetUserCurrentRestaurantReservationBookingsIntent;
  coderCopy = coder;
  [(INIntent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_restaurant forKey:{@"restaurant", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_reservationIdentifier forKey:@"reservationIdentifier"];
  [coderCopy encodeObject:self->_maximumNumberOfResults forKey:@"maximumNumberOfResults"];
  [coderCopy encodeObject:self->_earliestBookingDateForResults forKey:@"earliestBookingDateForResults"];
}

- (INGetUserCurrentRestaurantReservationBookingsIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = INGetUserCurrentRestaurantReservationBookingsIntent;
  v5 = [(INIntent *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restaurant"];
    restaurant = v5->_restaurant;
    v5->_restaurant = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reservationIdentifier"];
    reservationIdentifier = v5->_reservationIdentifier;
    v5->_reservationIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumNumberOfResults"];
    maximumNumberOfResults = v5->_maximumNumberOfResults;
    v5->_maximumNumberOfResults = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"earliestBookingDateForResults"];
    earliestBookingDateForResults = v5->_earliestBookingDateForResults;
    v5->_earliestBookingDateForResults = v12;
  }

  return v5;
}

- (INGetUserCurrentRestaurantReservationBookingsIntent)initWithRestaurant:(INRestaurant *)restaurant reservationIdentifier:(NSString *)reservationIdentifier maximumNumberOfResults:(NSNumber *)maximumNumberOfResults earliestBookingDateForResults:(NSDate *)earliestBookingDateForResults
{
  v10 = restaurant;
  v11 = reservationIdentifier;
  v12 = maximumNumberOfResults;
  v13 = earliestBookingDateForResults;
  v17.receiver = self;
  v17.super_class = INGetUserCurrentRestaurantReservationBookingsIntent;
  v14 = [(INIntent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(INGetUserCurrentRestaurantReservationBookingsIntent *)v14 setRestaurant:v10];
    [(INGetUserCurrentRestaurantReservationBookingsIntent *)v15 setReservationIdentifier:v11];
    [(INGetUserCurrentRestaurantReservationBookingsIntent *)v15 setMaximumNumberOfResults:v12];
    [(INGetUserCurrentRestaurantReservationBookingsIntent *)v15 setEarliestBookingDateForResults:v13];
  }

  return v15;
}

void __72__INGetUserCurrentRestaurantReservationBookingsIntent_intentDescription__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = [[INIntentSlotDescription alloc] initWithName:@"restaurant" tag:1 facadePropertyName:@"restaurant" dataPropertyName:0 isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB9D0 provideOptionsSelectorStrings:&unk_1F02DB9E8 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRestaurantForGetUserCurrentRestaurantReservationBookings_withCompletion_, 0, @"restaurant"];
  v7[0] = v0;
  v6[1] = @"reservationIdentifier";
  v1 = [[INIntentSlotDescription alloc] initWithName:@"reservationIdentifier" tag:2 facadePropertyName:@"reservationIdentifier" dataPropertyName:0 isExtended:0 isPrivate:1 valueType:30 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v7[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v3 = [[INIntentDescription alloc] initWithName:@"GetUserCurrentRestaurantReservationBookingsIntent" responseName:@"GetUserCurrentRestaurantReservationBookingsIntentResponse" facadeClass:objc_opt_class() dataClass:0 type:0 isPrivate:0 handleSelector:sel_handleGetUserCurrentRestaurantReservationBookings_completion_ confirmSelector:sel_confirmGetUserCurrentRestaurantReservationBookings_completion_ slotsByName:v2];
  v4 = intentDescription_intentDescription_39167;
  intentDescription_intentDescription_39167 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

@end