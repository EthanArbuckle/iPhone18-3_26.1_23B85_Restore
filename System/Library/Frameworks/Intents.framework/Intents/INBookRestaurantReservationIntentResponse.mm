@interface INBookRestaurantReservationIntentResponse
- (BOOL)isEqual:(id)equal;
- (INBookRestaurantReservationIntentCode)code;
- (INBookRestaurantReservationIntentResponse)initWithCode:(INBookRestaurantReservationIntentCode)code userActivity:(NSUserActivity *)userActivity;
- (INBookRestaurantReservationIntentResponse)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INBookRestaurantReservationIntentResponse

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  completionCopy = completion;
  v7 = [(INBookRestaurantReservationIntentResponse *)self copyWithZone:0];
  (*(completion + 2))(completionCopy, v7);
}

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"code";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INBookRestaurantReservationIntentResponse code](self, "code")}];
  v9[1] = @"userBooking";
  v10[0] = v3;
  userBooking = self->_userBooking;
  null = userBooking;
  if (!userBooking)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
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
        v7 = v6;
        userBooking = [(INBookRestaurantReservationIntentResponse *)self userBooking];
        if (userBooking || ([(INBookRestaurantReservationIntentResponse *)v7 userBooking], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          userBooking2 = [(INBookRestaurantReservationIntentResponse *)self userBooking];
          userBooking3 = [(INBookRestaurantReservationIntentResponse *)v7 userBooking];
          v11 = [userBooking2 isEqual:userBooking3];

          if (userBooking)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = INBookRestaurantReservationIntentResponse;
  v4 = [(INIntentResponse *)&v7 copyWithZone:zone];
  userBooking = [(INBookRestaurantReservationIntentResponse *)self userBooking];
  [v4 setUserBooking:userBooking];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INBookRestaurantReservationIntentResponse;
  coderCopy = coder;
  [(INIntentResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_userBooking forKey:{@"userBooking", v5.receiver, v5.super_class}];
}

- (INBookRestaurantReservationIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = INBookRestaurantReservationIntentResponse;
  v5 = [(INIntentResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userBooking"];
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