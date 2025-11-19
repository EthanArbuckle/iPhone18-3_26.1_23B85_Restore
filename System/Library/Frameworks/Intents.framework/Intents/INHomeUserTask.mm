@interface INHomeUserTask
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INHomeUserTask)initWithCoder:(id)a3;
- (INHomeUserTask)initWithTaskType:(int64_t)a3 attribute:(int64_t)a4 value:(id)a5;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INHomeUserTask

- (id)_dictionaryRepresentation
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"taskType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskType];
  v11[0] = v3;
  v10[1] = @"attribute";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_attribute];
  v11[1] = v4;
  v10[2] = @"value";
  value = self->_value;
  v6 = value;
  if (!value)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  if (!value)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeUserTask;
  v6 = [(INHomeUserTask *)&v11 description];
  v7 = [(INHomeUserTask *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = self->_taskType - 1;
  if (v8 > 5)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E7286DA0[v8];
  }

  v10 = v9;
  [v7 if_setObjectIfNonNil:v10 forKey:@"taskType"];

  v11 = self->_attribute - 1;
  if (v11 > 0x41)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = off_1E727F080[v11];
  }

  v13 = v12;
  [v7 if_setObjectIfNonNil:v13 forKey:@"attribute"];

  v14 = [v6 encodeObject:self->_value];

  [v7 if_setObjectIfNonNil:v14 forKey:@"value"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  taskType = self->_taskType;
  v5 = a3;
  [v5 encodeInteger:taskType forKey:@"taskType"];
  [v5 encodeInteger:self->_attribute forKey:@"attribute"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

- (INHomeUserTask)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"taskType"];
  v6 = [v4 decodeIntegerForKey:@"attribute"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v8 = [(INHomeUserTask *)self initWithTaskType:v5 attribute:v6 value:v7];
  return v8;
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
      v6 = v5;
      v8 = 0;
      if (self->_taskType == v5->_taskType && self->_attribute == v5->_attribute)
      {
        value = self->_value;
        if (value == v6->_value || [(INHomeAttributeValue *)value isEqual:?])
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

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskType];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_attribute];
  v6 = [v5 hash] ^ v4;
  v7 = [(INHomeAttributeValue *)self->_value hash];

  return v6 ^ v7;
}

- (INHomeUserTask)initWithTaskType:(int64_t)a3 attribute:(int64_t)a4 value:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = INHomeUserTask;
  v9 = [(INHomeUserTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_taskType = a3;
    v9->_attribute = a4;
    v11 = [v8 copy];
    value = v10->_value;
    v10->_value = v11;
  }

  return v10;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"taskType"];
    v10 = INHomeUserTaskTypeWithString(v9);

    v11 = [v8 objectForKeyedSubscript:@"attribute"];
    v12 = INHomeAttributeTypeWithString(v11);

    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"value"];
    v15 = [v7 decodeObjectOfClass:v13 from:v14];

    v16 = [[a1 alloc] initWithTaskType:v10 attribute:v12 value:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end