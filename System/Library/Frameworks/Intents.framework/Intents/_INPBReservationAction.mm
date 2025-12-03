@interface _INPBReservationAction
- (BOOL)isEqual:(id)equal;
- (_INPBReservationAction)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBReservationAction

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBReservationAction *)self hasType])
  {
    type = [(_INPBReservationAction *)self type];
    if (type == 1)
    {
      v5 = @"UNKNOWN_RESERVATION_ACTION";
    }

    else if (type == 2)
    {
      v5 = @"CHECK_IN";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"type"];
  }

  userActivity = [(_INPBReservationAction *)self userActivity];
  dictionaryRepresentation = [userActivity dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"userActivity"];

  validDuration = [(_INPBReservationAction *)self validDuration];
  dictionaryRepresentation2 = [validDuration dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"validDuration"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasType = [(_INPBReservationAction *)self hasType];
  if (hasType != [equalCopy hasType])
  {
    goto LABEL_16;
  }

  if ([(_INPBReservationAction *)self hasType])
  {
    if ([equalCopy hasType])
    {
      type = self->_type;
      if (type != [equalCopy type])
      {
        goto LABEL_16;
      }
    }
  }

  userActivity = [(_INPBReservationAction *)self userActivity];
  userActivity2 = [equalCopy userActivity];
  if ((userActivity != 0) == (userActivity2 == 0))
  {
    goto LABEL_15;
  }

  userActivity3 = [(_INPBReservationAction *)self userActivity];
  if (userActivity3)
  {
    v10 = userActivity3;
    userActivity4 = [(_INPBReservationAction *)self userActivity];
    userActivity5 = [equalCopy userActivity];
    v13 = [userActivity4 isEqual:userActivity5];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  userActivity = [(_INPBReservationAction *)self validDuration];
  userActivity2 = [equalCopy validDuration];
  if ((userActivity != 0) != (userActivity2 == 0))
  {
    validDuration = [(_INPBReservationAction *)self validDuration];
    if (!validDuration)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = validDuration;
    validDuration2 = [(_INPBReservationAction *)self validDuration];
    validDuration3 = [equalCopy validDuration];
    v18 = [validDuration2 isEqual:validDuration3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBReservationAction allocWithZone:](_INPBReservationAction init];
  if ([(_INPBReservationAction *)self hasType])
  {
    [(_INPBReservationAction *)v5 setType:[(_INPBReservationAction *)self type]];
  }

  v6 = [(_INPBUserActivity *)self->_userActivity copyWithZone:zone];
  [(_INPBReservationAction *)v5 setUserActivity:v6];

  v7 = [(_INPBDateTimeRange *)self->_validDuration copyWithZone:zone];
  [(_INPBReservationAction *)v5 setValidDuration:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBReservationAction *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBReservationAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBReservationAction *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBReservationAction *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  userActivity = [(_INPBReservationAction *)self userActivity];

  if (userActivity)
  {
    userActivity2 = [(_INPBReservationAction *)self userActivity];
    PBDataWriterWriteSubmessage();
  }

  validDuration = [(_INPBReservationAction *)self validDuration];

  v8 = toCopy;
  if (validDuration)
  {
    validDuration2 = [(_INPBReservationAction *)self validDuration];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"UNKNOWN_RESERVATION_ACTION"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"CHECK_IN"])
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

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = type;
  }
}

@end