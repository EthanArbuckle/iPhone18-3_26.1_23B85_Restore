@interface INTask
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INTask)init;
- (INTask)initWithCoder:(id)coder;
- (INTask)initWithTitle:(INSpeakableString *)title status:(INTaskStatus)status taskType:(INTaskType)taskType spatialEventTrigger:(INSpatialEventTrigger *)spatialEventTrigger temporalEventTrigger:(INTemporalEventTrigger *)temporalEventTrigger createdDateComponents:(NSDateComponents *)createdDateComponents modifiedDateComponents:(NSDateComponents *)modifiedDateComponents identifier:(NSString *)identifier priority:(INTaskPriority)priority;
- (INTask)initWithTitle:(id)title status:(int64_t)status taskType:(int64_t)type spatialEventTrigger:(id)trigger temporalEventTrigger:(id)eventTrigger createdDateComponents:(id)components modifiedDateComponents:(id)dateComponents identifier:(id)self0 priority:(int64_t)self1 contactEventTrigger:(id)self2 taskReference:(int64_t)self3 parentIdentifier:(id)self4;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INTask

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  title = [(INTask *)self title];
  v7 = [title _intents_readableTitleWithLocalizer:localizerCopy];

  return v7;
}

- (id)_dictionaryRepresentation
{
  v33[12] = *MEMORY[0x1E69E9840];
  title = self->_title;
  v31 = title;
  v32[0] = @"title";
  if (!title)
  {
    title = [MEMORY[0x1E695DFB0] null];
  }

  v26 = title;
  v33[0] = title;
  v32[1] = @"status";
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  v33[1] = v30;
  v32[2] = @"spatialEventTrigger";
  spatialEventTrigger = self->_spatialEventTrigger;
  v29 = spatialEventTrigger;
  if (!spatialEventTrigger)
  {
    spatialEventTrigger = [MEMORY[0x1E695DFB0] null];
  }

  v25 = spatialEventTrigger;
  v33[2] = spatialEventTrigger;
  v32[3] = @"temporalEventTrigger";
  temporalEventTrigger = self->_temporalEventTrigger;
  v28 = temporalEventTrigger;
  if (!temporalEventTrigger)
  {
    temporalEventTrigger = [MEMORY[0x1E695DFB0] null];
  }

  v24 = temporalEventTrigger;
  v33[3] = temporalEventTrigger;
  v32[4] = @"createdDateComponents";
  createdDateComponents = self->_createdDateComponents;
  v27 = createdDateComponents;
  if (!createdDateComponents)
  {
    createdDateComponents = [MEMORY[0x1E695DFB0] null];
  }

  v23 = createdDateComponents;
  v33[4] = createdDateComponents;
  v32[5] = @"modifiedDateComponents";
  modifiedDateComponents = self->_modifiedDateComponents;
  null = modifiedDateComponents;
  if (!modifiedDateComponents)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v33[5] = null;
  v32[6] = @"identifier";
  identifier = self->_identifier;
  null2 = identifier;
  if (!identifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v33[6] = null2;
  v32[7] = @"taskType";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskType];
  v33[7] = v11;
  v32[8] = @"priority";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_priority];
  v33[8] = v12;
  v32[9] = @"contactEventTrigger";
  contactEventTrigger = self->_contactEventTrigger;
  null3 = contactEventTrigger;
  if (!contactEventTrigger)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v33[9] = null3;
  v32[10] = @"taskReference";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskReference];
  v33[10] = v15;
  v32[11] = @"parentIdentifier";
  parentIdentifier = self->_parentIdentifier;
  null4 = parentIdentifier;
  if (!parentIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33[11] = null4;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:12];
  if (!parentIdentifier)
  {
  }

  if (!contactEventTrigger)
  {
  }

  if (identifier)
  {
    if (modifiedDateComponents)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (modifiedDateComponents)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if (!v27)
  {
  }

  if (!v28)
  {
  }

  if (!v29)
  {
  }

  if (!v31)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INTask;
  v6 = [(INTask *)&v11 description];
  _dictionaryRepresentation = [(INTask *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_title];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"title"];

  status = self->_status;
  v10 = @"unknown";
  if (status == 2)
  {
    v10 = @"completed";
  }

  if (status == 1)
  {
    v11 = @"notCompleted";
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  [dictionary if_setObjectIfNonNil:v12 forKey:@"status"];

  v13 = [encoderCopy encodeObject:self->_spatialEventTrigger];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"spatialEventTrigger"];

  v14 = [encoderCopy encodeObject:self->_temporalEventTrigger];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"temporalEventTrigger"];

  v15 = [encoderCopy encodeObject:self->_createdDateComponents];
  [dictionary if_setObjectIfNonNil:v15 forKey:@"createdDateComponents"];

  v16 = [encoderCopy encodeObject:self->_modifiedDateComponents];
  [dictionary if_setObjectIfNonNil:v16 forKey:@"modifiedDateComponents"];

  v17 = [encoderCopy encodeObject:self->_identifier];
  [dictionary if_setObjectIfNonNil:v17 forKey:@"identifier"];

  taskType = self->_taskType;
  v19 = @"unknown";
  if (taskType == 2)
  {
    v19 = @"completable";
  }

  if (taskType == 1)
  {
    v20 = @"notCompletable";
  }

  else
  {
    v20 = v19;
  }

  v21 = v20;
  [dictionary if_setObjectIfNonNil:v21 forKey:@"taskType"];

  priority = self->_priority;
  v23 = @"unknown";
  if (priority == 2)
  {
    v23 = @"flagged";
  }

  if (priority == 1)
  {
    v24 = @"notFlagged";
  }

  else
  {
    v24 = v23;
  }

  v25 = v24;
  [dictionary if_setObjectIfNonNil:v25 forKey:@"priority"];

  v26 = [encoderCopy encodeObject:self->_contactEventTrigger];
  [dictionary if_setObjectIfNonNil:v26 forKey:@"contactEventTrigger"];

  if (self->_taskReference == 1)
  {
    v27 = @"currentActivity";
  }

  else
  {
    v27 = @"unknown";
  }

  v28 = v27;
  [dictionary if_setObjectIfNonNil:v28 forKey:@"taskReference"];

  v29 = [encoderCopy encodeObject:self->_parentIdentifier];

  [dictionary if_setObjectIfNonNil:v29 forKey:@"parentIdentifier"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeObject:self->_spatialEventTrigger forKey:@"spatialEventTrigger"];
  [coderCopy encodeObject:self->_temporalEventTrigger forKey:@"temporalEventTrigger"];
  [coderCopy encodeObject:self->_createdDateComponents forKey:@"createdDateComponents"];
  [coderCopy encodeObject:self->_modifiedDateComponents forKey:@"modifiedDateComponents"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_taskType forKey:@"taskType"];
  [coderCopy encodeInteger:self->_priority forKey:@"priority"];
  [coderCopy encodeObject:self->_contactEventTrigger forKey:@"contactEventTrigger"];
  [coderCopy encodeInteger:self->_taskReference forKey:@"taskReference"];
  [coderCopy encodeObject:self->_parentIdentifier forKey:@"parentIdentifier"];
}

