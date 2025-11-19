@interface INTicketedEventReservation
- (BOOL)isEqual:(id)a3;
- (INTicketedEventReservation)initWithCoder:(id)a3;
- (INTicketedEventReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL reservedSeat:(INSeat *)reservedSeat event:(INTicketedEvent *)event;
- (id)_dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INTicketedEventReservation

- (id)_dictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = INTicketedEventReservation;
  v3 = [(INReservation *)&v12 _dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v13[0] = @"event";
  event = self->_event;
  v6 = event;
  if (!event)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = @"reservedSeat";
  v14[0] = v6;
  reservedSeat = self->_reservedSeat;
  v8 = reservedSeat;
  if (!reservedSeat)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v4 addEntriesFromDictionary:v9];

  if (reservedSeat)
  {
    if (event)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (event)
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
  v9.super_class = INTicketedEventReservation;
  v4 = a3;
  [(INReservation *)&v9 encodeWithCoder:v4];
  event = self->_event;
  v6 = NSStringFromSelector(sel_event);
  [v4 encodeObject:event forKey:{v6, v9.receiver, v9.super_class}];

  reservedSeat = self->_reservedSeat;
  v8 = NSStringFromSelector(sel_reservedSeat);
  [v4 encodeObject:reservedSeat forKey:v8];
}

- (INTicketedEventReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INTicketedEventReservation;
  v5 = [(INReservation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_event);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    event = v5->_event;
    v5->_event = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_reservedSeat);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    reservedSeat = v5->_reservedSeat;
    v5->_reservedSeat = v12;
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = INTicketedEventReservation, [(INReservation *)&v10 isEqual:v4]))
    {
      v5 = v4;
      event = self->_event;
      v8 = 0;
      if (event == v5->_event || [(INTicketedEvent *)event isEqual:?])
      {
        reservedSeat = self->_reservedSeat;
        if (reservedSeat == v5->_reservedSeat || [(INSeat *)reservedSeat isEqual:?])
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
  v6.super_class = INTicketedEventReservation;
  v3 = [(INReservation *)&v6 hash];
  v4 = [(INTicketedEvent *)self->_event hash]^ v3;
  return v4 ^ [(INSeat *)self->_reservedSeat hash];
}

- (INTicketedEventReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL reservedSeat:(INSeat *)reservedSeat event:(INTicketedEvent *)event
{
  v18 = reservedSeat;
  v19 = event;
  v26.receiver = self;
  v26.super_class = INTicketedEventReservation;
  v20 = [(INReservation *)&v26 initWithItemReference:itemReference reservationNumber:reservationNumber bookingTime:bookingTime reservationStatus:reservationStatus reservationHolderName:reservationHolderName actions:actions URL:URL];
  if (v20)
  {
    v21 = [(INTicketedEvent *)v19 copy];
    v22 = v20->_event;
    v20->_event = v21;

    v23 = [(INSeat *)v18 copy];
    v24 = v20->_reservedSeat;
    v20->_reservedSeat = v23;
  }

  return v20;
}

@end