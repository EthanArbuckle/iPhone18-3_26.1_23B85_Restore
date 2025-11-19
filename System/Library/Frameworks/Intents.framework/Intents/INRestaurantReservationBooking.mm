@interface INRestaurantReservationBooking
- (BOOL)isEqual:(id)a3;
- (INRestaurantReservationBooking)init;
- (INRestaurantReservationBooking)initWithCoder:(id)a3;
- (INRestaurantReservationBooking)initWithRestaurant:(INRestaurant *)restaurant bookingDate:(NSDate *)bookingDate partySize:(NSUInteger)partySize bookingIdentifier:(NSString *)bookingIdentifier;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRestaurantReservationBooking

- (id)_dictionaryRepresentation
{
  v27[11] = *MEMORY[0x1E69E9840];
  restaurant = self->_restaurant;
  v25 = restaurant;
  v26[0] = @"restaurant";
  if (!restaurant)
  {
    restaurant = [MEMORY[0x1E695DFB0] null];
  }

  v22 = restaurant;
  v27[0] = restaurant;
  v26[1] = @"bookingDescription";
  bookingDescription = self->_bookingDescription;
  v24 = bookingDescription;
  if (!bookingDescription)
  {
    bookingDescription = [MEMORY[0x1E695DFB0] null];
  }

  v21 = bookingDescription;
  v27[1] = bookingDescription;
  v26[2] = @"bookingDate";
  bookingDate = self->_bookingDate;
  v6 = bookingDate;
  if (!bookingDate)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v6;
  v27[2] = v6;
  v26[3] = @"partySize";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_partySize];
  v27[3] = v23;
  v26[4] = @"bookingIdentifier";
  bookingIdentifier = self->_bookingIdentifier;
  v8 = bookingIdentifier;
  if (!bookingIdentifier)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v8;
  v27[4] = v8;
  v26[5] = @"isBookingAvailable";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[INRestaurantReservationBooking isBookingAvailable](self, "isBookingAvailable")}];
  v27[5] = v9;
  v26[6] = @"offers";
  offers = self->_offers;
  v11 = offers;
  if (!offers)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = v11;
  v26[7] = @"requiresManualRequest";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresManualRequest];
  v27[7] = v12;
  v26[8] = @"requiresEmailAddress";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresEmailAddress];
  v27[8] = v13;
  v26[9] = @"requiresName";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresName];
  v27[9] = v14;
  v26[10] = @"requiresPhoneNumber";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresPhoneNumber];
  v27[10] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:11];

  if (!offers)
  {
  }

  if (!bookingIdentifier)
  {
  }

  if (!bookingDate)
  {
  }

  if (!v24)
  {
  }

  if (!v25)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRestaurantReservationBooking;
  v6 = [(INRestaurantReservationBooking *)&v11 description];
  v7 = [(INRestaurantReservationBooking *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    if (v5)
    {
      v7 = objc_opt_class();
      if ([v7 isSubclassOfClass:objc_opt_class()])
      {
        v8 = v6;
        v9 = [(INRestaurantReservationBooking *)v8 bookingDescription];
        if (v9 || ([(INRestaurantReservationBooking *)self bookingDescription], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v10 = [(INRestaurantReservationBooking *)v8 bookingDescription];
          v11 = [(INRestaurantReservationBooking *)self bookingDescription];
          if (v11)
          {
            v12 = [(INRestaurantReservationBooking *)self bookingDescription];
            v13 = [v10 isEqualToString:v12];
          }

          else
          {
            v13 = [v10 isEqualToString:&stru_1F01E0850];
          }

          if (v9)
          {
LABEL_15:

            v15 = [(INRestaurantReservationBooking *)v8 offers];
            if (v15 || ([(INRestaurantReservationBooking *)self offers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v16 = [(INRestaurantReservationBooking *)v8 offers];
              v17 = [(INRestaurantReservationBooking *)self offers];
              if (v17)
              {
                v18 = [(INRestaurantReservationBooking *)self offers];
                v19 = [v16 isEqualToArray:v18];
              }

              else
              {
                v19 = [v16 isEqualToArray:MEMORY[0x1E695E0F0]];
              }

              if (v15)
              {
LABEL_24:

                v20 = [(INRestaurantReservationBooking *)v8 restaurant];
                v21 = [(INRestaurantReservationBooking *)self restaurant];
                if (([v20 isEqual:v21] & v13) != 1)
                {
                  LOBYTE(v14) = 0;
LABEL_38:

                  goto LABEL_39;
                }

                v22 = [(INRestaurantReservationBooking *)v8 bookingDate];
                v23 = [(INRestaurantReservationBooking *)self bookingDate];
                if (![v22 isEqualToDate:v23] || (v24 = -[INRestaurantReservationBooking partySize](v8, "partySize"), v24 != -[INRestaurantReservationBooking partySize](self, "partySize")))
                {
                  LOBYTE(v14) = 0;
                  goto LABEL_37;
                }

                v25 = [(INRestaurantReservationBooking *)v8 bookingIdentifier];
                v33 = [(INRestaurantReservationBooking *)self bookingIdentifier];
                if ([v25 isEqualToString:?])
                {
                  v32 = v25;
                  v26 = [(INRestaurantReservationBooking *)v8 isBookingAvailable];
                  LOBYTE(v14) = 0;
                  if (v26 != [(INRestaurantReservationBooking *)self isBookingAvailable])
                  {
                    v25 = v32;
                    goto LABEL_34;
                  }

                  v25 = v32;
                  if ((v19 ^ 1))
                  {
LABEL_34:

LABEL_37:
                    goto LABEL_38;
                  }

                  v27 = [(INRestaurantReservationBooking *)v8 requiresManualRequest];
                  if (v27 == [(INRestaurantReservationBooking *)self requiresManualRequest])
                  {
                    v28 = [(INRestaurantReservationBooking *)v8 requiresName];
                    if (v28 == [(INRestaurantReservationBooking *)self requiresName])
                    {
                      v29 = [(INRestaurantReservationBooking *)v8 requiresPhoneNumber];
                      if (v29 == [(INRestaurantReservationBooking *)self requiresPhoneNumber])
                      {
                        v31 = [(INRestaurantReservationBooking *)v8 requiresEmailAddress];
                        v14 = v31 ^ [(INRestaurantReservationBooking *)self requiresEmailAddress]^ 1;
                        goto LABEL_34;
                      }
                    }
                  }
                }

                LOBYTE(v14) = 0;
                goto LABEL_34;
              }
            }

            else
            {
              v19 = 1;
            }

            goto LABEL_24;
          }
        }

        else
        {
          v13 = 1;
        }

        goto LABEL_15;
      }
    }

    LOBYTE(v14) = 0;
  }

LABEL_39:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(INRestaurantReservationBooking *)self restaurant];
  [v4 setRestaurant:v5];

  v6 = [(INRestaurantReservationBooking *)self bookingDescription];
  [v4 setBookingDescription:v6];

  v7 = [(INRestaurantReservationBooking *)self bookingDate];
  [v4 setBookingDate:v7];

  [v4 setPartySize:{-[INRestaurantReservationBooking partySize](self, "partySize")}];
  v8 = [(INRestaurantReservationBooking *)self bookingIdentifier];
  [v4 setBookingIdentifier:v8];

  [v4 setBookingAvailable:{-[INRestaurantReservationBooking isBookingAvailable](self, "isBookingAvailable")}];
  v9 = [(INRestaurantReservationBooking *)self offers];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    v11 = [(INRestaurantReservationBooking *)self offers];
    v12 = [v10 initWithArray:v11 copyItems:1];
    [v4 setOffers:v12];
  }

  [v4 setRequiresManualRequest:{-[INRestaurantReservationBooking requiresManualRequest](self, "requiresManualRequest")}];
  [v4 setRequiresName:{-[INRestaurantReservationBooking requiresName](self, "requiresName")}];
  [v4 setRequiresPhoneNumber:{-[INRestaurantReservationBooking requiresPhoneNumber](self, "requiresPhoneNumber")}];
  [v4 setRequiresEmailAddress:{-[INRestaurantReservationBooking requiresEmailAddress](self, "requiresEmailAddress")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  restaurant = self->_restaurant;
  v5 = a3;
  [v5 encodeObject:restaurant forKey:@"restaurant"];
  [v5 encodeObject:self->_bookingDescription forKey:@"bookingDescription"];
  [v5 encodeObject:self->_bookingDate forKey:@"bookingDate"];
  [v5 encodeInteger:self->_partySize forKey:@"partySize"];
  [v5 encodeObject:self->_bookingIdentifier forKey:@"bookingIdentifier"];
  [v5 encodeBool:self->_bookingAvailable forKey:@"isBookingAvailable"];
  [v5 encodeObject:self->_offers forKey:@"offers"];
  [v5 encodeBool:self->_requiresManualRequest forKey:@"requiresManualRequest"];
  [v5 encodeBool:self->_requiresName forKey:@"requiresName"];
  [v5 encodeBool:self->_requiresPhoneNumber forKey:@"requiresPhoneNumber"];
  [v5 encodeBool:self->_requiresEmailAddress forKey:@"requiresEmailAddress"];
}

- (INRestaurantReservationBooking)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INRestaurantReservationBooking *)self init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restaurant"];
  if (!v6)
  {
    v20 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    v24 = "[INRestaurantReservationBooking initWithCoder:]";
    v25 = 2080;
    v26 = "_restaurant";
LABEL_13:
    _os_log_error_impl(&dword_18E991000, v20, OS_LOG_TYPE_ERROR, "%s Null value for %s", buf, 0x16u);
    goto LABEL_14;
  }

  restaurant = v5->_restaurant;
  v5->_restaurant = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookingDate"];
  if (!v8)
  {
    v20 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    v24 = "[INRestaurantReservationBooking initWithCoder:]";
    v25 = 2080;
    v26 = "_bookingDate";
    goto LABEL_13;
  }

  bookingDate = v5->_bookingDate;
  v5->_bookingDate = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookingIdentifier"];
  if (!v10)
  {
    v20 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[INRestaurantReservationBooking initWithCoder:]";
      v25 = 2080;
      v26 = "_bookingIdentifier";
      goto LABEL_13;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  bookingIdentifier = v5->_bookingIdentifier;
  v5->_bookingIdentifier = v10;

  v5->_partySize = [v4 decodeIntegerForKey:@"partySize"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookingDescription"];
  bookingDescription = v5->_bookingDescription;
  v5->_bookingDescription = v12;

  v5->_bookingAvailable = [v4 decodeBoolForKey:@"isBookingAvailable"];
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"offers"];
  offers = v5->_offers;
  v5->_offers = v17;

  v5->_requiresManualRequest = [v4 decodeBoolForKey:@"requiresManualRequest"];
  v5->_requiresName = [v4 decodeBoolForKey:@"requiresName"];
  v5->_requiresPhoneNumber = [v4 decodeBoolForKey:@"requiresPhoneNumber"];
  v5->_requiresEmailAddress = [v4 decodeBoolForKey:@"requiresEmailAddress"];
LABEL_6:
  v19 = v5;
LABEL_15:

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (INRestaurantReservationBooking)initWithRestaurant:(INRestaurant *)restaurant bookingDate:(NSDate *)bookingDate partySize:(NSUInteger)partySize bookingIdentifier:(NSString *)bookingIdentifier
{
  v10 = restaurant;
  v11 = bookingDate;
  v12 = bookingIdentifier;
  v21.receiver = self;
  v21.super_class = INRestaurantReservationBooking;
  v13 = [(INRestaurantReservationBooking *)&v21 init];
  if (v13)
  {
    v14 = [(INRestaurant *)v10 copy];
    v15 = *(v13 + 2);
    *(v13 + 2) = v14;

    v16 = [(NSDate *)v11 copy];
    v17 = *(v13 + 4);
    *(v13 + 4) = v16;

    *(v13 + 5) = partySize;
    v18 = [(NSString *)v12 copy];
    v19 = *(v13 + 6);
    *(v13 + 6) = v18;

    v13[8] = 1;
    *(v13 + 9) = 0;
  }

  return v13;
}

- (INRestaurantReservationBooking)init
{
  v3 = [INRestaurant alloc];
  v4 = objc_opt_new();
  v5 = [(INRestaurant *)v3 initWithLocation:v4 name:&stru_1F01E0850 vendorIdentifier:&stru_1F01E0850 restaurantIdentifier:&stru_1F01E0850];

  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [(INRestaurantReservationBooking *)self initWithRestaurant:v5 bookingDate:v6 partySize:0 bookingIdentifier:&stru_1F01E0850];

  return v7;
}

@end