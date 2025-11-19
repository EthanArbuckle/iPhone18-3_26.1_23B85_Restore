@interface INHomeAutomationFromEntity
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INHomeAutomationFromEntity)initWithCoder:(id)a3;
- (INHomeAutomationFromEntity)initWithValue:(id)a3 type:(int64_t)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INHomeAutomationFromEntity

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

  v9[1] = @"type";
  v10[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
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
  v11.super_class = INHomeAutomationFromEntity;
  v6 = [(INHomeAutomationFromEntity *)&v11 description];
  v7 = [(INHomeAutomationFromEntity *)self _dictionaryRepresentation];
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
  v9 = self->_type - 1;
  if (v9 > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E7288818[v9];
  }

  v11 = v10;
  [v7 if_setObjectIfNonNil:v11 forKey:@"type"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeObject:value forKey:@"value"];
  [v5 encodeInteger:self->_type forKey:@"type"];
}

- (INHomeAutomationFromEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v6 = [v4 decodeIntegerForKey:@"type"];

  v7 = [(INHomeAutomationFromEntity *)self initWithValue:v5 type:v6];
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
      v7 = (value == v5->_value || [(NSString *)value isEqual:?]) && self->_type == v5->_type;
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
  v3 = [(NSString *)self->_value hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (INHomeAutomationFromEntity)initWithValue:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = INHomeAutomationFromEntity;
  v7 = [(INHomeAutomationFromEntity *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    value = v7->_value;
    v7->_value = v8;

    v7->_type = a4;
  }

  return v7;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"value"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"type"];
    v13 = INHomeAutomationEntityTypeWithString(v12);

    v14 = [[a1 alloc] initWithValue:v11 type:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end