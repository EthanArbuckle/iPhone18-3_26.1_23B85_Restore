@interface INTemporalEventTrigger
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INTemporalEventTrigger)init;
- (INTemporalEventTrigger)initWithCoder:(id)a3;
- (INTemporalEventTrigger)initWithDateComponentsRange:(INDateComponentsRange *)dateComponentsRange;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
@end

@implementation INTemporalEventTrigger

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"dateComponentsRange";
  dateComponentsRange = self->_dateComponentsRange;
  v3 = dateComponentsRange;
  if (!dateComponentsRange)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!dateComponentsRange)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INTemporalEventTrigger;
  v6 = [(INTemporalEventTrigger *)&v11 description];
  v7 = [(INTemporalEventTrigger *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_dateComponentsRange];

  [v7 if_setObjectIfNonNil:v8 forKey:@"dateComponentsRange"];

  return v7;
}

- (INTemporalEventTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateComponentsRange"];

  v6 = [(INTemporalEventTrigger *)self initWithDateComponentsRange:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"dateComponentsRange"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [[a1 alloc] initWithDateComponentsRange:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end