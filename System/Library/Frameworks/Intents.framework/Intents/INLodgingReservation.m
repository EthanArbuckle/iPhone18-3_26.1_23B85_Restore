@interface INLodgingReservation
- (BOOL)isEqual:(id)a3;
- (INLodgingReservation)initWithCoder:(id)a3;
- (INLodgingReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL lodgingBusinessLocation:(CLPlacemark *)lodgingBusinessLocation reservationDuration:(INDateComponentsRange *)reservationDuration numberOfAdults:(NSNumber *)numberOfAdults numberOfChildren:(NSNumber *)numberOfChildren;
- (id)_dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INLodgingReservation

- (id)_dictionaryRepresentation
{
  v18[4] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = INLodgingReservation;
  v3 = [(INReservation *)&v16 _dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v17[0] = @"lodgingBusinessLocation";
  lodgingBusinessLocation = self->_lodgingBusinessLocation;
  v6 = lodgingBusinessLocation;
  if (!lodgingBusinessLocation)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v6;
  v17[1] = @"reservationDuration";
  reservationDuration = self->_reservationDuration;
  v8 = reservationDuration;
  if (!reservationDuration)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v8;
  v17[2] = @"numberOfAdults";
  numberOfAdults = self->_numberOfAdults;
  v10 = numberOfAdults;
  if (!numberOfAdults)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v10;
  v17[3] = @"numberOfChildren";
  numberOfChildren = self->_numberOfChildren;
  v12 = numberOfChildren;
  if (!numberOfChildren)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  [v4 addEntriesFromDictionary:v13];

  if (numberOfChildren)
  {
    if (numberOfAdults)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (numberOfAdults)
    {
LABEL_11:
      if (reservationDuration)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (lodgingBusinessLocation)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!reservationDuration)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (lodgingBusinessLocation)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = INLodgingReservation;
  v4 = a3;
  [(INReservation *)&v13 encodeWithCoder:v4];
  lodgingBusinessLocation = self->_lodgingBusinessLocation;
  v6 = NSStringFromSelector(sel_lodgingBusinessLocation);
  [v4 encodeObject:lodgingBusinessLocation forKey:{v6, v13.receiver, v13.super_class}];

  reservationDuration = self->_reservationDuration;
  v8 = NSStringFromSelector(sel_reservationDuration);
  [v4 encodeObject:reservationDuration forKey:v8];

  numberOfAdults = self->_numberOfAdults;
  v10 = NSStringFromSelector(sel_numberOfAdults);
  [v4 encodeObject:numberOfAdults forKey:v10];

  numberOfChildren = self->_numberOfChildren;
  v12 = NSStringFromSelector(sel_numberOfChildren);
  [v4 encodeObject:numberOfChildren forKey:v12];
}

- (INLodgingReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = INLodgingReservation;
  v5 = [(INReservation *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_lodgingBusinessLocation);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    lodgingBusinessLocation = v5->_lodgingBusinessLocation;
    v5->_lodgingBusinessLocation = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_reservationDuration);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    reservationDuration = v5->_reservationDuration;
    v5->_reservationDuration = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_numberOfAdults);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    numberOfAdults = v5->_numberOfAdults;
    v5->_numberOfAdults = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_numberOfChildren);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    numberOfChildren = v5->_numberOfChildren;
    v5->_numberOfChildren = v20;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v12.receiver = self, v12.super_class = INLodgingReservation, [(INReservation *)&v12 isEqual:v4]))
    {
      v5 = v4;
      lodgingBusinessLocation = self->_lodgingBusinessLocation;
      v10 = 0;
      if (lodgingBusinessLocation == v5->_lodgingBusinessLocation || [(CLPlacemark *)lodgingBusinessLocation isEqual:?])
      {
        reservationDuration = self->_reservationDuration;
        if (reservationDuration == v5->_reservationDuration || [(INDateComponentsRange *)reservationDuration isEqual:?])
        {
          numberOfAdults = self->_numberOfAdults;
          if (numberOfAdults == v5->_numberOfAdults || [(NSNumber *)numberOfAdults isEqual:?])
          {
            numberOfChildren = self->_numberOfChildren;
            if (numberOfChildren == v5->_numberOfChildren || [(NSNumber *)numberOfChildren isEqual:?])
            {
              v10 = 1;
            }
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = INLodgingReservation;
  v3 = [(INReservation *)&v8 hash];
  v4 = [(CLPlacemark *)self->_lodgingBusinessLocation hash]^ v3;
  v5 = [(INDateComponentsRange *)self->_reservationDuration hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_numberOfAdults hash];
  return v6 ^ [(NSNumber *)self->_numberOfChildren hash];
}

- (INLodgingReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL lodgingBusinessLocation:(CLPlacemark *)lodgingBusinessLocation reservationDuration:(INDateComponentsRange *)reservationDuration numberOfAdults:(NSNumber *)numberOfAdults numberOfChildren:(NSNumber *)numberOfChildren
{
  v18 = lodgingBusinessLocation;
  v19 = reservationDuration;
  v20 = numberOfAdults;
  v21 = numberOfChildren;
  v34.receiver = self;
  v34.super_class = INLodgingReservation;
  v22 = [(INReservation *)&v34 initWithItemReference:itemReference reservationNumber:reservationNumber bookingTime:bookingTime reservationStatus:reservationStatus reservationHolderName:reservationHolderName actions:actions URL:URL];
  if (v22)
  {
    v23 = [(CLPlacemark *)v18 copy];
    v24 = v22->_lodgingBusinessLocation;
    v22->_lodgingBusinessLocation = v23;

    v25 = [(INDateComponentsRange *)v19 copy];
    v26 = v22->_reservationDuration;
    v22->_reservationDuration = v25;

    v27 = [(NSNumber *)v20 copy];
    v28 = v22->_numberOfAdults;
    v22->_numberOfAdults = v27;

    v29 = [(NSNumber *)v21 copy];
    v30 = v22->_numberOfChildren;
    v22->_numberOfChildren = v29;
  }

  return v22;
}

@end