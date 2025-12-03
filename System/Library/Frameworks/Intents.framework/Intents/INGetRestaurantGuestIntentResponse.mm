@interface INGetRestaurantGuestIntentResponse
- (BOOL)isEqual:(id)equal;
- (INGetRestaurantGuestIntentResponse)initWithBackingStore:(id)store;
- (INGetRestaurantGuestIntentResponse)initWithCode:(INGetRestaurantGuestIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetRestaurantGuestIntentResponse)initWithCoder:(id)coder;
- (INGetRestaurantGuestIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGetRestaurantGuestIntentResponse

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  completionCopy = completion;
  v7 = [(INGetRestaurantGuestIntentResponse *)self copyWithZone:0];
  (*(completion + 2))(completionCopy, v7);
}

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"guest";
  guest = self->_guest;
  null = guest;
  if (!guest)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"guestDisplayPreferences";
  guestDisplayPreferences = self->_guestDisplayPreferences;
  null2 = guestDisplayPreferences;
  if (!guestDisplayPreferences)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"code";
  code = [(INGetRestaurantGuestIntentResponse *)self code];
  v8 = @"Failure";
  if (code != INGetRestaurantGuestIntentResponseCodeFailure)
  {
    v8 = 0;
  }

  if (code == INGetRestaurantGuestIntentResponseCodeSuccess)
  {
    v8 = @"Success";
  }

  v9 = v8;
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (!v9)
  {
  }

  if (guestDisplayPreferences)
  {
    if (guest)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (guest)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (INGetRestaurantGuestIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INGetRestaurantGuestIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      guest = [(INGetRestaurantGuestIntentResponse *)v6 guest];
      if (guest || ([(INGetRestaurantGuestIntentResponse *)self guest], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        guest2 = [(INGetRestaurantGuestIntentResponse *)self guest];
        guest3 = [(INGetRestaurantGuestIntentResponse *)v6 guest];
        v10 = [guest2 isEqual:guest3];

        if (guest)
        {
LABEL_11:

          guestDisplayPreferences = [(INGetRestaurantGuestIntentResponse *)v6 guestDisplayPreferences];
          if (guestDisplayPreferences || ([(INGetRestaurantGuestIntentResponse *)self guestDisplayPreferences], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            guestDisplayPreferences2 = [(INGetRestaurantGuestIntentResponse *)self guestDisplayPreferences];
            guestDisplayPreferences3 = [(INGetRestaurantGuestIntentResponse *)v6 guestDisplayPreferences];
            v15 = [guestDisplayPreferences2 isEqual:guestDisplayPreferences3];

            if (guestDisplayPreferences)
            {
LABEL_17:

              v11 = v10 & v15;
              goto LABEL_18;
            }
          }

          else
          {
            v15 = 1;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_11;
    }

    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = INGetRestaurantGuestIntentResponse;
  v4 = [(INIntentResponse *)&v8 copyWithZone:zone];
  guest = [(INGetRestaurantGuestIntentResponse *)self guest];
  [v4 setGuest:guest];

  guestDisplayPreferences = [(INGetRestaurantGuestIntentResponse *)self guestDisplayPreferences];
  [v4 setGuestDisplayPreferences:guestDisplayPreferences];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetRestaurantGuestIntentResponse;
  coderCopy = coder;
  [(INIntentResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_guest forKey:{@"guest", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_guestDisplayPreferences forKey:@"guestDisplayPreferences"];
}

- (INGetRestaurantGuestIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = INGetRestaurantGuestIntentResponse;
  v5 = [(INIntentResponse *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guest"];
    guest = v5->_guest;
    v5->_guest = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guestDisplayPreferences"];
    guestDisplayPreferences = v5->_guestDisplayPreferences;
    v5->_guestDisplayPreferences = v8;
  }

  return v5;
}

- (INGetRestaurantGuestIntentResponse)initWithCode:(INGetRestaurantGuestIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v5.receiver = self;
  v5.super_class = INGetRestaurantGuestIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:userActivity];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INGetRestaurantGuestIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INGetRestaurantGuestIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INGetRestaurantGuestIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

@end