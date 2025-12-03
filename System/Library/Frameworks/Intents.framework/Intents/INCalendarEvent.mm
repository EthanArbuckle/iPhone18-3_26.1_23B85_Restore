@interface INCalendarEvent
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INCalendarEvent)initWithCoder:(id)coder;
- (INCalendarEvent)initWithEventIdentifier:(id)identifier title:(id)title dateTimeRange:(id)range participants:(id)participants location:(id)location isContactBirthday:(id)birthday calendarPunchoutURI:(id)i;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCalendarEvent

- (id)_dictionaryRepresentation
{
  v25[7] = *MEMORY[0x1E69E9840];
  eventIdentifier = self->_eventIdentifier;
  v23 = eventIdentifier;
  v24[0] = @"eventIdentifier";
  if (!eventIdentifier)
  {
    eventIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v22 = eventIdentifier;
  v25[0] = eventIdentifier;
  v24[1] = @"title";
  title = self->_title;
  null = title;
  if (!title)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v25[1] = null;
  v24[2] = @"dateTimeRange";
  dateTimeRange = self->_dateTimeRange;
  null2 = dateTimeRange;
  if (!dateTimeRange)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v25[2] = null2;
  v24[3] = @"participants";
  participants = self->_participants;
  null3 = participants;
  if (!participants)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null3;
  v25[3] = null3;
  v24[4] = @"location";
  location = self->_location;
  null4 = location;
  if (!location)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null4;
  v24[5] = @"isContactBirthday";
  isContactBirthday = self->_isContactBirthday;
  null5 = isContactBirthday;
  if (!isContactBirthday)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = null5;
  v24[6] = @"calendarPunchoutURI";
  calendarPunchoutURI = self->_calendarPunchoutURI;
  null6 = calendarPunchoutURI;
  if (!calendarPunchoutURI)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25[6] = null6;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];
  if (calendarPunchoutURI)
  {
    if (isContactBirthday)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (isContactBirthday)
    {
LABEL_17:
      if (location)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

  if (location)
  {
LABEL_18:
    if (participants)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (participants)
  {
LABEL_19:
    if (dateTimeRange)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (title)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_29:

  if (!dateTimeRange)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (title)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!v23)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCalendarEvent;
  v6 = [(INCalendarEvent *)&v11 description];
  _dictionaryRepresentation = [(INCalendarEvent *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_eventIdentifier];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"eventIdentifier"];

  v9 = [encoderCopy encodeObject:self->_title];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"title"];

  v10 = [encoderCopy encodeObject:self->_dateTimeRange];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"dateTimeRange"];

  v11 = [encoderCopy encodeObject:self->_participants];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"participants"];

  v12 = [encoderCopy encodeObject:self->_location];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"location"];

  v13 = [encoderCopy encodeObject:self->_isContactBirthday];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"isContactBirthday"];

  v14 = [encoderCopy encodeObject:self->_calendarPunchoutURI];

  [dictionary if_setObjectIfNonNil:v14 forKey:@"calendarPunchoutURI"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  eventIdentifier = self->_eventIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:eventIdentifier forKey:@"eventIdentifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_dateTimeRange forKey:@"dateTimeRange"];
  [coderCopy encodeObject:self->_participants forKey:@"participants"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_isContactBirthday forKey:@"isContactBirthday"];
  [coderCopy encodeObject:self->_calendarPunchoutURI forKey:@"calendarPunchoutURI"];
}

