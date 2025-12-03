@interface INGetUserCurrentRestaurantReservationBookingsIntentResponse
- (BOOL)isEqual:(id)equal;
- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithBackingStore:(id)store;
- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithCoder:(id)coder;
- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithUserCurrentBookings:(NSArray *)userCurrentBookings code:(INGetUserCurrentRestaurantReservationBookingsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetUserCurrentRestaurantReservationBookingsIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGetUserCurrentRestaurantReservationBookingsIntentResponse

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  completionCopy = completion;
  v7 = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self copyWithZone:0];
  (*(completion + 2))(completionCopy, v7);
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  code = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self code];
  v4 = code;
  if (code <= INGetUserCurrentRestaurantReservationBookingsIntentResponseCodeUnspecified)
  {
    null = off_1E7281E08[code];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"userCurrentBookings";
  v12[0] = null;
  userCurrentBookings = self->_userCurrentBookings;
  null2 = userCurrentBookings;
  if (!userCurrentBookings)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    userCurrentBookings = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)v6 userCurrentBookings];
    userCurrentBookings2 = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self userCurrentBookings];
    if ([userCurrentBookings isEqualToArray:userCurrentBookings2])
    {
      code = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self code];
      v10 = code == [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)v6 code];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  v4 = [(INIntentResponse *)&v10 copyWithZone:zone];
  userCurrentBookings = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self userCurrentBookings];

  if (userCurrentBookings)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    userCurrentBookings2 = [(INGetUserCurrentRestaurantReservationBookingsIntentResponse *)self userCurrentBookings];
    v8 = [v6 initWithArray:userCurrentBookings2 copyItems:1];
    [v4 setUserCurrentBookings:v8];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  coderCopy = coder;
  [(INIntentResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_userCurrentBookings forKey:{@"userCurrentBookings", v5.receiver, v5.super_class}];
}

- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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

- (INGetUserCurrentRestaurantReservationBookingsIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = INGetUserCurrentRestaurantReservationBookingsIntentResponse;
  v5 = [(INIntentResponse *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"userCurrentBookings"];

    if (v9)
    {
      objc_storeStrong(&v5->_userCurrentBookings, v9);
    }
  }

  return v5;
}

@end