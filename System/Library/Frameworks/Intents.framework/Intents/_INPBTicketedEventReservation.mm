@interface _INPBTicketedEventReservation
- (BOOL)isEqual:(id)a3;
- (_INPBTicketedEventReservation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBTicketedEventReservation

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBTicketedEventReservation *)self event];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"event"];

  v6 = [(_INPBTicketedEventReservation *)self reservation];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"reservation"];

  v8 = [(_INPBTicketedEventReservation *)self reservedSeat];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"reservedSeat"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBTicketedEvent *)self->_event hash];
  v4 = [(_INPBReservation *)self->_reservation hash]^ v3;
  return v4 ^ [(_INPBSeat *)self->_reservedSeat hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBTicketedEventReservation *)self event];
  v6 = [v4 event];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBTicketedEventReservation *)self event];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBTicketedEventReservation *)self event];
    v10 = [v4 event];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBTicketedEventReservation *)self reservation];
  v6 = [v4 reservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBTicketedEventReservation *)self reservation];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBTicketedEventReservation *)self reservation];
    v15 = [v4 reservation];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBTicketedEventReservation *)self reservedSeat];
  v6 = [v4 reservedSeat];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBTicketedEventReservation *)self reservedSeat];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBTicketedEventReservation *)self reservedSeat];
    v20 = [v4 reservedSeat];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBTicketedEventReservation allocWithZone:](_INPBTicketedEventReservation init];
  v6 = [(_INPBTicketedEvent *)self->_event copyWithZone:a3];
  [(_INPBTicketedEventReservation *)v5 setEvent:v6];

  v7 = [(_INPBReservation *)self->_reservation copyWithZone:a3];
  [(_INPBTicketedEventReservation *)v5 setReservation:v7];

  v8 = [(_INPBSeat *)self->_reservedSeat copyWithZone:a3];
  [(_INPBTicketedEventReservation *)v5 setReservedSeat:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBTicketedEventReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBTicketedEventReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBTicketedEventReservation *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBTicketedEventReservation *)self event];

  if (v4)
  {
    v5 = [(_INPBTicketedEventReservation *)self event];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBTicketedEventReservation *)self reservation];

  if (v6)
  {
    v7 = [(_INPBTicketedEventReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBTicketedEventReservation *)self reservedSeat];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBTicketedEventReservation *)self reservedSeat];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

@end