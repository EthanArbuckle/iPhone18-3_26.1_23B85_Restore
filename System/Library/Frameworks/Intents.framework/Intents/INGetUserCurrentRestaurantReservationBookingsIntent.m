@interface INGetUserCurrentRestaurantReservationBookingsIntent
+ (id)intentDescription;
- (BOOL)isEqual:(id)a3;
- (INGetUserCurrentRestaurantReservationBookingsIntent)initWithCoder:(id)a3;
- (INGetUserCurrentRestaurantReservationBookingsIntent)initWithRestaurant:(INRestaurant *)restaurant reservationIdentifier:(NSString *)reservationIdentifier maximumNumberOfResults:(NSNumber *)maximumNumberOfResults earliestBookingDateForResults:(NSDate *)earliestBookingDateForResults;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INGetUserCurrentRestaurantReservationBookingsIntent

+ (id)intentDescription
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__INGetUserCurrentRestaurantReservationBookingsIntent_intentDescription__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  v4 = restaurant;
  if (!restaurant)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"reservationIdentifier";
  reservationIdentifier = self->_reservationIdentifier;
  v6 = reservationIdentifier;
  if (!reservationIdentifier)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
  v14[2] = @"maximumNumberOfResults";
  maximumNumberOfResults = self->_maximumNumberOfResults;
  v8 = maximumNumberOfResults;
  if (!maximumNumberOfResults)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v8;
  v14[3] = @"earliestBookingDateForResults";
  earliestBookingDateForResults = self->_earliestBookingDateForResults;
  v10 = earliestBookingDateForResults;
  if (!earliestBookingDateForResults)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = INGetUserCurrentRestaurantReservationBookingsIntent;
  v4 = [(INIntent *)&v10 copyWithZone:a3];
  v5 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self restaurant];
  [v4 setRestaurant:v5];

  v6 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self reservationIdentifier];
  [v4 setReservationIdentifier:v6];

  v7 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
  [v4 setMaximumNumberOfResults:v7];

  v8 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];
  [v4 setEarliestBookingDateForResults:v8];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  v8 = v7;
  if (self == v7)
  {
    v11 = 1;
  }

  else
  {
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
        v10 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 restaurant];
        if (v10 || ([(INGetUserCurrentRestaurantReservationBookingsIntent *)self restaurant], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (v10)
          {
LABEL_12:

            v12 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 reservationIdentifier];
            if (v12 || ([(INGetUserCurrentRestaurantReservationBookingsIntent *)self reservationIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v5 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 reservationIdentifier];
              v13 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self reservationIdentifier];
              if (v13)
              {
                v14 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self reservationIdentifier];
                v15 = [v5 isEqualToString:v14];
              }

              else
              {
                v15 = [v5 isEqualToString:&stru_1F01E0850];
              }

              if (v12)
              {
LABEL_21:

                v16 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 maximumNumberOfResults];
                if (v16 || ([(INGetUserCurrentRestaurantReservationBookingsIntent *)self maximumNumberOfResults], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v17 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 maximumNumberOfResults];
                  v18 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
                  if (v18)
                  {
                    v19 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
                    v20 = [v17 isEqualToNumber:v19];
                  }

                  else
                  {
                    v20 = [v17 isEqualToNumber:&unk_1F02D7FC0];
                  }

                  if (v16)
                  {
LABEL_30:

                    v21 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 earliestBookingDateForResults];
                    if (v21 || ([(INGetUserCurrentRestaurantReservationBookingsIntent *)self earliestBookingDateForResults], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v22 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)v9 earliestBookingDateForResults];
                      v23 = [(INGetUserCurrentRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];
                      if (v23)
                      {
                        [(INGetUserCurrentRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];
                      }

                      else
                      {
                        [MEMORY[0x1E695DF00] distantPast];
                      }
                      v24 = ;
                      v25 = [v22 isEqualToDate:v24];

                      if (v21)
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INGetUserCurrentRestaurantReservationBookingsIntent;
  v4 = a3;
  [(INIntent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_restaurant forKey:{@"restaurant", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_reservationIdentifier forKey:@"reservationIdentifier"];
  [v4 encodeObject:self->_maximumNumberOfResults forKey:@"maximumNumberOfResults"];
  [v4 encodeObject:self->_earliestBookingDateForResults forKey:@"earliestBookingDateForResults"];
}

- (INGetUserCurrentRestaurantReservationBookingsIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INGetUserCurrentRestaurantReservationBookingsIntent;
  v5 = [(INIntent *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restaurant"];
    restaurant = v5->_restaurant;
    v5->_restaurant = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reservationIdentifier"];
    reservationIdentifier = v5->_reservationIdentifier;
    v5->_reservationIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumNumberOfResults"];
    maximumNumberOfResults = v5->_maximumNumberOfResults;
    v5->_maximumNumberOfResults = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"earliestBookingDateForResults"];
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