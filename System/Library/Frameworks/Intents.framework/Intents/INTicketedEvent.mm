@interface INTicketedEvent
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INTicketedEvent)initWithCategory:(INTicketedEventCategory)category name:(NSString *)name eventDuration:(INDateComponentsRange *)eventDuration location:(CLPlacemark *)location;
- (INTicketedEvent)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INTicketedEvent

- (id)_dictionaryRepresentation
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"category";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_category];
  v14[0] = v3;
  v13[1] = @"name";
  name = self->_name;
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null;
  v13[2] = @"eventDuration";
  eventDuration = self->_eventDuration;
  null2 = eventDuration;
  if (!eventDuration)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null2;
  v13[3] = @"location";
  location = self->_location;
  null3 = location;
  if (!location)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (location)
  {
    if (eventDuration)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (name)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!eventDuration)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (name)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INTicketedEvent;
  v6 = [(INTicketedEvent *)&v11 description];
  _dictionaryRepresentation = [(INTicketedEvent *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  if (self->_category == 1)
  {
    v8 = @"movie";
  }

  else
  {
    v8 = @"unknown";
  }

  v9 = v8;
  [dictionary if_setObjectIfNonNil:v9 forKey:@"category"];

  v10 = [encoderCopy encodeObject:self->_name];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"name"];

  v11 = [encoderCopy encodeObject:self->_eventDuration];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"eventDuration"];

  v12 = [encoderCopy encodeObject:self->_location];

  [dictionary if_setObjectIfNonNil:v12 forKey:@"location"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  category = self->_category;
  coderCopy = coder;
  [coderCopy encodeInteger:category forKey:@"category"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_eventDuration forKey:@"eventDuration"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
}

- (INTicketedEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"category"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"name"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventDuration"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];

  v12 = [(INTicketedEvent *)self initWithCategory:v5 name:v9 eventDuration:v10 location:v11];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v9 = 0;
      if (self->_category == v5->_category)
      {
        name = self->_name;
        if (name == v5->_name || [(NSString *)name isEqual:?])
        {
          eventDuration = self->_eventDuration;
          if (eventDuration == v5->_eventDuration || [(INDateComponentsRange *)eventDuration isEqual:?])
          {
            location = self->_location;
            if (location == v5->_location || [(CLPlacemark *)location isEqual:?])
            {
              v9 = 1;
            }
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_category];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_name hash];
  v6 = v5 ^ [(INDateComponentsRange *)self->_eventDuration hash];
  v7 = v6 ^ [(CLPlacemark *)self->_location hash];

  return v7 ^ v4;
}

- (INTicketedEvent)initWithCategory:(INTicketedEventCategory)category name:(NSString *)name eventDuration:(INDateComponentsRange *)eventDuration location:(CLPlacemark *)location
{
  v10 = name;
  v11 = eventDuration;
  v12 = location;
  v22.receiver = self;
  v22.super_class = INTicketedEvent;
  v13 = [(INTicketedEvent *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_category = category;
    v15 = [(NSString *)v10 copy];
    v16 = v14->_name;
    v14->_name = v15;

    v17 = [(INDateComponentsRange *)v11 copy];
    v18 = v14->_eventDuration;
    v14->_eventDuration = v17;

    v19 = [(CLPlacemark *)v12 copy];
    v20 = v14->_location;
    v14->_location = v19;
  }

  return v14;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"category"];
    v10 = [v9 isEqualToString:@"movie"];

    v11 = [fromCopy objectForKeyedSubscript:@"name"];
    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"eventDuration"];
    v14 = [decoderCopy decodeObjectOfClass:v12 from:v13];

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"location"];
    v17 = [decoderCopy decodeObjectOfClass:v15 from:v16];

    v18 = [[self alloc] initWithCategory:v10 name:v11 eventDuration:v14 location:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end