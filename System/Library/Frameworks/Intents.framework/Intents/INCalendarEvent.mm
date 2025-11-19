@interface INCalendarEvent
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INCalendarEvent)initWithCoder:(id)a3;
- (INCalendarEvent)initWithEventIdentifier:(id)a3 title:(id)a4 dateTimeRange:(id)a5 participants:(id)a6 location:(id)a7 isContactBirthday:(id)a8 calendarPunchoutURI:(id)a9;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
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
  v5 = title;
  if (!title)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v5;
  v25[1] = v5;
  v24[2] = @"dateTimeRange";
  dateTimeRange = self->_dateTimeRange;
  v7 = dateTimeRange;
  if (!dateTimeRange)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v7;
  v25[2] = v7;
  v24[3] = @"participants";
  participants = self->_participants;
  v9 = participants;
  if (!participants)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v9;
  v25[3] = v9;
  v24[4] = @"location";
  location = self->_location;
  v11 = location;
  if (!location)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v11;
  v24[5] = @"isContactBirthday";
  isContactBirthday = self->_isContactBirthday;
  v13 = isContactBirthday;
  if (!isContactBirthday)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v13;
  v24[6] = @"calendarPunchoutURI";
  calendarPunchoutURI = self->_calendarPunchoutURI;
  v15 = calendarPunchoutURI;
  if (!calendarPunchoutURI)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25[6] = v15;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCalendarEvent;
  v6 = [(INCalendarEvent *)&v11 description];
  v7 = [(INCalendarEvent *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_eventIdentifier];
  [v7 if_setObjectIfNonNil:v8 forKey:@"eventIdentifier"];

  v9 = [v6 encodeObject:self->_title];
  [v7 if_setObjectIfNonNil:v9 forKey:@"title"];

  v10 = [v6 encodeObject:self->_dateTimeRange];
  [v7 if_setObjectIfNonNil:v10 forKey:@"dateTimeRange"];

  v11 = [v6 encodeObject:self->_participants];
  [v7 if_setObjectIfNonNil:v11 forKey:@"participants"];

  v12 = [v6 encodeObject:self->_location];
  [v7 if_setObjectIfNonNil:v12 forKey:@"location"];

  v13 = [v6 encodeObject:self->_isContactBirthday];
  [v7 if_setObjectIfNonNil:v13 forKey:@"isContactBirthday"];

  v14 = [v6 encodeObject:self->_calendarPunchoutURI];

  [v7 if_setObjectIfNonNil:v14 forKey:@"calendarPunchoutURI"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  eventIdentifier = self->_eventIdentifier;
  v5 = a3;
  [v5 encodeObject:eventIdentifier forKey:@"eventIdentifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_dateTimeRange forKey:@"dateTimeRange"];
  [v5 encodeObject:self->_participants forKey:@"participants"];
  [v5 encodeObject:self->_location forKey:@"location"];
  [v5 encodeObject:self->_isContactBirthday forKey:@"isContactBirthday"];
  [v5 encodeObject:self->_calendarPunchoutURI forKey:@"calendarPunchoutURI"];
}

- (INCalendarEvent)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"eventIdentifier"];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"title"];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateTimeRange"];
  v13 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"participants"];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isContactBirthday"];
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = [v4 decodeObjectOfClasses:v21 forKey:@"calendarPunchoutURI"];

  v23 = [(INCalendarEvent *)self initWithEventIdentifier:v7 title:v11 dateTimeRange:v12 participants:v16 location:v17 isContactBirthday:v18 calendarPunchoutURI:v22];
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INCalendarEvent)initWithEventIdentifier:(id)a3 title:(id)a4 dateTimeRange:(id)a5 participants:(id)a6 location:(id)a7 isContactBirthday:(id)a8 calendarPunchoutURI:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v38.receiver = self;
  v38.super_class = INCalendarEvent;
  v22 = [(INCalendarEvent *)&v38 init];
  if (v22)
  {
    v23 = [v15 copy];
    eventIdentifier = v22->_eventIdentifier;
    v22->_eventIdentifier = v23;

    v25 = [v16 copy];
    title = v22->_title;
    v22->_title = v25;

    v27 = [v17 copy];
    dateTimeRange = v22->_dateTimeRange;
    v22->_dateTimeRange = v27;

    v29 = [v18 copy];
    participants = v22->_participants;
    v22->_participants = v29;

    v31 = [v19 copy];
    location = v22->_location;
    v22->_location = v31;

    v33 = [v20 copy];
    isContactBirthday = v22->_isContactBirthday;
    v22->_isContactBirthday = v33;

    v35 = [v21 copy];
    calendarPunchoutURI = v22->_calendarPunchoutURI;
    v22->_calendarPunchoutURI = v35;
  }

  return v22;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"eventIdentifier"];
    v10 = [v8 objectForKeyedSubscript:@"title"];
    v11 = objc_opt_class();
    v12 = [v8 objectForKeyedSubscript:@"dateTimeRange"];
    v13 = [v7 decodeObjectOfClass:v11 from:v12];

    v14 = objc_opt_class();
    v15 = [v8 objectForKeyedSubscript:@"participants"];
    v16 = [v7 decodeObjectsOfClass:v14 from:v15];

    v17 = objc_opt_class();
    v18 = [v8 objectForKeyedSubscript:@"location"];
    v19 = [v7 decodeObjectOfClass:v17 from:v18];

    v20 = [v8 objectForKeyedSubscript:@"isContactBirthday"];
    v21 = [v8 objectForKeyedSubscript:@"calendarPunchoutURI"];
    v22 = [[a1 alloc] initWithEventIdentifier:v9 title:v10 dateTimeRange:v13 participants:v16 location:v19 isContactBirthday:v20 calendarPunchoutURI:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(INCalendarEvent *)self participants];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) _intents_updateContainerWithCache:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(INCalendarEvent *)self participants];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) _intents_cacheableObjects];
        [v3 unionSet:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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