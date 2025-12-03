@interface INEvent
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INEvent)initWithCoder:(id)coder;
- (INEvent)initWithEventType:(id)type eventDescriptors:(id)descriptors;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INEvent

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"eventType";
  eventType = self->_eventType;
  null = eventType;
  if (!eventType)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"eventDescriptors";
  v11[0] = null;
  eventDescriptors = self->_eventDescriptors;
  null2 = eventDescriptors;
  if (!eventDescriptors)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (eventDescriptors)
  {
    if (eventType)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (eventType)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INEvent;
  v6 = [(INEvent *)&v11 description];
  _dictionaryRepresentation = [(INEvent *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_eventType];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"eventType"];

  v9 = [encoderCopy encodeObject:self->_eventDescriptors];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"eventDescriptors"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  eventType = self->_eventType;
  coderCopy = coder;
  [coderCopy encodeObject:eventType forKey:@"eventType"];
  [coderCopy encodeObject:self->_eventDescriptors forKey:@"eventDescriptors"];
}

- (INEvent)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventType"];
  v6 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"eventDescriptors"];

  v10 = [(INEvent *)self initWithEventType:v5 eventDescriptors:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      eventType = self->_eventType;
      v8 = 0;
      if (eventType == v5->_eventType || [(NSString *)eventType isEqual:?])
      {
        eventDescriptors = self->_eventDescriptors;
        if (eventDescriptors == v5->_eventDescriptors || [(NSArray *)eventDescriptors isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (INEvent)initWithEventType:(id)type eventDescriptors:(id)descriptors
{
  typeCopy = type;
  descriptorsCopy = descriptors;
  v14.receiver = self;
  v14.super_class = INEvent;
  v8 = [(INEvent *)&v14 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    eventType = v8->_eventType;
    v8->_eventType = v9;

    v11 = [descriptorsCopy copy];
    eventDescriptors = v8->_eventDescriptors;
    v8->_eventDescriptors = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"eventType"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"eventDescriptors"];
    v14 = [decoderCopy decodeObjectsOfClass:v12 from:v13];

    v15 = [[self alloc] initWithEventType:v11 eventDescriptors:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end