- (INTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v22 = [coderCopy decodeIntegerForKey:@"status"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spatialEventTrigger"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"temporalEventTrigger"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdDateComponents"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modifiedDateComponents"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"identifier"];

  v10 = [coderCopy decodeIntegerForKey:@"taskType"];
  v11 = [coderCopy decodeIntegerForKey:@"priority"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactEventTrigger"];
  v13 = [coderCopy decodeIntegerForKey:@"taskReference"];
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"parentIdentifier"];

  v18 = [(INTask *)self initWithTitle:v23 status:v22 taskType:v10 spatialEventTrigger:v21 temporalEventTrigger:v20 createdDateComponents:v4 modifiedDateComponents:v5 identifier:v9 priority:v11 contactEventTrigger:v12 taskReference:v13 parentIdentifier:v17];
  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = self->_title;
      v14 = 0;
      if ((title == v5->_title || [(INSpeakableString *)title isEqual:?]) && self->_status == v5->_status)
      {
        spatialEventTrigger = self->_spatialEventTrigger;
        if (spatialEventTrigger == v5->_spatialEventTrigger || [(INSpatialEventTrigger *)spatialEventTrigger isEqual:?])
        {
          temporalEventTrigger = self->_temporalEventTrigger;
          if (temporalEventTrigger == v5->_temporalEventTrigger || [(INTemporalEventTrigger *)temporalEventTrigger isEqual:?])
          {
            createdDateComponents = self->_createdDateComponents;
            if (createdDateComponents == v5->_createdDateComponents || [(NSDateComponents *)createdDateComponents isEqual:?])
            {
              modifiedDateComponents = self->_modifiedDateComponents;
              if (modifiedDateComponents == v5->_modifiedDateComponents || [(NSDateComponents *)modifiedDateComponents isEqual:?])
              {
                identifier = self->_identifier;
                if ((identifier == v5->_identifier || [(NSString *)identifier isEqual:?]) && self->_taskType == v5->_taskType && self->_priority == v5->_priority)
                {
                  contactEventTrigger = self->_contactEventTrigger;
                  if ((contactEventTrigger == v5->_contactEventTrigger || [(INContactEventTrigger *)contactEventTrigger isEqual:?]) && self->_taskReference == v5->_taskReference)
                  {
                    parentIdentifier = self->_parentIdentifier;
                    if (parentIdentifier == v5->_parentIdentifier || [(NSString *)parentIdentifier isEqual:?])
                    {
                      v14 = 1;
                    }
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
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(INSpeakableString *)self->_title hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  v5 = [v4 hash];
  v6 = v3 ^ [(INSpatialEventTrigger *)self->_spatialEventTrigger hash];
  v7 = v5 ^ v6 ^ [(INTemporalEventTrigger *)self->_temporalEventTrigger hash];
  v8 = [(NSDateComponents *)self->_createdDateComponents hash];
  v9 = v8 ^ [(NSDateComponents *)self->_modifiedDateComponents hash];
  v10 = v9 ^ [(NSString *)self->_identifier hash];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskType];
  v12 = v7 ^ v10 ^ [v11 hash];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_priority];
  v14 = [v13 hash];
  v15 = v14 ^ [(INContactEventTrigger *)self->_contactEventTrigger hash];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskReference];
  v17 = v12 ^ v15 ^ [v16 hash];
  v18 = [(NSString *)self->_parentIdentifier hash];

  return v17 ^ v18;
}

- (INTask)initWithTitle:(id)title status:(int64_t)status taskType:(int64_t)type spatialEventTrigger:(id)trigger temporalEventTrigger:(id)eventTrigger createdDateComponents:(id)components modifiedDateComponents:(id)dateComponents identifier:(id)self0 priority:(int64_t)self1 contactEventTrigger:(id)self2 taskReference:(int64_t)self3 parentIdentifier:(id)self4
{
  titleCopy = title;
  triggerCopy = trigger;
  eventTriggerCopy = eventTrigger;
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  identifierCopy = identifier;
  contactEventTriggerCopy = contactEventTrigger;
  parentIdentifierCopy = parentIdentifier;
  v46.receiver = self;
  v46.super_class = INTask;
  v26 = [(INTask *)&v46 init];
  if (v26)
  {
    v27 = [titleCopy copy];
    title = v26->_title;
    v26->_title = v27;

    v26->_status = status;
    v29 = [triggerCopy copy];
    spatialEventTrigger = v26->_spatialEventTrigger;
    v26->_spatialEventTrigger = v29;

    v31 = [eventTriggerCopy copy];
    temporalEventTrigger = v26->_temporalEventTrigger;
    v26->_temporalEventTrigger = v31;

    v33 = [componentsCopy copy];
    createdDateComponents = v26->_createdDateComponents;
    v26->_createdDateComponents = v33;

    v35 = [dateComponentsCopy copy];
    modifiedDateComponents = v26->_modifiedDateComponents;
    v26->_modifiedDateComponents = v35;

    v37 = [identifierCopy copy];
    identifier = v26->_identifier;
    v26->_identifier = v37;

    v26->_taskType = type;
    v26->_priority = priority;
    v39 = [contactEventTriggerCopy copy];
    contactEventTrigger = v26->_contactEventTrigger;
    v26->_contactEventTrigger = v39;

    v26->_taskReference = reference;
    v41 = [parentIdentifierCopy copy];
    parentIdentifier = v26->_parentIdentifier;
    v26->_parentIdentifier = v41;
  }

  return v26;
}

- (INTask)initWithTitle:(INSpeakableString *)title status:(INTaskStatus)status taskType:(INTaskType)taskType spatialEventTrigger:(INSpatialEventTrigger *)spatialEventTrigger temporalEventTrigger:(INTemporalEventTrigger *)temporalEventTrigger createdDateComponents:(NSDateComponents *)createdDateComponents modifiedDateComponents:(NSDateComponents *)modifiedDateComponents identifier:(NSString *)identifier priority:(INTaskPriority)priority
{
  v17 = title;
  v18 = spatialEventTrigger;
  v19 = temporalEventTrigger;
  v20 = createdDateComponents;
  v21 = modifiedDateComponents;
  v22 = identifier;
  v37.receiver = self;
  v37.super_class = INTask;
  v23 = [(INTask *)&v37 init];
  if (v23)
  {
    v24 = [(INSpeakableString *)v17 copy];
    v25 = v23->_title;
    v23->_title = v24;

    v23->_status = status;
    v26 = [(INSpatialEventTrigger *)v18 copy];
    v27 = v23->_spatialEventTrigger;
    v23->_spatialEventTrigger = v26;

    v28 = [(INTemporalEventTrigger *)v19 copy];
    v29 = v23->_temporalEventTrigger;
    v23->_temporalEventTrigger = v28;

    v30 = [(NSDateComponents *)v20 copy];
    v31 = v23->_createdDateComponents;
    v23->_createdDateComponents = v30;

    v32 = [(NSDateComponents *)v21 copy];
    v33 = v23->_modifiedDateComponents;
    v23->_modifiedDateComponents = v32;

    v34 = [(NSString *)v22 copy];
    v35 = v23->_identifier;
    v23->_identifier = v34;

    v23->_taskType = taskType;
    v23->_priority = priority;
  }

  return v23;
}

- (INTask)init
{
  v3.receiver = self;
  v3.super_class = INTask;
  return [(INTask *)&v3 init];
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"title"];
    v38 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v11 = [fromCopy objectForKeyedSubscript:@"status"];
    v37 = INTaskStatusWithString(v11);

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"spatialEventTrigger"];
    v35 = [decoderCopy decodeObjectOfClass:v12 from:v13];

    v14 = objc_opt_class();
    v15 = [fromCopy objectForKeyedSubscript:@"temporalEventTrigger"];
    v36 = [decoderCopy decodeObjectOfClass:v14 from:v15];

    v16 = objc_opt_class();
    v17 = [fromCopy objectForKeyedSubscript:@"createdDateComponents"];
    v18 = [decoderCopy decodeObjectOfClass:v16 from:v17];

    v19 = objc_opt_class();
    v20 = [fromCopy objectForKeyedSubscript:@"modifiedDateComponents"];
    v21 = [decoderCopy decodeObjectOfClass:v19 from:v20];

    v22 = [fromCopy objectForKeyedSubscript:@"identifier"];
    v23 = [fromCopy objectForKeyedSubscript:@"taskType"];
    v24 = INTaskTypeWithString(v23);

    v25 = [fromCopy objectForKeyedSubscript:@"priority"];
    v26 = INTaskPriorityWithString(v25);

    v27 = objc_opt_class();
    v28 = [fromCopy objectForKeyedSubscript:@"contactEventTrigger"];
    v29 = [decoderCopy decodeObjectOfClass:v27 from:v28];

    v30 = [fromCopy objectForKeyedSubscript:@"taskReference"];
    v31 = [v30 isEqualToString:@"currentActivity"];

    v32 = [fromCopy objectForKeyedSubscript:@"parentIdentifier"];
    v33 = [[selfCopy alloc] initWithTitle:v38 status:v37 taskType:v24 spatialEventTrigger:v35 temporalEventTrigger:v36 createdDateComponents:v18 modifiedDateComponents:v21 identifier:v22 priority:v26 contactEventTrigger:v29 taskReference:v31 parentIdentifier:v32];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  contactEventTrigger = [(INTask *)self contactEventTrigger];
  [contactEventTrigger _intents_updateContainerWithCache:cacheCopy];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  contactEventTrigger = [(INTask *)self contactEventTrigger];
  _intents_cacheableObjects = [contactEventTrigger _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects];

  if ([v3 count])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end