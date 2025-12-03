@interface INFlightReservation
- (BOOL)isEqual:(id)equal;
- (INFlightReservation)initWithCoder:(id)coder;
- (INFlightReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL reservedSeat:(INSeat *)reservedSeat flight:(INFlight *)flight;
- (id)_dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INFlightReservation

- (id)_dictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = INFlightReservation;
  _dictionaryRepresentation = [(INReservation *)&v12 _dictionaryRepresentation];
  v4 = [_dictionaryRepresentation mutableCopy];

  v13[0] = @"reservedSeat";
  reservedSeat = self->_reservedSeat;
  null = reservedSeat;
  if (!reservedSeat)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = @"flight";
  v14[0] = null;
  flight = self->_flight;
  null2 = flight;
  if (!flight)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v4 addEntriesFromDictionary:v9];

  if (flight)
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INFlightReservation;
  coderCopy = coder;
  [(INReservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_reservedSeat forKey:{@"reservedSeat", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_flight forKey:@"flight"];
}

- (INFlightReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = INFlightReservation;
  v5 = [(INReservation *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reservedSeat"];
    reservedSeat = v5->_reservedSeat;
    v5->_reservedSeat = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flight"];
    flight = v5->_flight;
    v5->_flight = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = INFlightReservation, [(INReservation *)&v10 isEqual:equalCopy]))
    {
      v5 = equalCopy;
      reservedSeat = self->_reservedSeat;
      v8 = 0;
      if (reservedSeat == v5->_reservedSeat || [(INSeat *)reservedSeat isEqual:?])
      {
        flight = self->_flight;
        if (flight == v5->_flight || [(INFlight *)flight isEqual:?])
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
  v6.super_class = INFlightReservation;
  v3 = [(INReservation *)&v6 hash];
  v4 = [(INSeat *)self->_reservedSeat hash]^ v3;
  return v4 ^ [(INFlight *)self->_flight hash];
}

- (INFlightReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL reservedSeat:(INSeat *)reservedSeat flight:(INFlight *)flight
{
  v18 = reservedSeat;
  v19 = flight;
  v26.receiver = self;
  v26.super_class = INFlightReservation;
  v20 = [(INReservation *)&v26 initWithItemReference:itemReference reservationNumber:reservationNumber bookingTime:bookingTime reservationStatus:reservationStatus reservationHolderName:reservationHolderName actions:actions URL:URL];
  if (v20)
  {
    v21 = [(INSeat *)v18 copy];
    v22 = v20->_reservedSeat;
    v20->_reservedSeat = v21;

    v23 = [(INFlight *)v19 copy];
    v24 = v20->_flight;
    v20->_flight = v23;
  }

  return v20;
}

@end