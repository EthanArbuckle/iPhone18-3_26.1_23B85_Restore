@interface INTemporalEventTrigger
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INTemporalEventTrigger)init;
- (INTemporalEventTrigger)initWithCoder:(id)coder;
- (INTemporalEventTrigger)initWithDateComponentsRange:(INDateComponentsRange *)dateComponentsRange;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
@end

@implementation INTemporalEventTrigger

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"dateComponentsRange";
  dateComponentsRange = self->_dateComponentsRange;
  null = dateComponentsRange;
  if (!dateComponentsRange)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!dateComponentsRange)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INTemporalEventTrigger;
  v6 = [(INTemporalEventTrigger *)&v11 description];
  _dictionaryRepresentation = [(INTemporalEventTrigger *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_dateComponentsRange];

  [dictionary if_setObjectIfNonNil:v8 forKey:@"dateComponentsRange"];

  return dictionary;
}

- (INTemporalEventTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateComponentsRange"];

  v6 = [(INTemporalEventTrigger *)self initWithDateComponentsRange:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dateComponentsRange = self->_dateComponentsRange;
      v7 = dateComponentsRange == v5->_dateComponentsRange || [(INDateComponentsRange *)dateComponentsRange isEqual:?];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (INTemporalEventTrigger)initWithDateComponentsRange:(INDateComponentsRange *)dateComponentsRange
{
  v4 = dateComponentsRange;
  v9.receiver = self;
  v9.super_class = INTemporalEventTrigger;
  v5 = [(INTemporalEventTrigger *)&v9 init];
  if (v5)
  {
    v6 = [(INDateComponentsRange *)v4 copy];
    v7 = v5->_dateComponentsRange;
    v5->_dateComponentsRange = v6;
  }

  return v5;
}

- (INTemporalEventTrigger)init
{
  v3.receiver = self;
  v3.super_class = INTemporalEventTrigger;
  return [(INTemporalEventTrigger *)&v3 init];
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"dateComponentsRange"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [[self alloc] initWithDateComponentsRange:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end