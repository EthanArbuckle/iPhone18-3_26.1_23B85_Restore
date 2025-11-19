@interface INNumericSettingValue
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INNumericSettingValue)initWithCoder:(id)a3;
- (INNumericSettingValue)initWithValue:(id)a3 unit:(int64_t)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INNumericSettingValue

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"value";
  value = self->_value;
  v4 = value;
  if (!value)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"unit";
  v10[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_unit];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!value)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INNumericSettingValue;
  v6 = [(INNumericSettingValue *)&v11 description];
  v7 = [(INNumericSettingValue *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_value];

  [v7 if_setObjectIfNonNil:v8 forKey:@"value"];
  if (self->_unit == 1)
  {
    v9 = @"percentage";
  }

  else
  {
    v9 = @"unknown";
  }

  v10 = v9;
  [v7 if_setObjectIfNonNil:v10 forKey:@"unit"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeObject:value forKey:@"value"];
  [v5 encodeInteger:self->_unit forKey:@"unit"];
}

- (INNumericSettingValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v6 = [v4 decodeIntegerForKey:@"unit"];

  v7 = [(INNumericSettingValue *)self initWithValue:v5 unit:v6];
  return v7;
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
      value = self->_value;
      v7 = (value == v5->_value || [(NSNumber *)value isEqual:?]) && self->_unit == v5->_unit;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_value hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_unit];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (INNumericSettingValue)initWithValue:(id)a3 unit:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = INNumericSettingValue;
  v7 = [(INNumericSettingValue *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    value = v7->_value;
    v7->_value = v8;

    v7->_unit = a4;
  }

  return v7;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"value"];
    v8 = [v6 objectForKeyedSubscript:@"unit"];
    v9 = [v8 isEqualToString:@"percentage"];

    v10 = [[a1 alloc] initWithValue:v7 unit:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end