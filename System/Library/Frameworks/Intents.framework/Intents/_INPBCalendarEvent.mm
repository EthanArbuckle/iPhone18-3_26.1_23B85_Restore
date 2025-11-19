@interface _INPBCalendarEvent
- (BOOL)isEqual:(id)a3;
- (_INPBCalendarEvent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParticipants:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCalendarPunchoutURI:(id)a3;
- (void)setEventIdentifier:(id)a3;
- (void)setParticipants:(id)a3;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCalendarEvent

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_calendarPunchoutURI)
  {
    v4 = [(_INPBCalendarEvent *)self calendarPunchoutURI];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"calendarPunchoutURI"];
  }

  v6 = [(_INPBCalendarEvent *)self dateTimeRange];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"dateTimeRange"];

  if (self->_eventIdentifier)
  {
    v8 = [(_INPBCalendarEvent *)self eventIdentifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"eventIdentifier"];
  }

  if ([(_INPBCalendarEvent *)self hasIsContactBirthday])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCalendarEvent isContactBirthday](self, "isContactBirthday")}];
    [v3 setObject:v10 forKeyedSubscript:@"isContactBirthday"];
  }

  v11 = [(_INPBCalendarEvent *)self location];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"location"];

  if ([(NSArray *)self->_participants count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
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

          v19 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"participants"];
  }

  if (self->_title)
  {
    v20 = [(_INPBCalendarEvent *)self title];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"title"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  v5 = [(_INPBCalendarEvent *)self calendarPunchoutURI];
  v6 = [v4 calendarPunchoutURI];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v7 = [(_INPBCalendarEvent *)self calendarPunchoutURI];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCalendarEvent *)self calendarPunchoutURI];
    v10 = [v4 calendarPunchoutURI];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_INPBCalendarEvent *)self dateTimeRange];
  v6 = [v4 dateTimeRange];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v12 = [(_INPBCalendarEvent *)self dateTimeRange];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCalendarEvent *)self dateTimeRange];
    v15 = [v4 dateTimeRange];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_INPBCalendarEvent *)self eventIdentifier];
  v6 = [v4 eventIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v17 = [(_INPBCalendarEvent *)self eventIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBCalendarEvent *)self eventIdentifier];
    v20 = [v4 eventIdentifier];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v22 = [(_INPBCalendarEvent *)self hasIsContactBirthday];
  if (v22 != [v4 hasIsContactBirthday])
  {
    goto LABEL_36;
  }

  if ([(_INPBCalendarEvent *)self hasIsContactBirthday])
  {
    if ([v4 hasIsContactBirthday])
    {
      isContactBirthday = self->_isContactBirthday;
      if (isContactBirthday != [v4 isContactBirthday])
      {
        goto LABEL_36;
      }
    }
  }

  v5 = [(_INPBCalendarEvent *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v24 = [(_INPBCalendarEvent *)self location];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBCalendarEvent *)self location];
    v27 = [v4 location];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_INPBCalendarEvent *)self participants];
  v6 = [v4 participants];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v29 = [(_INPBCalendarEvent *)self participants];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBCalendarEvent *)self participants];
    v32 = [v4 participants];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_INPBCalendarEvent *)self title];
  v6 = [v4 title];
  if ((v5 != 0) != (v6 == 0))
  {
    v34 = [(_INPBCalendarEvent *)self title];
    if (!v34)
    {

LABEL_39:
      v39 = 1;
      goto LABEL_37;
    }

    v35 = v34;
    v36 = [(_INPBCalendarEvent *)self title];
    v37 = [v4 title];
    v38 = [v36 isEqual:v37];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCalendarEvent allocWithZone:](_INPBCalendarEvent init];
  v6 = [(NSString *)self->_calendarPunchoutURI copyWithZone:a3];
  [(_INPBCalendarEvent *)v5 setCalendarPunchoutURI:v6];

  v7 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange copyWithZone:a3];
  [(_INPBCalendarEvent *)v5 setDateTimeRange:v7];

  v8 = [(NSString *)self->_eventIdentifier copyWithZone:a3];
  [(_INPBCalendarEvent *)v5 setEventIdentifier:v8];

  if ([(_INPBCalendarEvent *)self hasIsContactBirthday])
  {
    [(_INPBCalendarEvent *)v5 setIsContactBirthday:[(_INPBCalendarEvent *)self isContactBirthday]];
  }

  v9 = [(_INPBLocation *)self->_location copyWithZone:a3];
  [(_INPBCalendarEvent *)v5 setLocation:v9];

  v10 = [(NSArray *)self->_participants copyWithZone:a3];
  [(_INPBCalendarEvent *)v5 setParticipants:v10];

  v11 = [(NSString *)self->_title copyWithZone:a3];
  [(_INPBCalendarEvent *)v5 setTitle:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCalendarEvent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCalendarEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCalendarEvent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBCalendarEvent *)self calendarPunchoutURI];

  if (v5)
  {
    calendarPunchoutURI = self->_calendarPunchoutURI;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBCalendarEvent *)self dateTimeRange];

  if (v7)
  {
    v8 = [(_INPBCalendarEvent *)self dateTimeRange];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBCalendarEvent *)self eventIdentifier];

  if (v9)
  {
    eventIdentifier = self->_eventIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBCalendarEvent *)self hasIsContactBirthday])
  {
    isContactBirthday = self->_isContactBirthday;
    PBDataWriterWriteBOOLField();
  }

  v12 = [(_INPBCalendarEvent *)self location];

  if (v12)
  {
    v13 = [(_INPBCalendarEvent *)self location];
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

  v20 = [(_INPBCalendarEvent *)self title];

  if (v20)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)addParticipants:(id)a3
{
  v4 = a3;
  participants = self->_participants;
  v8 = v4;
  if (!participants)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_participants;
    self->_participants = v6;

    v4 = v8;
    participants = self->_participants;
  }

  [(NSArray *)participants addObject:v4];
}

- (void)setParticipants:(id)a3
{
  v4 = [a3 mutableCopy];
  participants = self->_participants;
  self->_participants = v4;

  MEMORY[0x1EEE66BB8](v4, participants);
}

- (void)setEventIdentifier:(id)a3
{
  v4 = [a3 copy];
  eventIdentifier = self->_eventIdentifier;
  self->_eventIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, eventIdentifier);
}

- (void)setCalendarPunchoutURI:(id)a3
{
  v4 = [a3 copy];
  calendarPunchoutURI = self->_calendarPunchoutURI;
  self->_calendarPunchoutURI = v4;

  MEMORY[0x1EEE66BB8](v4, calendarPunchoutURI);
}

@end