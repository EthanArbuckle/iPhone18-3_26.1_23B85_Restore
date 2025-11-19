@interface INSpatialEventTrigger
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INSpatialEventTrigger)init;
- (INSpatialEventTrigger)initWithCoder:(id)a3;
- (INSpatialEventTrigger)initWithMobileSpace:(int64_t)a3 event:(int64_t)a4;
- (INSpatialEventTrigger)initWithPlacemark:(CLPlacemark *)placemark event:(INSpatialEvent)event;
- (INSpatialEventTrigger)initWithPlacemark:(id)a3 event:(int64_t)a4 suggestedValues:(id)a5 mobileSpace:(int64_t)a6;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INSpatialEventTrigger

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = [(INSpatialEventTrigger *)self placemark];
  v7 = [v6 _intents_readableTitleWithLocalizer:v5];

  v8 = [(INSpatialEventTrigger *)self event];
  if (v8)
  {
    if (v8 == INSpatialEventDepart)
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = @"Leaving: %@";
    }

    else
    {
      if (v8 != INSpatialEventArrive)
      {
        goto LABEL_8;
      }

      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = @"Arriving: %@";
    }

    v11 = INLocalizedStringWithLocalizer(v10, v10, v5);
    v12 = [v5 locale];
    self = [v9 initWithFormat:v11 locale:v12, v7];
  }

  else
  {
    self = v7;
  }

LABEL_8:

  return self;
}

- (id)_dictionaryRepresentation
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"placemark";
  placemark = self->_placemark;
  v4 = placemark;
  if (!placemark)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"event";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_event];
  v13[1] = v5;
  v12[2] = @"suggestedValues";
  suggestedValues = self->_suggestedValues;
  v7 = suggestedValues;
  if (!suggestedValues)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v7;
  v12[3] = @"mobileSpace";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mobileSpace];
  v13[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  if (!suggestedValues)
  {
  }

  if (!placemark)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSpatialEventTrigger;
  v6 = [(INSpatialEventTrigger *)&v11 description];
  v7 = [(INSpatialEventTrigger *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_placemark];
  [v7 if_setObjectIfNonNil:v8 forKey:@"placemark"];

  event = self->_event;
  v10 = @"unknown";
  if (event == 2)
  {
    v10 = @"depart";
  }

  if (event == 1)
  {
    v11 = @"arrive";
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  [v7 if_setObjectIfNonNil:v12 forKey:@"event"];

  v13 = [v6 encodeObject:self->_suggestedValues];

  [v7 if_setObjectIfNonNil:v13 forKey:@"suggestedValues"];
  if (self->_mobileSpace == 1)
  {
    v14 = @"car";
  }

  else
  {
    v14 = @"unknown";
  }

  v15 = v14;
  [v7 if_setObjectIfNonNil:v15 forKey:@"mobileSpace"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  placemark = self->_placemark;
  v5 = a3;
  [v5 encodeObject:placemark forKey:@"placemark"];
  [v5 encodeInteger:self->_event forKey:@"event"];
  [v5 encodeObject:self->_suggestedValues forKey:@"suggestedValues"];
  [v5 encodeInteger:self->_mobileSpace forKey:@"mobileSpace"];
}

- (INSpatialEventTrigger)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placemark"];
  v6 = [v4 decodeIntegerForKey:@"event"];
  v7 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"suggestedValues"];

  v11 = [v4 decodeIntegerForKey:@"mobileSpace"];
  v12 = [(INSpatialEventTrigger *)self initWithPlacemark:v5 event:v6 suggestedValues:v10 mobileSpace:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      placemark = self->_placemark;
      v8 = (placemark == v5->_placemark || [(CLPlacemark *)placemark isEqual:?]) && self->_event == v5->_event && ((suggestedValues = self->_suggestedValues, suggestedValues == v5->_suggestedValues) || [(NSArray *)suggestedValues isEqual:?]) && self->_mobileSpace == v5->_mobileSpace;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CLPlacemark *)self->_placemark hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_event];
  v5 = [v4 hash];
  v6 = v5 ^ v3 ^ [(NSArray *)self->_suggestedValues hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mobileSpace];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (INSpatialEventTrigger)initWithMobileSpace:(int64_t)a3 event:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = INSpatialEventTrigger;
  result = [(INSpatialEventTrigger *)&v7 init];
  if (result)
  {
    result->_event = a4;
    result->_mobileSpace = a3;
  }

  return result;
}

- (INSpatialEventTrigger)initWithPlacemark:(id)a3 event:(int64_t)a4 suggestedValues:(id)a5 mobileSpace:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = INSpatialEventTrigger;
  v12 = [(INSpatialEventTrigger *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    placemark = v12->_placemark;
    v12->_placemark = v13;

    v12->_event = a4;
    v15 = [v11 copy];
    suggestedValues = v12->_suggestedValues;
    v12->_suggestedValues = v15;

    v12->_mobileSpace = a6;
  }

  return v12;
}

- (INSpatialEventTrigger)initWithPlacemark:(CLPlacemark *)placemark event:(INSpatialEvent)event
{
  v6 = placemark;
  v11.receiver = self;
  v11.super_class = INSpatialEventTrigger;
  v7 = [(INSpatialEventTrigger *)&v11 init];
  if (v7)
  {
    v8 = [(CLPlacemark *)v6 copy];
    v9 = v7->_placemark;
    v7->_placemark = v8;

    v7->_event = event;
  }

  return v7;
}

- (INSpatialEventTrigger)init
{
  v3.receiver = self;
  v3.super_class = INSpatialEventTrigger;
  return [(INSpatialEventTrigger *)&v3 init];
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"placemark"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"event"];
    v13 = INSpatialEventWithString(v12);

    v14 = objc_opt_class();
    v15 = [v8 objectForKeyedSubscript:@"suggestedValues"];
    v16 = [v7 decodeObjectsOfClass:v14 from:v15];

    v17 = [v8 objectForKeyedSubscript:@"mobileSpace"];
    v18 = [v17 isEqualToString:@"car"];

    v19 = [[a1 alloc] initWithPlacemark:v11 event:v13 suggestedValues:v16 mobileSpace:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end