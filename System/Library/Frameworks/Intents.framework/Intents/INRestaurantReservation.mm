@interface INRestaurantReservation
- (BOOL)isEqual:(id)equal;
- (INRestaurantReservation)initWithCoder:(id)coder;
- (INRestaurantReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL reservationDuration:(INDateComponentsRange *)reservationDuration partySize:(NSNumber *)partySize restaurantLocation:(CLPlacemark *)restaurantLocation;
- (id)_dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRestaurantReservation

- (id)_dictionaryRepresentation
{
  v16[3] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = INRestaurantReservation;
  _dictionaryRepresentation = [(INReservation *)&v14 _dictionaryRepresentation];
  v4 = [_dictionaryRepresentation mutableCopy];

  v15[0] = @"reservationDuration";
  reservationDuration = self->_reservationDuration;
  null = reservationDuration;
  if (!reservationDuration)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"partySize";
  partySize = self->_partySize;
  null2 = partySize;
  if (!partySize)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"restaurantLocation";
  restaurantLocation = self->_restaurantLocation;
  null3 = restaurantLocation;
  if (!restaurantLocation)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v4 addEntriesFromDictionary:v11];

  if (restaurantLocation)
  {
    if (partySize)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (reservationDuration)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!partySize)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (reservationDuration)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = INRestaurantReservation;
  coderCopy = coder;
  [(INReservation *)&v11 encodeWithCoder:coderCopy];
  reservationDuration = self->_reservationDuration;
  v6 = NSStringFromSelector(sel_reservationDuration);
  [coderCopy encodeObject:reservationDuration forKey:{v6, v11.receiver, v11.super_class}];

  partySize = self->_partySize;
  v8 = NSStringFromSelector(sel_partySize);
  [coderCopy encodeObject:partySize forKey:v8];

  restaurantLocation = self->_restaurantLocation;
  v10 = NSStringFromSelector(sel_restaurantLocation);
  [coderCopy encodeObject:restaurantLocation forKey:v10];
}

- (INRestaurantReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = INRestaurantReservation;
  v5 = [(INReservation *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_reservationDuration);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    reservationDuration = v5->_reservationDuration;
    v5->_reservationDuration = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_partySize);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    partySize = v5->_partySize;
    v5->_partySize = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_restaurantLocation);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    restaurantLocation = v5->_restaurantLocation;
    v5->_restaurantLocation = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = INRestaurantReservation, [(INReservation *)&v11 isEqual:equalCopy]))
    {
      v5 = equalCopy;
      reservationDuration = self->_reservationDuration;
      v9 = 0;
      if (reservationDuration == v5->_reservationDuration || [(INDateComponentsRange *)reservationDuration isEqual:?])
      {
        partySize = self->_partySize;
        if (partySize == v5->_partySize || [(NSNumber *)partySize isEqual:?])
        {
          restaurantLocation = self->_restaurantLocation;
          if (restaurantLocation == v5->_restaurantLocation || [(CLPlacemark *)restaurantLocation isEqual:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = INRestaurantReservation;
  v3 = [(INReservation *)&v7 hash];
  v4 = [(INDateComponentsRange *)self->_reservationDuration hash]^ v3;
  v5 = [(NSNumber *)self->_partySize hash];
  return v4 ^ v5 ^ [(CLPlacemark *)self->_restaurantLocation hash];
}

- (INRestaurantReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL reservationDuration:(INDateComponentsRange *)reservationDuration partySize:(NSNumber *)partySize restaurantLocation:(CLPlacemark *)restaurantLocation
{
  v18 = reservationDuration;
  v19 = partySize;
  v20 = restaurantLocation;
  v30.receiver = self;
  v30.super_class = INRestaurantReservation;
  v21 = [(INReservation *)&v30 initWithItemReference:itemReference reservationNumber:reservationNumber bookingTime:bookingTime reservationStatus:reservationStatus reservationHolderName:reservationHolderName actions:actions URL:URL];
  if (v21)
  {
    v22 = [(INDateComponentsRange *)v18 copy];
    v23 = v21->_reservationDuration;
    v21->_reservationDuration = v22;

    v24 = [(NSNumber *)v19 copy];
    v25 = v21->_partySize;
    v21->_partySize = v24;

    v26 = [(CLPlacemark *)v20 copy];
    v27 = v21->_restaurantLocation;
    v21->_restaurantLocation = v26;
  }

  return v21;
}

@end