@interface _INPBTicketedEvent
- (BOOL)isEqual:(id)a3;
- (_INPBTicketedEvent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsCategory:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCategory:(int)a3;
- (void)setName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBTicketedEvent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBTicketedEvent *)self hasCategory])
  {
    v4 = [(_INPBTicketedEvent *)self category];
    if (v4 == 1)
    {
      v5 = @"UNKNOWN";
    }

    else if (v4 == 2)
    {
      v5 = @"MOVIE";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"category"];
  }

  v6 = [(_INPBTicketedEvent *)self eventDuration];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"eventDuration"];

  v8 = [(_INPBTicketedEvent *)self location];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"location"];

  if (self->_name)
  {
    v10 = [(_INPBTicketedEvent *)self name];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBTicketedEvent *)self hasCategory])
  {
    v3 = 2654435761 * self->_category;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBDateTimeRange *)self->_eventDuration hash]^ v3;
  v5 = [(_INPBLocationValue *)self->_location hash];
  return v4 ^ v5 ^ [(NSString *)self->_name hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBTicketedEvent *)self hasCategory];
  if (v5 != [v4 hasCategory])
  {
    goto LABEL_21;
  }

  if ([(_INPBTicketedEvent *)self hasCategory])
  {
    if ([v4 hasCategory])
    {
      category = self->_category;
      if (category != [v4 category])
      {
        goto LABEL_21;
      }
    }
  }

  v7 = [(_INPBTicketedEvent *)self eventDuration];
  v8 = [v4 eventDuration];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v9 = [(_INPBTicketedEvent *)self eventDuration];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBTicketedEvent *)self eventDuration];
    v12 = [v4 eventDuration];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBTicketedEvent *)self location];
  v8 = [v4 location];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBTicketedEvent *)self location];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBTicketedEvent *)self location];
    v17 = [v4 location];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBTicketedEvent *)self name];
  v8 = [v4 name];
  if ((v7 != 0) != (v8 == 0))
  {
    v19 = [(_INPBTicketedEvent *)self name];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBTicketedEvent *)self name];
    v22 = [v4 name];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBTicketedEvent allocWithZone:](_INPBTicketedEvent init];
  if ([(_INPBTicketedEvent *)self hasCategory])
  {
    [(_INPBTicketedEvent *)v5 setCategory:[(_INPBTicketedEvent *)self category]];
  }

  v6 = [(_INPBDateTimeRange *)self->_eventDuration copyWithZone:a3];
  [(_INPBTicketedEvent *)v5 setEventDuration:v6];

  v7 = [(_INPBLocationValue *)self->_location copyWithZone:a3];
  [(_INPBTicketedEvent *)v5 setLocation:v7];

  v8 = [(NSString *)self->_name copyWithZone:a3];
  [(_INPBTicketedEvent *)v5 setName:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBTicketedEvent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBTicketedEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBTicketedEvent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if ([(_INPBTicketedEvent *)self hasCategory])
  {
    category = self->_category;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBTicketedEvent *)self eventDuration];

  if (v5)
  {
    v6 = [(_INPBTicketedEvent *)self eventDuration];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBTicketedEvent *)self location];

  if (v7)
  {
    v8 = [(_INPBTicketedEvent *)self location];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBTicketedEvent *)self name];

  v10 = v12;
  if (v9)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
    v10 = v12;
  }
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (int)StringAsCategory:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"UNKNOWN"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"MOVIE"])
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

- (void)setCategory:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_category = a3;
  }
}

@end