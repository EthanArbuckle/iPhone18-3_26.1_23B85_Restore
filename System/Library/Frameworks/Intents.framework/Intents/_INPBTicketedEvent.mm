@interface _INPBTicketedEvent
- (BOOL)isEqual:(id)equal;
- (_INPBTicketedEvent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsCategory:(id)category;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCategory:(int)category;
- (void)setName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBTicketedEvent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBTicketedEvent *)self hasCategory])
  {
    category = [(_INPBTicketedEvent *)self category];
    if (category == 1)
    {
      v5 = @"UNKNOWN";
    }

    else if (category == 2)
    {
      v5 = @"MOVIE";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", category];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"category"];
  }

  eventDuration = [(_INPBTicketedEvent *)self eventDuration];
  dictionaryRepresentation = [eventDuration dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventDuration"];

  location = [(_INPBTicketedEvent *)self location];
  dictionaryRepresentation2 = [location dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"location"];

  if (self->_name)
  {
    name = [(_INPBTicketedEvent *)self name];
    v11 = [name copy];
    [dictionary setObject:v11 forKeyedSubscript:@"name"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  hasCategory = [(_INPBTicketedEvent *)self hasCategory];
  if (hasCategory != [equalCopy hasCategory])
  {
    goto LABEL_21;
  }

  if ([(_INPBTicketedEvent *)self hasCategory])
  {
    if ([equalCopy hasCategory])
    {
      category = self->_category;
      if (category != [equalCopy category])
      {
        goto LABEL_21;
      }
    }
  }

  eventDuration = [(_INPBTicketedEvent *)self eventDuration];
  eventDuration2 = [equalCopy eventDuration];
  if ((eventDuration != 0) == (eventDuration2 == 0))
  {
    goto LABEL_20;
  }

  eventDuration3 = [(_INPBTicketedEvent *)self eventDuration];
  if (eventDuration3)
  {
    v10 = eventDuration3;
    eventDuration4 = [(_INPBTicketedEvent *)self eventDuration];
    eventDuration5 = [equalCopy eventDuration];
    v13 = [eventDuration4 isEqual:eventDuration5];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  eventDuration = [(_INPBTicketedEvent *)self location];
  eventDuration2 = [equalCopy location];
  if ((eventDuration != 0) == (eventDuration2 == 0))
  {
    goto LABEL_20;
  }

  location = [(_INPBTicketedEvent *)self location];
  if (location)
  {
    v15 = location;
    location2 = [(_INPBTicketedEvent *)self location];
    location3 = [equalCopy location];
    v18 = [location2 isEqual:location3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  eventDuration = [(_INPBTicketedEvent *)self name];
  eventDuration2 = [equalCopy name];
  if ((eventDuration != 0) != (eventDuration2 == 0))
  {
    name = [(_INPBTicketedEvent *)self name];
    if (!name)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = name;
    name2 = [(_INPBTicketedEvent *)self name];
    name3 = [equalCopy name];
    v23 = [name2 isEqual:name3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBTicketedEvent allocWithZone:](_INPBTicketedEvent init];
  if ([(_INPBTicketedEvent *)self hasCategory])
  {
    [(_INPBTicketedEvent *)v5 setCategory:[(_INPBTicketedEvent *)self category]];
  }

  v6 = [(_INPBDateTimeRange *)self->_eventDuration copyWithZone:zone];
  [(_INPBTicketedEvent *)v5 setEventDuration:v6];

  v7 = [(_INPBLocationValue *)self->_location copyWithZone:zone];
  [(_INPBTicketedEvent *)v5 setLocation:v7];

  v8 = [(NSString *)self->_name copyWithZone:zone];
  [(_INPBTicketedEvent *)v5 setName:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTicketedEvent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTicketedEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTicketedEvent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBTicketedEvent *)self hasCategory])
  {
    category = self->_category;
    PBDataWriterWriteInt32Field();
  }

  eventDuration = [(_INPBTicketedEvent *)self eventDuration];

  if (eventDuration)
  {
    eventDuration2 = [(_INPBTicketedEvent *)self eventDuration];
    PBDataWriterWriteSubmessage();
  }

  location = [(_INPBTicketedEvent *)self location];

  if (location)
  {
    location2 = [(_INPBTicketedEvent *)self location];
    PBDataWriterWriteSubmessage();
  }

  name = [(_INPBTicketedEvent *)self name];

  v10 = toCopy;
  if (name)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (int)StringAsCategory:(id)category
{
  categoryCopy = category;
  v4 = 1;
  if (([categoryCopy isEqualToString:@"UNKNOWN"] & 1) == 0)
  {
    if ([categoryCopy isEqualToString:@"MOVIE"])
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

- (void)setCategory:(int)category
{
  has = self->_has;
  if (category == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_category = category;
  }
}

@end