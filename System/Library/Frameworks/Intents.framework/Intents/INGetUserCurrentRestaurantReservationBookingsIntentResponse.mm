@interface INGetUserCurrentRestaurantReservationBookingsIntentResponse
- (BOOL)isEqual:(id)a3;
- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithBackingStore:(id)a3;
- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithCoder:(id)a3;
- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithUserCurrentBookings:(NSArray *)userCurrentBookings code:(INGetUserCurrentRestaurantReservationBookingsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetUserCurrentRestaurantReservationBookingsIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INGetUserCurrentRestaurantReservationBookingsIntentResponse

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self copyWithZone:0];
  (*(a4 + 2))(v6, v7);
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  v3 = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self code];
  v4 = v3;
  if (v3 <= INGetUserCurrentRestaurantReservationBookingsIntentResponseCodeUnspecified)
  {
    v5 = off_1E7281E08[v3];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"userCurrentBookings";
  v12[0] = v5;
  userCurrentBookings = self->_userCurrentBookings;
  v7 = userCurrentBookings;
  if (!userCurrentBookings)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!userCurrentBookings)
  {
  }

  if (v4 >= 4)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (INGetUserCurrentRestaurantReservationBookingsIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)v6 userCurrentBookings];
    v8 = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self userCurrentBookings];
    if ([v7 isEqualToArray:v8])
    {
      v9 = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self code];
      v10 = v9 == [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)v6 code];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  v4 = [(INIntentResponse *)&v10 copyWithZone:a3];
  v5 = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self userCurrentBookings];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    v7 = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self userCurrentBookings];
    v8 = [v6 initWithArray:v7 copyItems:1];
    [v4 setUserCurrentBookings:v8];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  v4 = a3;
  [(INIntentResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_userCurrentBookings forKey:{@"userCurrentBookings", v5.receiver, v5.super_class}];
}

- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithUserCurrentBookings:(NSArray *)userCurrentBookings code:(INGetUserCurrentRestaurantReservationBookingsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v8 = userCurrentBookings;
  v13.receiver = self;
  v13.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  v9 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:userActivity];
  if (v9)
  {
    v10 = [(NSArray *)v8 copy];
    v11 = v9->_userCurrentBookings;
    v9->_userCurrentBookings = v10;
  }

  return v9;
}

- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  v5 = [(INIntentResponse *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"userCurrentBookings"];

    if (v9)
    {
      objc_storeStrong(&v5->_userCurrentBookings, v9);
    }
  }

  return v5;
}

@end