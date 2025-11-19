@interface INGetAvailableRestaurantReservationBookingDefaultsIntent
+ (id)intentDescription;
- (BOOL)isEqual:(id)a3;
- (INGetAvailableRestaurantReservationBookingDefaultsIntent)initWithCoder:(id)a3;
- (INGetAvailableRestaurantReservationBookingDefaultsIntent)initWithRestaurant:(INRestaurant *)restaurant;
- (id)_dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INGetAvailableRestaurantReservationBookingDefaultsIntent

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"restaurant";
  restaurant = self->_restaurant;
  v3 = restaurant;
  if (!restaurant)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!restaurant)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(INGetAvailableRestaurantReservationBookingDefaultsIntent *)v7 restaurant];
        if (v8 || ([(INGetAvailableRestaurantReservationBookingDefaultsIntent *)self restaurant], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(INGetAvailableRestaurantReservationBookingDefaultsIntent *)v7 restaurant];
          v10 = [(INGetAvailableRestaurantReservationBookingDefaultsIntent *)self restaurant];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntent;
  v4 = a3;
  [(INIntent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_restaurant forKey:{@"restaurant", v5.receiver, v5.super_class}];
}

- (INGetAvailableRestaurantReservationBookingDefaultsIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntent;
  v5 = [(INIntent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restaurant"];
    restaurant = v5->_restaurant;
    v5->_restaurant = v6;
  }

  return v5;
}

- (INGetAvailableRestaurantReservationBookingDefaultsIntent)initWithRestaurant:(INRestaurant *)restaurant
{
  v4 = restaurant;
  v8.receiver = self;
  v8.super_class = INGetAvailableRestaurantReservationBookingDefaultsIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INGetAvailableRestaurantReservationBookingDefaultsIntent *)v5 setRestaurant:v4];
  }

  return v6;
}

+ (id)intentDescription
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__INGetAvailableRestaurantReservationBookingDefaultsIntent_intentDescription__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (intentDescription_onceToken != -1)
  {
    dispatch_once(&intentDescription_onceToken, block);
  }

  v2 = intentDescription_intentDescription;

  return v2;
}

void __77__INGetAvailableRestaurantReservationBookingDefaultsIntent_intentDescription__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [[INIntentSlotDescription alloc] initWithName:@"restaurant" tag:1 facadePropertyName:@"restaurant" dataPropertyName:0 isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB988 provideOptionsSelectorStrings:&unk_1F02DB9A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRestaurantForGetAvailableRestaurantReservationBookingDefaults_withCompletion_, 0, @"restaurant"];
  v6[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v2 = [[INIntentDescription alloc] initWithName:@"GetAvailableRestaurantReservationBookingDefaultsIntent" responseName:@"GetAvailableRestaurantReservationBookingDefaultsIntentResponse" facadeClass:objc_opt_class() dataClass:0 type:0 isPrivate:0 handleSelector:sel_handleGetAvailableRestaurantReservationBookingDefaults_completion_ confirmSelector:sel_confirmGetAvailableRestaurantReservationBookingDefaults_completion_ slotsByName:v1];
  v3 = intentDescription_intentDescription;
  intentDescription_intentDescription = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end