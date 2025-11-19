@interface INBookRestaurantReservationIntentResponse
- (BOOL)isEqual:(id)a3;
- (INBookRestaurantReservationIntentCode)code;
- (INBookRestaurantReservationIntentResponse)initWithCode:(INBookRestaurantReservationIntentCode)code userActivity:(NSUserActivity *)userActivity;
- (INBookRestaurantReservationIntentResponse)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INBookRestaurantReservationIntentResponse

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(INBookRestaurantReservationIntentResponse *)self copyWithZone:0];
  (*(a4 + 2))(v6, v7);
}

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"code";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INBookRestaurantReservationIntentResponse code](self, "code")}];
  v9[1] = @"userBooking";
  v10[0] = v3;
  userBooking = self->_userBooking;
  v5 = userBooking;
  if (!userBooking)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!userBooking)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (INBookRestaurantReservationIntentCode)code
{
  v3.receiver = self;
  v3.super_class = INBookRestaurantReservationIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
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
        v8 = [(INBookRestaurantReservationIntentResponse *)self userBooking];
        if (v8 || ([(INBookRestaurantReservationIntentResponse *)v7 userBooking], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(INBookRestaurantReservationIntentResponse *)self userBooking];
          v10 = [(INBookRestaurantReservationIntentResponse *)v7 userBooking];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = INBookRestaurantReservationIntentResponse;
  v4 = [(INIntentResponse *)&v7 copyWithZone:a3];
  v5 = [(INBookRestaurantReservationIntentResponse *)self userBooking];
  [v4 setUserBooking:v5];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INBookRestaurantReservationIntentResponse;
  v4 = a3;
  [(INIntentResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_userBooking forKey:{@"userBooking", v5.receiver, v5.super_class}];
}

- (INBookRestaurantReservationIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INBookRestaurantReservationIntentResponse;
  v5 = [(INIntentResponse *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userBooking"];
    userBooking = v5->_userBooking;
    v5->_userBooking = v6;
  }

  return v5;
}

- (INBookRestaurantReservationIntentResponse)initWithCode:(INBookRestaurantReservationIntentCode)code userActivity:(NSUserActivity *)userActivity
{
  v5.receiver = self;
  v5.super_class = INBookRestaurantReservationIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:userActivity];
}

@end