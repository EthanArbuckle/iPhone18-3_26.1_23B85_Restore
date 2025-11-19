@interface INTicketedEvent
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INTicketedEvent)initWithCategory:(INTicketedEventCategory)category name:(NSString *)name eventDuration:(INDateComponentsRange *)eventDuration location:(CLPlacemark *)location;
- (INTicketedEvent)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v5 = name;
  if (!name)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v5;
  v13[2] = @"eventDuration";
  eventDuration = self->_eventDuration;
  v7 = eventDuration;
  if (!eventDuration)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v7;
  v13[3] = @"location";
  location = self->_location;
  v9 = location;
  if (!location)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = v9;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INTicketedEvent;
  v6 = [(INTicketedEvent *)&v11 description];
  v7 = [(INTicketedEvent *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  if (self->_category == 1)
  {
    v8 = @"movie";
  }

  else
  {
    v8 = @"unknown";
  }

  v9 = v8;
  [v7 if_setObjectIfNonNil:v9 forKey:@"category"];

  v10 = [v6 encodeObject:self->_name];
  [v7 if_setObjectIfNonNil:v10 forKey:@"name"];

  v11 = [v6 encodeObject:self->_eventDuration];
  [v7 if_setObjectIfNonNil:v11 forKey:@"eventDuration"];

  v12 = [v6 encodeObject:self->_location];

  [v7 if_setObjectIfNonNil:v12 forKey:@"location"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  category = self->_category;
  v5 = a3;
  [v5 encodeInteger:category forKey:@"category"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_eventDuration forKey:@"eventDuration"];
  [v5 encodeObject:self->_location forKey:@"location"];
}

- (INTicketedEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"category"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"name"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDuration"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];

  v12 = [(INTicketedEvent *)self initWithCategory:v5 name:v9 eventDuration:v10 location:v11];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"category"];
    v10 = [v9 isEqualToString:@"movie"];

    v11 = [v8 objectForKeyedSubscript:@"name"];
    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"eventDuration"];
    v14 = [v7 decodeObjectOfClass:v12 from:v13];

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"location"];
    v17 = [v7 decodeObjectOfClass:v15 from:v16];

    v18 = [[a1 alloc] initWithCategory:v10 name:v11 eventDuration:v14 location:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end