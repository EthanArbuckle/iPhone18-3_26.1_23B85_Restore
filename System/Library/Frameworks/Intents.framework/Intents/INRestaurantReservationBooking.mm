@interface INRestaurantReservationBooking
- (BOOL)isEqual:(id)equal;
- (INRestaurantReservationBooking)init;
- (INRestaurantReservationBooking)initWithCoder:(id)coder;
- (INRestaurantReservationBooking)initWithRestaurant:(INRestaurant *)restaurant bookingDate:(NSDate *)bookingDate partySize:(NSUInteger)partySize bookingIdentifier:(NSString *)bookingIdentifier;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
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
  null = bookingDate;
  if (!bookingDate)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v27[2] = null;
  v26[3] = @"partySize";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_partySize];
  v27[3] = v23;
  v26[4] = @"bookingIdentifier";
  bookingIdentifier = self->_bookingIdentifier;
  null2 = bookingIdentifier;
  if (!bookingIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v27[4] = null2;
  v26[5] = @"isBookingAvailable";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[INRestaurantReservationBooking isBookingAvailable](self, "isBookingAvailable")}];
  v27[5] = v9;
  v26[6] = @"offers";
  offers = self->_offers;
  null3 = offers;
  if (!offers)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = null3;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRestaurantReservationBooking;
  v6 = [(INRestaurantReservationBooking *)&v11 description];
  _dictionaryRepresentation = [(INRestaurantReservationBooking *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    if (equalCopy)
    {
      v7 = objc_opt_class();
      if ([v7 isSubclassOfClass:objc_opt_class()])
      {
        v8 = v6;
        bookingDescription = [(INRestaurantReservationBooking *)v8 bookingDescription];
        if (bookingDescription || ([(INRestaurantReservationBooking *)self bookingDescription], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          bookingDescription2 = [(INRestaurantReservationBooking *)v8 bookingDescription];
          bookingDescription3 = [(INRestaurantReservationBooking *)self bookingDescription];
          if (bookingDescription3)
          {
            bookingDescription4 = [(INRestaurantReservationBooking *)self bookingDescription];
            v13 = [bookingDescription2 isEqualToString:bookingDescription4];
          }

          else
          {
            v13 = [bookingDescription2 isEqualToString:&stru_1F01E0850];
          }

          if (bookingDescription)
          {
LABEL_15:

            offers = [(INRestaurantReservationBooking *)v8 offers];
            if (offers || ([(INRestaurantReservationBooking *)self offers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              offers2 = [(INRestaurantReservationBooking *)v8 offers];
              offers3 = [(INRestaurantReservationBooking *)self offers];
              if (offers3)
              {
                offers4 = [(INRestaurantReservationBooking *)self offers];
                v19 = [offers2 isEqualToArray:offers4];
              }

              else
              {
                v19 = [offers2 isEqualToArray:MEMORY[0x1E695E0F0]];
              }

              if (offers)
              {
LABEL_24:

                restaurant = [(INRestaurantReservationBooking *)v8 restaurant];
                restaurant2 = [(INRestaurantReservationBooking *)self restaurant];
                if (([restaurant isEqual:restaurant2] & v13) != 1)
                {
                  LOBYTE(v14) = 0;
LABEL_38:

                  goto LABEL_39;
                }

                bookingDate = [(INRestaurantReservationBooking *)v8 bookingDate];
                bookingDate2 = [(INRestaurantReservationBooking *)self bookingDate];
                if (![bookingDate isEqualToDate:bookingDate2] || (v24 = -[INRestaurantReservationBooking partySize](v8, "partySize"), v24 != -[INRestaurantReservationBooking partySize](self, "partySize")))
                {
                  LOBYTE(v14) = 0;
                  goto LABEL_37;
                }

                bookingIdentifier = [(INRestaurantReservationBooking *)v8 bookingIdentifier];
                bookingIdentifier2 = [(INRestaurantReservationBooking *)self bookingIdentifier];
                if ([bookingIdentifier isEqualToString:?])
                {
                  v32 = bookingIdentifier;
                  isBookingAvailable = [(INRestaurantReservationBooking *)v8 isBookingAvailable];
                  LOBYTE(v14) = 0;
                  if (isBookingAvailable != [(INRestaurantReservationBooking *)self isBookingAvailable])
                  {
                    bookingIdentifier = v32;
                    goto LABEL_34;
                  }

                  bookingIdentifier = v32;
                  if ((v19 ^ 1))
                  {
LABEL_34:

LABEL_37:
                    goto LABEL_38;
                  }

                  requiresManualRequest = [(INRestaurantReservationBooking *)v8 requiresManualRequest];
                  if (requiresManualRequest == [(INRestaurantReservationBooking *)self requiresManualRequest])
                  {
                    requiresName = [(INRestaurantReservationBooking *)v8 requiresName];
                    if (requiresName == [(INRestaurantReservationBooking *)self requiresName])
                    {
                      requiresPhoneNumber = [(INRestaurantReservationBooking *)v8 requiresPhoneNumber];
                      if (requiresPhoneNumber == [(INRestaurantReservationBooking *)self requiresPhoneNumber])
                      {
                        requiresEmailAddress = [(INRestaurantReservationBooking *)v8 requiresEmailAddress];
                        v14 = requiresEmailAddress ^ [(INRestaurantReservationBooking *)self requiresEmailAddress]^ 1;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  restaurant = [(INRestaurantReservationBooking *)self restaurant];
  [v4 setRestaurant:restaurant];

  bookingDescription = [(INRestaurantReservationBooking *)self bookingDescription];
  [v4 setBookingDescription:bookingDescription];

  bookingDate = [(INRestaurantReservationBooking *)self bookingDate];
  [v4 setBookingDate:bookingDate];

  [v4 setPartySize:{-[INRestaurantReservationBooking partySize](self, "partySize")}];
  bookingIdentifier = [(INRestaurantReservationBooking *)self bookingIdentifier];
  [v4 setBookingIdentifier:bookingIdentifier];

  [v4 setBookingAvailable:{-[INRestaurantReservationBooking isBookingAvailable](self, "isBookingAvailable")}];
  offers = [(INRestaurantReservationBooking *)self offers];

  if (offers)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    offers2 = [(INRestaurantReservationBooking *)self offers];
    v12 = [v10 initWithArray:offers2 copyItems:1];
    [v4 setOffers:v12];
  }

  [v4 setRequiresManualRequest:{-[INRestaurantReservationBooking requiresManualRequest](self, "requiresManualRequest")}];
  [v4 setRequiresName:{-[INRestaurantReservationBooking requiresName](self, "requiresName")}];
  [v4 setRequiresPhoneNumber:{-[INRestaurantReservationBooking requiresPhoneNumber](self, "requiresPhoneNumber")}];
  [v4 setRequiresEmailAddress:{-[INRestaurantReservationBooking requiresEmailAddress](self, "requiresEmailAddress")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  restaurant = self->_restaurant;
  coderCopy = coder;
  [coderCopy encodeObject:restaurant forKey:@"restaurant"];
  [coderCopy encodeObject:self->_bookingDescription forKey:@"bookingDescription"];
  [coderCopy encodeObject:self->_bookingDate forKey:@"bookingDate"];
  [coderCopy encodeInteger:self->_partySize forKey:@"partySize"];
  [coderCopy encodeObject:self->_bookingIdentifier forKey:@"bookingIdentifier"];
  [coderCopy encodeBool:self->_bookingAvailable forKey:@"isBookingAvailable"];
  [coderCopy encodeObject:self->_offers forKey:@"offers"];
  [coderCopy encodeBool:self->_requiresManualRequest forKey:@"requiresManualRequest"];
  [coderCopy encodeBool:self->_requiresName forKey:@"requiresName"];
  [coderCopy encodeBool:self->_requiresPhoneNumber forKey:@"requiresPhoneNumber"];
  [coderCopy encodeBool:self->_requiresEmailAddress forKey:@"requiresEmailAddress"];
}

- (INRestaurantReservationBooking)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(INRestaurantReservationBooking *)self init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restaurant"];
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

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookingDate"];
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

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookingIdentifier"];
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

  v5->_partySize = [coderCopy decodeIntegerForKey:@"partySize"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookingDescription"];
  bookingDescription = v5->_bookingDescription;
  v5->_bookingDescription = v12;

  v5->_bookingAvailable = [coderCopy decodeBoolForKey:@"isBookingAvailable"];
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"offers"];
  offers = v5->_offers;
  v5->_offers = v17;

  v5->_requiresManualRequest = [coderCopy decodeBoolForKey:@"requiresManualRequest"];
  v5->_requiresName = [coderCopy decodeBoolForKey:@"requiresName"];
  v5->_requiresPhoneNumber = [coderCopy decodeBoolForKey:@"requiresPhoneNumber"];
  v5->_requiresEmailAddress = [coderCopy decodeBoolForKey:@"requiresEmailAddress"];
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

  date = [MEMORY[0x1E695DF00] date];
  v7 = [(INRestaurantReservationBooking *)self initWithRestaurant:v5 bookingDate:date partySize:0 bookingIdentifier:&stru_1F01E0850];

  return v7;
}

@end