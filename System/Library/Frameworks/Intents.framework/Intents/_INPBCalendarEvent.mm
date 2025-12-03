@interface _INPBCalendarEvent
- (BOOL)isEqual:(id)equal;
- (_INPBCalendarEvent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParticipants:(id)participants;
- (void)encodeWithCoder:(id)coder;
- (void)setCalendarPunchoutURI:(id)i;
- (void)setEventIdentifier:(id)identifier;
- (void)setParticipants:(id)participants;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _INPBCalendarEvent

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_calendarPunchoutURI)
  {
    calendarPunchoutURI = [(_INPBCalendarEvent *)self calendarPunchoutURI];
    v5 = [calendarPunchoutURI copy];
    [dictionary setObject:v5 forKeyedSubscript:@"calendarPunchoutURI"];
  }

  dateTimeRange = [(_INPBCalendarEvent *)self dateTimeRange];
  dictionaryRepresentation = [dateTimeRange dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dateTimeRange"];

  if (self->_eventIdentifier)
  {
    eventIdentifier = [(_INPBCalendarEvent *)self eventIdentifier];
    v9 = [eventIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"eventIdentifier"];
  }

  if ([(_INPBCalendarEvent *)self hasIsContactBirthday])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCalendarEvent isContactBirthday](self, "isContactBirthday")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isContactBirthday"];
  }

  location = [(_INPBCalendarEvent *)self location];
  dictionaryRepresentation2 = [location dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"location"];

  if ([(NSArray *)self->_participants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = self->_participants;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"participants"];
  }

  if (self->_title)
  {
    title = [(_INPBCalendarEvent *)self title];
    v21 = [title copy];
    [dictionary setObject:v21 forKeyedSubscript:@"title"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_calendarPunchoutURI hash];
  v4 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange hash];
  v5 = [(NSString *)self->_eventIdentifier hash];
  if ([(_INPBCalendarEvent *)self hasIsContactBirthday])
  {
    v6 = 2654435761 * self->_isContactBirthday;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(_INPBLocation *)self->_location hash];
  v9 = v8 ^ [(NSArray *)self->_participants hash];
  return v7 ^ v9 ^ [(NSString *)self->_title hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  calendarPunchoutURI = [(_INPBCalendarEvent *)self calendarPunchoutURI];
  calendarPunchoutURI2 = [equalCopy calendarPunchoutURI];
  if ((calendarPunchoutURI != 0) == (calendarPunchoutURI2 == 0))
  {
    goto LABEL_35;
  }

  calendarPunchoutURI3 = [(_INPBCalendarEvent *)self calendarPunchoutURI];
  if (calendarPunchoutURI3)
  {
    v8 = calendarPunchoutURI3;
    calendarPunchoutURI4 = [(_INPBCalendarEvent *)self calendarPunchoutURI];
    calendarPunchoutURI5 = [equalCopy calendarPunchoutURI];
    v11 = [calendarPunchoutURI4 isEqual:calendarPunchoutURI5];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  calendarPunchoutURI = [(_INPBCalendarEvent *)self dateTimeRange];
  calendarPunchoutURI2 = [equalCopy dateTimeRange];
  if ((calendarPunchoutURI != 0) == (calendarPunchoutURI2 == 0))
  {
    goto LABEL_35;
  }

  dateTimeRange = [(_INPBCalendarEvent *)self dateTimeRange];
  if (dateTimeRange)
  {
    v13 = dateTimeRange;
    dateTimeRange2 = [(_INPBCalendarEvent *)self dateTimeRange];
    dateTimeRange3 = [equalCopy dateTimeRange];
    v16 = [dateTimeRange2 isEqual:dateTimeRange3];

    if (!v16)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  calendarPunchoutURI = [(_INPBCalendarEvent *)self eventIdentifier];
  calendarPunchoutURI2 = [equalCopy eventIdentifier];
  if ((calendarPunchoutURI != 0) == (calendarPunchoutURI2 == 0))
  {
    goto LABEL_35;
  }

  eventIdentifier = [(_INPBCalendarEvent *)self eventIdentifier];
  if (eventIdentifier)
  {
    v18 = eventIdentifier;
    eventIdentifier2 = [(_INPBCalendarEvent *)self eventIdentifier];
    eventIdentifier3 = [equalCopy eventIdentifier];
    v21 = [eventIdentifier2 isEqual:eventIdentifier3];

    if (!v21)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  hasIsContactBirthday = [(_INPBCalendarEvent *)self hasIsContactBirthday];
  if (hasIsContactBirthday != [equalCopy hasIsContactBirthday])
  {
    goto LABEL_36;
  }

  if ([(_INPBCalendarEvent *)self hasIsContactBirthday])
  {
    if ([equalCopy hasIsContactBirthday])
    {
      isContactBirthday = self->_isContactBirthday;
      if (isContactBirthday != [equalCopy isContactBirthday])
      {
        goto LABEL_36;
      }
    }
  }

  calendarPunchoutURI = [(_INPBCalendarEvent *)self location];
  calendarPunchoutURI2 = [equalCopy location];
  if ((calendarPunchoutURI != 0) == (calendarPunchoutURI2 == 0))
  {
    goto LABEL_35;
  }

  location = [(_INPBCalendarEvent *)self location];
  if (location)
  {
    v25 = location;
    location2 = [(_INPBCalendarEvent *)self location];
    location3 = [equalCopy location];
    v28 = [location2 isEqual:location3];

    if (!v28)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  calendarPunchoutURI = [(_INPBCalendarEvent *)self participants];
  calendarPunchoutURI2 = [equalCopy participants];
  if ((calendarPunchoutURI != 0) == (calendarPunchoutURI2 == 0))
  {
    goto LABEL_35;
  }

  participants = [(_INPBCalendarEvent *)self participants];
  if (participants)
  {
    v30 = participants;
    participants2 = [(_INPBCalendarEvent *)self participants];
    participants3 = [equalCopy participants];
    v33 = [participants2 isEqual:participants3];

    if (!v33)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  calendarPunchoutURI = [(_INPBCalendarEvent *)self title];
  calendarPunchoutURI2 = [equalCopy title];
  if ((calendarPunchoutURI != 0) != (calendarPunchoutURI2 == 0))
  {
    title = [(_INPBCalendarEvent *)self title];
    if (!title)
    {

LABEL_39:
      v39 = 1;
      goto LABEL_37;
    }

    v35 = title;
    title2 = [(_INPBCalendarEvent *)self title];
    title3 = [equalCopy title];
    v38 = [title2 isEqual:title3];

    if (v38)
    {
      goto LABEL_39;
    }
  }

  else
  {
LABEL_35:
  }

LABEL_36:
  v39 = 0;
LABEL_37:

  return v39;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCalendarEvent allocWithZone:](_INPBCalendarEvent init];
  v6 = [(NSString *)self->_calendarPunchoutURI copyWithZone:zone];
  [(_INPBCalendarEvent *)v5 setCalendarPunchoutURI:v6];

  v7 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange copyWithZone:zone];
  [(_INPBCalendarEvent *)v5 setDateTimeRange:v7];

  v8 = [(NSString *)self->_eventIdentifier copyWithZone:zone];
  [(_INPBCalendarEvent *)v5 setEventIdentifier:v8];

  if ([(_INPBCalendarEvent *)self hasIsContactBirthday])
  {
    [(_INPBCalendarEvent *)v5 setIsContactBirthday:[(_INPBCalendarEvent *)self isContactBirthday]];
  }

  v9 = [(_INPBLocation *)self->_location copyWithZone:zone];
  [(_INPBCalendarEvent *)v5 setLocation:v9];

  v10 = [(NSArray *)self->_participants copyWithZone:zone];
  [(_INPBCalendarEvent *)v5 setParticipants:v10];

  v11 = [(NSString *)self->_title copyWithZone:zone];
  [(_INPBCalendarEvent *)v5 setTitle:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCalendarEvent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCalendarEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCalendarEvent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  calendarPunchoutURI = [(_INPBCalendarEvent *)self calendarPunchoutURI];

  if (calendarPunchoutURI)
  {
    calendarPunchoutURI = self->_calendarPunchoutURI;
    PBDataWriterWriteStringField();
  }

  dateTimeRange = [(_INPBCalendarEvent *)self dateTimeRange];

  if (dateTimeRange)
  {
    dateTimeRange2 = [(_INPBCalendarEvent *)self dateTimeRange];
    PBDataWriterWriteSubmessage();
  }

  eventIdentifier = [(_INPBCalendarEvent *)self eventIdentifier];

  if (eventIdentifier)
  {
    eventIdentifier = self->_eventIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBCalendarEvent *)self hasIsContactBirthday])
  {
    isContactBirthday = self->_isContactBirthday;
    PBDataWriterWriteBOOLField();
  }

  location = [(_INPBCalendarEvent *)self location];

  if (location)
  {
    location2 = [(_INPBCalendarEvent *)self location];
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_participants;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  title = [(_INPBCalendarEvent *)self title];

  if (title)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)addParticipants:(id)participants
{
  participantsCopy = participants;
  participants = self->_participants;
  v8 = participantsCopy;
  if (!participants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_participants;
    self->_participants = array;

    participantsCopy = v8;
    participants = self->_participants;
  }

  [(NSArray *)participants addObject:participantsCopy];
}

- (void)setParticipants:(id)participants
{
  v4 = [participants mutableCopy];
  participants = self->_participants;
  self->_participants = v4;

  MEMORY[0x1EEE66BB8](v4, participants);
}

- (void)setEventIdentifier:(id)identifier
{
  v4 = [identifier copy];
  eventIdentifier = self->_eventIdentifier;
  self->_eventIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, eventIdentifier);
}

- (void)setCalendarPunchoutURI:(id)i
{
  v4 = [i copy];
  calendarPunchoutURI = self->_calendarPunchoutURI;
  self->_calendarPunchoutURI = v4;

  MEMORY[0x1EEE66BB8](v4, calendarPunchoutURI);
}

@end