- (INCalendarEvent)initWithCoder:(id)coder
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"eventIdentifier"];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"title"];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateTimeRange"];
  v13 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"participants"];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isContactBirthday"];
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"calendarPunchoutURI"];

  v23 = [(INCalendarEvent *)self initWithEventIdentifier:v7 title:v11 dateTimeRange:v12 participants:v16 location:v17 isContactBirthday:v18 calendarPunchoutURI:v22];
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      eventIdentifier = self->_eventIdentifier;
      v13 = 0;
      if (eventIdentifier == v5->_eventIdentifier || [(NSString *)eventIdentifier isEqual:?])
      {
        title = self->_title;
        if (title == v5->_title || [(NSString *)title isEqual:?])
        {
          dateTimeRange = self->_dateTimeRange;
          if (dateTimeRange == v5->_dateTimeRange || [(INDateComponentsRange *)dateTimeRange isEqual:?])
          {
            participants = self->_participants;
            if (participants == v5->_participants || [(NSArray *)participants isEqual:?])
            {
              location = self->_location;
              if (location == v5->_location || [(CLPlacemark *)location isEqual:?])
              {
                isContactBirthday = self->_isContactBirthday;
                if (isContactBirthday == v5->_isContactBirthday || [(NSNumber *)isContactBirthday isEqual:?])
                {
                  calendarPunchoutURI = self->_calendarPunchoutURI;
                  if (calendarPunchoutURI == v5->_calendarPunchoutURI || [(NSString *)calendarPunchoutURI isEqual:?])
                  {
                    v13 = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventIdentifier hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  v5 = [(INDateComponentsRange *)self->_dateTimeRange hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_participants hash];
  v7 = [(CLPlacemark *)self->_location hash];
  v8 = v7 ^ [(NSNumber *)self->_isContactBirthday hash];
  return v6 ^ v8 ^ [(NSString *)self->_calendarPunchoutURI hash];
}

- (INCalendarEvent)initWithEventIdentifier:(id)identifier title:(id)title dateTimeRange:(id)range participants:(id)participants location:(id)location isContactBirthday:(id)birthday calendarPunchoutURI:(id)i
{
  identifierCopy = identifier;
  titleCopy = title;
  rangeCopy = range;
  participantsCopy = participants;
  locationCopy = location;
  birthdayCopy = birthday;
  iCopy = i;
  v38.receiver = self;
  v38.super_class = INCalendarEvent;
  v22 = [(INCalendarEvent *)&v38 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    eventIdentifier = v22->_eventIdentifier;
    v22->_eventIdentifier = v23;

    v25 = [titleCopy copy];
    title = v22->_title;
    v22->_title = v25;

    v27 = [rangeCopy copy];
    dateTimeRange = v22->_dateTimeRange;
    v22->_dateTimeRange = v27;

    v29 = [participantsCopy copy];
    participants = v22->_participants;
    v22->_participants = v29;

    v31 = [locationCopy copy];
    location = v22->_location;
    v22->_location = v31;

    v33 = [birthdayCopy copy];
    isContactBirthday = v22->_isContactBirthday;
    v22->_isContactBirthday = v33;

    v35 = [iCopy copy];
    calendarPunchoutURI = v22->_calendarPunchoutURI;
    v22->_calendarPunchoutURI = v35;
  }

  return v22;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"eventIdentifier"];
    v10 = [fromCopy objectForKeyedSubscript:@"title"];
    v11 = objc_opt_class();
    v12 = [fromCopy objectForKeyedSubscript:@"dateTimeRange"];
    v13 = [decoderCopy decodeObjectOfClass:v11 from:v12];

    v14 = objc_opt_class();
    v15 = [fromCopy objectForKeyedSubscript:@"participants"];
    v16 = [decoderCopy decodeObjectsOfClass:v14 from:v15];

    v17 = objc_opt_class();
    v18 = [fromCopy objectForKeyedSubscript:@"location"];
    v19 = [decoderCopy decodeObjectOfClass:v17 from:v18];

    v20 = [fromCopy objectForKeyedSubscript:@"isContactBirthday"];
    v21 = [fromCopy objectForKeyedSubscript:@"calendarPunchoutURI"];
    v22 = [[self alloc] initWithEventIdentifier:v9 title:v10 dateTimeRange:v13 participants:v16 location:v19 isContactBirthday:v20 calendarPunchoutURI:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_intents_updateContainerWithCache:(id)cache
{
  v16 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  participants = [(INCalendarEvent *)self participants];
  v6 = [participants countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(participants);
        }

        [*(*(&v11 + 1) + 8 * v9++) _intents_updateContainerWithCache:cacheCopy];
      }

      while (v7 != v9);
      v7 = [participants countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_intents_cacheableObjects
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  participants = [(INCalendarEvent *)self participants];
  v5 = [participants countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(participants);
        }

        _intents_cacheableObjects = [*(*(&v14 + 1) + 8 * v8) _intents_cacheableObjects];
        [v3 unionSet:_intents_cacheableObjects];

        ++v8;
      }

      while (v6 != v8);
      v6 = [participants countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

@end