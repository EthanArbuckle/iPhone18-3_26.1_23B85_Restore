@interface AFHomeAccessorySiriDataSharingPropagationLogEvent
+ (id)newWithBuilder:(id)builder;
- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithBuilder:(id)builder;
- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithCoder:(id)coder;
- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithDate:(id)date accessoryIdentifier:(id)identifier propagationEvent:(int64_t)event propagationEventReason:(id)reason associatedChangeLogEventIdentifier:(id)eventIdentifier;
- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFHomeAccessorySiriDataSharingPropagationLogEvent

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  date = self->_date;
  if (date)
  {
    [v3 setObject:date forKey:@"date"];
  }

  accessoryIdentifier = self->_accessoryIdentifier;
  if (accessoryIdentifier)
  {
    [v4 setObject:accessoryIdentifier forKey:@"accessoryIdentifier"];
  }

  propagationEvent = self->_propagationEvent;
  if (propagationEvent > 4)
  {
    v8 = @"(unknown)";
  }

  else
  {
    v8 = off_1E7346358[propagationEvent];
  }

  v9 = v8;
  [v4 setObject:v9 forKey:@"propagationEvent"];

  propagationEventReason = self->_propagationEventReason;
  if (propagationEventReason)
  {
    [v4 setObject:propagationEventReason forKey:@"propagationEventReason"];
  }

  associatedChangeLogEventIdentifier = self->_associatedChangeLogEventIdentifier;
  if (associatedChangeLogEventIdentifier)
  {
    [v4 setObject:associatedChangeLogEventIdentifier forKey:@"associatedChangeLogEventIdentifier"];
  }

  v12 = [v4 copy];

  return v12;
}

- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"date"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"accessoryIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 objectForKey:@"propagationEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = AFHomeAccessorySiriDataSharingPropagationEventGetFromName(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = [v5 objectForKey:@"propagationEventReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v5 objectForKey:@"associatedChangeLogEventIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    self = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self initWithDate:v7 accessoryIdentifier:v10 propagationEvent:v12 propagationEventReason:v14 associatedChangeLogEventIdentifier:v16];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::date"];
  [coderCopy encodeObject:self->_accessoryIdentifier forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::accessoryIdentifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_propagationEvent];
  [coderCopy encodeObject:v5 forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::propagationEvent"];

  [coderCopy encodeObject:self->_propagationEventReason forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::propagationEventReason"];
  [coderCopy encodeObject:self->_associatedChangeLogEventIdentifier forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::associatedChangeLogEventIdentifier"];
}

- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::accessoryIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::propagationEvent"];
  integerValue = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::propagationEventReason"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::associatedChangeLogEventIdentifier"];

  v11 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self initWithDate:v5 accessoryIdentifier:v6 propagationEvent:integerValue propagationEventReason:v9 associatedChangeLogEventIdentifier:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      propagationEvent = self->_propagationEvent;
      if (propagationEvent == [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)v5 propagationEvent])
      {
        date = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)v5 date];
        date = self->_date;
        if (date == date || [(NSDate *)date isEqual:date])
        {
          accessoryIdentifier = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)v5 accessoryIdentifier];
          accessoryIdentifier = self->_accessoryIdentifier;
          if (accessoryIdentifier == accessoryIdentifier || [(NSString *)accessoryIdentifier isEqual:accessoryIdentifier])
          {
            propagationEventReason = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)v5 propagationEventReason];
            propagationEventReason = self->_propagationEventReason;
            if (propagationEventReason == propagationEventReason || [(NSString *)propagationEventReason isEqual:propagationEventReason])
            {
              associatedChangeLogEventIdentifier = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)v5 associatedChangeLogEventIdentifier];
              associatedChangeLogEventIdentifier = self->_associatedChangeLogEventIdentifier;
              v15 = associatedChangeLogEventIdentifier == associatedChangeLogEventIdentifier || [(NSString *)associatedChangeLogEventIdentifier isEqual:associatedChangeLogEventIdentifier];
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_date hash];
  v4 = [(NSString *)self->_accessoryIdentifier hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_propagationEvent];
  v6 = [v5 hash];
  v7 = v4 ^ [(NSString *)self->_propagationEventReason hash]^ v6;
  v8 = [(NSString *)self->_associatedChangeLogEventIdentifier hash];

  return v7 ^ v8;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = AFHomeAccessorySiriDataSharingPropagationLogEvent;
  v5 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)&v13 description];
  date = self->_date;
  accessoryIdentifier = self->_accessoryIdentifier;
  propagationEvent = self->_propagationEvent;
  if (propagationEvent > 4)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_1E7346358[propagationEvent];
  }

  v10 = v9;
  v11 = [v4 initWithFormat:@"%@ {date = %@, accessoryIdentifier = %@, propagationEvent = %@, propagationEventReason = %@, associatedChangeLogEventIdentifier = %@}", v5, date, accessoryIdentifier, v10, self->_propagationEventReason, self->_associatedChangeLogEventIdentifier];

  return v11;
}

- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithDate:(id)date accessoryIdentifier:(id)identifier propagationEvent:(int64_t)event propagationEventReason:(id)reason associatedChangeLogEventIdentifier:(id)eventIdentifier
{
  dateCopy = date;
  identifierCopy = identifier;
  reasonCopy = reason;
  eventIdentifierCopy = eventIdentifier;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __161__AFHomeAccessorySiriDataSharingPropagationLogEvent_initWithDate_accessoryIdentifier_propagationEvent_propagationEventReason_associatedChangeLogEventIdentifier___block_invoke;
  v22[3] = &unk_1E73468E0;
  v23 = dateCopy;
  v24 = identifierCopy;
  v26 = eventIdentifierCopy;
  eventCopy = event;
  v25 = reasonCopy;
  v16 = eventIdentifierCopy;
  v17 = reasonCopy;
  v18 = identifierCopy;
  v19 = dateCopy;
  v20 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self initWithBuilder:v22];

  return v20;
}

void __161__AFHomeAccessorySiriDataSharingPropagationLogEvent_initWithDate_accessoryIdentifier_propagationEvent_propagationEventReason_associatedChangeLogEventIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDate:v3];
  [v4 setAccessoryIdentifier:a1[5]];
  [v4 setPropagationEvent:a1[8]];
  [v4 setPropagationEventReason:a1[6]];
  [v4 setAssociatedChangeLogEventIdentifier:a1[7]];
}

- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = AFHomeAccessorySiriDataSharingPropagationLogEvent;
  v5 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)&v21 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFHomeAccessorySiriDataSharingPropagationLogEventMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 isDirty])
    {
      getDate = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 getDate];
      v9 = [getDate copy];
      date = v6->_date;
      v6->_date = v9;

      getAccessoryIdentifier = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 getAccessoryIdentifier];
      v12 = [getAccessoryIdentifier copy];
      accessoryIdentifier = v6->_accessoryIdentifier;
      v6->_accessoryIdentifier = v12;

      v6->_propagationEvent = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 getPropagationEvent];
      getPropagationEventReason = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 getPropagationEventReason];
      v15 = [getPropagationEventReason copy];
      propagationEventReason = v6->_propagationEventReason;
      v6->_propagationEventReason = v15;

      getAssociatedChangeLogEventIdentifier = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 getAssociatedChangeLogEventIdentifier];
      v18 = [getAssociatedChangeLogEventIdentifier copy];
      associatedChangeLogEventIdentifier = v6->_associatedChangeLogEventIdentifier;
      v6->_associatedChangeLogEventIdentifier = v18;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFHomeAccessorySiriDataSharingPropagationLogEventMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFHomeAccessorySiriDataSharingPropagationLogEvent);
      getDate = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 getDate];
      v8 = [getDate copy];
      date = v6->_date;
      v6->_date = v8;

      getAccessoryIdentifier = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 getAccessoryIdentifier];
      v11 = [getAccessoryIdentifier copy];
      accessoryIdentifier = v6->_accessoryIdentifier;
      v6->_accessoryIdentifier = v11;

      v6->_propagationEvent = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 getPropagationEvent];
      getPropagationEventReason = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 getPropagationEventReason];
      v14 = [getPropagationEventReason copy];
      propagationEventReason = v6->_propagationEventReason;
      v6->_propagationEventReason = v14;

      getAssociatedChangeLogEventIdentifier = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 getAssociatedChangeLogEventIdentifier];
      v17 = [getAssociatedChangeLogEventIdentifier copy];
      associatedChangeLogEventIdentifier = v6->_associatedChangeLogEventIdentifier;
      v6->_associatedChangeLogEventIdentifier = v17;
    }

    else
    {
      v6 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self copy];
    }
  }

  else
  {
    v6 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self copy];
  }

  return v6;
}

@end