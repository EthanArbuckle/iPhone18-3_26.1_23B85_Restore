@interface _INPBReservationAction
- (BOOL)isEqual:(id)a3;
- (_INPBReservationAction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBReservationAction

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBReservationAction *)self hasType])
  {
    v4 = [(_INPBReservationAction *)self type];
    if (v4 == 1)
    {
      v5 = @"UNKNOWN_RESERVATION_ACTION";
    }

    else if (v4 == 2)
    {
      v5 = @"CHECK_IN";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"type"];
  }

  v6 = [(_INPBReservationAction *)self userActivity];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"userActivity"];

  v8 = [(_INPBReservationAction *)self validDuration];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"validDuration"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBReservationAction *)self hasType])
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBUserActivity *)self->_userActivity hash]^ v3;
  return v4 ^ [(_INPBDateTimeRange *)self->_validDuration hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBReservationAction *)self hasType];
  if (v5 != [v4 hasType])
  {
    goto LABEL_16;
  }

  if ([(_INPBReservationAction *)self hasType])
  {
    if ([v4 hasType])
    {
      type = self->_type;
      if (type != [v4 type])
      {
        goto LABEL_16;
      }
    }
  }

  v7 = [(_INPBReservationAction *)self userActivity];
  v8 = [v4 userActivity];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_15;
  }

  v9 = [(_INPBReservationAction *)self userActivity];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBReservationAction *)self userActivity];
    v12 = [v4 userActivity];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(_INPBReservationAction *)self validDuration];
  v8 = [v4 validDuration];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(_INPBReservationAction *)self validDuration];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBReservationAction *)self validDuration];
    v17 = [v4 validDuration];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBReservationAction allocWithZone:](_INPBReservationAction init];
  if ([(_INPBReservationAction *)self hasType])
  {
    [(_INPBReservationAction *)v5 setType:[(_INPBReservationAction *)self type]];
  }

  v6 = [(_INPBUserActivity *)self->_userActivity copyWithZone:a3];
  [(_INPBReservationAction *)v5 setUserActivity:v6];

  v7 = [(_INPBDateTimeRange *)self->_validDuration copyWithZone:a3];
  [(_INPBReservationAction *)v5 setValidDuration:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBReservationAction *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBReservationAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBReservationAction *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ([(_INPBReservationAction *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBReservationAction *)self userActivity];

  if (v5)
  {
    v6 = [(_INPBReservationAction *)self userActivity];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBReservationAction *)self validDuration];

  v8 = v10;
  if (v7)
  {
    v9 = [(_INPBReservationAction *)self validDuration];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"UNKNOWN_RESERVATION_ACTION"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"CHECK_IN"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = a3;
  }
}

@end