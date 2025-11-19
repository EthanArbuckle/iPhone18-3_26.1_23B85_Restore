@interface AFHomeAccessorySiriDataSharingPropagationLogEvent
+ (id)newWithBuilder:(id)a3;
- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithBuilder:(id)a3;
- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithCoder:(id)a3;
- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithDate:(id)a3 accessoryIdentifier:(id)a4 propagationEvent:(int64_t)a5 propagationEventReason:(id)a6 associatedChangeLogEventIdentifier:(id)a7;
- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"date"];
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
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v6 = a3;
  [v6 encodeObject:date forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::date"];
  [v6 encodeObject:self->_accessoryIdentifier forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::accessoryIdentifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_propagationEvent];
  [v6 encodeObject:v5 forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::propagationEvent"];

  [v6 encodeObject:self->_propagationEventReason forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::propagationEventReason"];
  [v6 encodeObject:self->_associatedChangeLogEventIdentifier forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::associatedChangeLogEventIdentifier"];
}

- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::accessoryIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::propagationEvent"];
  v8 = [v7 integerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::propagationEventReason"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessorySiriDataSharingPropagationLogEvent::associatedChangeLogEventIdentifier"];

  v11 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self initWithDate:v5 accessoryIdentifier:v6 propagationEvent:v8 propagationEventReason:v9 associatedChangeLogEventIdentifier:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      propagationEvent = self->_propagationEvent;
      if (propagationEvent == [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)v5 propagationEvent])
      {
        v7 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)v5 date];
        date = self->_date;
        if (date == v7 || [(NSDate *)date isEqual:v7])
        {
          v9 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)v5 accessoryIdentifier];
          accessoryIdentifier = self->_accessoryIdentifier;
          if (accessoryIdentifier == v9 || [(NSString *)accessoryIdentifier isEqual:v9])
          {
            v11 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)v5 propagationEventReason];
            propagationEventReason = self->_propagationEventReason;
            if (propagationEventReason == v11 || [(NSString *)propagationEventReason isEqual:v11])
            {
              v13 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)v5 associatedChangeLogEventIdentifier];
              associatedChangeLogEventIdentifier = self->_associatedChangeLogEventIdentifier;
              v15 = associatedChangeLogEventIdentifier == v13 || [(NSString *)associatedChangeLogEventIdentifier isEqual:v13];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithDate:(id)a3 accessoryIdentifier:(id)a4 propagationEvent:(int64_t)a5 propagationEventReason:(id)a6 associatedChangeLogEventIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __161__AFHomeAccessorySiriDataSharingPropagationLogEvent_initWithDate_accessoryIdentifier_propagationEvent_propagationEventReason_associatedChangeLogEventIdentifier___block_invoke;
  v22[3] = &unk_1E73468E0;
  v23 = v12;
  v24 = v13;
  v26 = v15;
  v27 = a5;
  v25 = v14;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
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

- (AFHomeAccessorySiriDataSharingPropagationLogEvent)initWithBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AFHomeAccessorySiriDataSharingPropagationLogEvent;
  v5 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)&v21 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFHomeAccessorySiriDataSharingPropagationLogEventMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 isDirty])
    {
      v8 = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 getDate];
      v9 = [v8 copy];
      date = v6->_date;
      v6->_date = v9;

      v11 = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 getAccessoryIdentifier];
      v12 = [v11 copy];
      accessoryIdentifier = v6->_accessoryIdentifier;
      v6->_accessoryIdentifier = v12;

      v6->_propagationEvent = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 getPropagationEvent];
      v14 = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 getPropagationEventReason];
      v15 = [v14 copy];
      propagationEventReason = v6->_propagationEventReason;
      v6->_propagationEventReason = v15;

      v17 = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v7 getAssociatedChangeLogEventIdentifier];
      v18 = [v17 copy];
      associatedChangeLogEventIdentifier = v6->_associatedChangeLogEventIdentifier;
      v6->_associatedChangeLogEventIdentifier = v18;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFHomeAccessorySiriDataSharingPropagationLogEventMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFHomeAccessorySiriDataSharingPropagationLogEvent);
      v7 = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 getDate];
      v8 = [v7 copy];
      date = v6->_date;
      v6->_date = v8;

      v10 = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 getAccessoryIdentifier];
      v11 = [v10 copy];
      accessoryIdentifier = v6->_accessoryIdentifier;
      v6->_accessoryIdentifier = v11;

      v6->_propagationEvent = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 getPropagationEvent];
      v13 = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 getPropagationEventReason];
      v14 = [v13 copy];
      propagationEventReason = v6->_propagationEventReason;
      v6->_propagationEventReason = v14;

      v16 = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)v5 getAssociatedChangeLogEventIdentifier];
      v17 = [v16 copy];
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