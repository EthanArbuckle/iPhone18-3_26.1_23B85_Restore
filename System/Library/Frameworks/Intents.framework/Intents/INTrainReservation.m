@interface INTrainReservation
- (BOOL)isEqual:(id)a3;
- (INTrainReservation)initWithCoder:(id)a3;
- (INTrainReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL reservedSeat:(INSeat *)reservedSeat trainTrip:(INTrainTrip *)trainTrip;
- (id)_dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INTrainReservation

- (id)_dictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = INTrainReservation;
  v3 = [(INReservation *)&v12 _dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v13[0] = @"reservedSeat";
  reservedSeat = self->_reservedSeat;
  v6 = reservedSeat;
  if (!reservedSeat)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = @"trainTrip";
  v14[0] = v6;
  trainTrip = self->_trainTrip;
  v8 = trainTrip;
  if (!trainTrip)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v4 addEntriesFromDictionary:v9];

  if (trainTrip)
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
  v9.receiver = self;
  v9.super_class = INTrainReservation;
  v4 = a3;
  [(INReservation *)&v9 encodeWithCoder:v4];
  reservedSeat = self->_reservedSeat;
  v6 = NSStringFromSelector(sel_reservedSeat);
  [v4 encodeObject:reservedSeat forKey:{v6, v9.receiver, v9.super_class}];

  trainTrip = self->_trainTrip;
  v8 = NSStringFromSelector(sel_trainTrip);
  [v4 encodeObject:trainTrip forKey:v8];
}

- (INTrainReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INTrainReservation;
  v5 = [(INReservation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_reservedSeat);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    reservedSeat = v5->_reservedSeat;
    v5->_reservedSeat = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_trainTrip);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    trainTrip = v5->_trainTrip;
    v5->_trainTrip = v12;
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = INTrainReservation, [(INReservation *)&v10 isEqual:v4]))
    {
      v5 = v4;
      reservedSeat = self->_reservedSeat;
      v8 = 0;
      if (reservedSeat == v5->_reservedSeat || [(INSeat *)reservedSeat isEqual:?])
      {
        trainTrip = self->_trainTrip;
        if (trainTrip == v5->_trainTrip || [(INTrainTrip *)trainTrip isEqual:?])
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
  v6.super_class = INTrainReservation;
  v3 = [(INReservation *)&v6 hash];
  v4 = [(INSeat *)self->_reservedSeat hash]^ v3;
  return v4 ^ [(INTrainTrip *)self->_trainTrip hash];
}

- (INTrainReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL reservedSeat:(INSeat *)reservedSeat trainTrip:(INTrainTrip *)trainTrip
{
  v18 = reservedSeat;
  v19 = trainTrip;
  v26.receiver = self;
  v26.super_class = INTrainReservation;
  v20 = [(INReservation *)&v26 initWithItemReference:itemReference reservationNumber:reservationNumber bookingTime:bookingTime reservationStatus:reservationStatus reservationHolderName:reservationHolderName actions:actions URL:URL];
  if (v20)
  {
    v21 = [(INSeat *)v18 copy];
    v22 = v20->_reservedSeat;
    v20->_reservedSeat = v21;

    v23 = [(INTrainTrip *)v19 copy];
    v24 = v20->_trainTrip;
    v20->_trainTrip = v23;
  }

  return v20;
}

@end