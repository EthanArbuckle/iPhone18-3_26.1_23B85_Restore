@interface INBoatReservation
- (BOOL)isEqual:(id)a3;
- (INBoatReservation)initWithCoder:(id)a3;
- (INBoatReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL reservedSeat:(INSeat *)reservedSeat boatTrip:(INBoatTrip *)boatTrip;
- (id)_dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INBoatReservation

- (id)_dictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = INBoatReservation;
  v3 = [(INReservation *)&v12 _dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v13[0] = @"reservedSeat";
  reservedSeat = self->_reservedSeat;
  v6 = reservedSeat;
  if (!reservedSeat)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = @"boatTrip";
  v14[0] = v6;
  boatTrip = self->_boatTrip;
  v8 = boatTrip;
  if (!boatTrip)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v4 addEntriesFromDictionary:v9];

  if (boatTrip)
  {
    if (reservedSeat)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (reservedSeat)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INBoatReservation;
  v4 = a3;
  [(INReservation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_reservedSeat forKey:{@"reservedSeat", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_boatTrip forKey:@"boatTrip"];
}

- (INBoatReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = INBoatReservation;
  v5 = [(INReservation *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reservedSeat"];
    reservedSeat = v5->_reservedSeat;
    v5->_reservedSeat = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boatTrip"];
    boatTrip = v5->_boatTrip;
    v5->_boatTrip = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = INBoatReservation, [(INReservation *)&v10 isEqual:v4]))
    {
      v5 = v4;
      reservedSeat = self->_reservedSeat;
      v8 = 0;
      if (reservedSeat == v5->_reservedSeat || [(INSeat *)reservedSeat isEqual:?])
      {
        boatTrip = self->_boatTrip;
        if (boatTrip == v5->_boatTrip || [(INBoatTrip *)boatTrip isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = INBoatReservation;
  v3 = [(INReservation *)&v6 hash];
  v4 = [(INSeat *)self->_reservedSeat hash]^ v3;
  return v4 ^ [(INBoatTrip *)self->_boatTrip hash];
}

- (INBoatReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL reservedSeat:(INSeat *)reservedSeat boatTrip:(INBoatTrip *)boatTrip
{
  v18 = reservedSeat;
  v19 = boatTrip;
  v26.receiver = self;
  v26.super_class = INBoatReservation;
  v20 = [(INReservation *)&v26 initWithItemReference:itemReference reservationNumber:reservationNumber bookingTime:bookingTime reservationStatus:reservationStatus reservationHolderName:reservationHolderName actions:actions URL:URL];
  if (v20)
  {
    v21 = [(INSeat *)v18 copy];
    v22 = v20->_reservedSeat;
    v20->_reservedSeat = v21;

    v23 = [(INBoatTrip *)v19 copy];
    v24 = v20->_boatTrip;
    v20->_boatTrip = v23;
  }

  return v20;
}

@end