@interface INSpatialEventTrigger
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INSpatialEventTrigger)init;
- (INSpatialEventTrigger)initWithCoder:(id)coder;
- (INSpatialEventTrigger)initWithMobileSpace:(int64_t)space event:(int64_t)event;
- (INSpatialEventTrigger)initWithPlacemark:(CLPlacemark *)placemark event:(INSpatialEvent)event;
- (INSpatialEventTrigger)initWithPlacemark:(id)placemark event:(int64_t)event suggestedValues:(id)values mobileSpace:(int64_t)space;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSpatialEventTrigger

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  placemark = [(INSpatialEventTrigger *)self placemark];
  v7 = [placemark _intents_readableTitleWithLocalizer:localizerCopy];

  event = [(INSpatialEventTrigger *)self event];
  if (event)
  {
    if (event == INSpatialEventDepart)
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = @"Leaving: %@";
    }

    else
    {
      if (event != INSpatialEventArrive)
      {
        goto LABEL_8;
      }

      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = @"Arriving: %@";
    }

    v11 = INLocalizedStringWithLocalizer(v10, v10, localizerCopy);
    locale = [localizerCopy locale];
    self = [v9 initWithFormat:v11 locale:locale, v7];
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
  null = placemark;
  if (!placemark)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"event";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_event];
  v13[1] = v5;
  v12[2] = @"suggestedValues";
  suggestedValues = self->_suggestedValues;
  null2 = suggestedValues;
  if (!suggestedValues)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null2;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSpatialEventTrigger;
  v6 = [(INSpatialEventTrigger *)&v11 description];
  _dictionaryRepresentation = [(INSpatialEventTrigger *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_placemark];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"placemark"];

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
  [dictionary if_setObjectIfNonNil:v12 forKey:@"event"];

  v13 = [encoderCopy encodeObject:self->_suggestedValues];

  [dictionary if_setObjectIfNonNil:v13 forKey:@"suggestedValues"];
  if (self->_mobileSpace == 1)
  {
    v14 = @"car";
  }

  else
  {
    v14 = @"unknown";
  }

  v15 = v14;
  [dictionary if_setObjectIfNonNil:v15 forKey:@"mobileSpace"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  placemark = self->_placemark;
  coderCopy = coder;
  [coderCopy encodeObject:placemark forKey:@"placemark"];
  [coderCopy encodeInteger:self->_event forKey:@"event"];
  [coderCopy encodeObject:self->_suggestedValues forKey:@"suggestedValues"];
  [coderCopy encodeInteger:self->_mobileSpace forKey:@"mobileSpace"];
}

- (INSpatialEventTrigger)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placemark"];
  v6 = [coderCopy decodeIntegerForKey:@"event"];
  v7 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"suggestedValues"];

  v11 = [coderCopy decodeIntegerForKey:@"mobileSpace"];
  v12 = [(INSpatialEventTrigger *)self initWithPlacemark:v5 event:v6 suggestedValues:v10 mobileSpace:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
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

- (INSpatialEventTrigger)initWithMobileSpace:(int64_t)space event:(int64_t)event
{
  v7.receiver = self;
  v7.super_class = INSpatialEventTrigger;
  result = [(INSpatialEventTrigger *)&v7 init];
  if (result)
  {
    result->_event = event;
    result->_mobileSpace = space;
  }

  return result;
}

- (INSpatialEventTrigger)initWithPlacemark:(id)placemark event:(int64_t)event suggestedValues:(id)values mobileSpace:(int64_t)space
{
  placemarkCopy = placemark;
  valuesCopy = values;
  v18.receiver = self;
  v18.super_class = INSpatialEventTrigger;
  v12 = [(INSpatialEventTrigger *)&v18 init];
  if (v12)
  {
    v13 = [placemarkCopy copy];
    placemark = v12->_placemark;
    v12->_placemark = v13;

    v12->_event = event;
    v15 = [valuesCopy copy];
    suggestedValues = v12->_suggestedValues;
    v12->_suggestedValues = v15;

    v12->_mobileSpace = space;
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

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"placemark"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"event"];
    v13 = INSpatialEventWithString(v12);

    v14 = objc_opt_class();
    v15 = [fromCopy objectForKeyedSubscript:@"suggestedValues"];
    v16 = [decoderCopy decodeObjectsOfClass:v14 from:v15];

    v17 = [fromCopy objectForKeyedSubscript:@"mobileSpace"];
    v18 = [v17 isEqualToString:@"car"];

    v19 = [[self alloc] initWithPlacemark:v11 event:v13 suggestedValues:v16 mobileSpace:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end