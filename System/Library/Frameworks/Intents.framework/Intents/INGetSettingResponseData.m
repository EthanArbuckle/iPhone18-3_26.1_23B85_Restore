@interface INGetSettingResponseData
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INGetSettingResponseData)initWithCoder:(id)a3;
- (INGetSettingResponseData)initWithSettingMetadata:(id)a3 numericValue:(id)a4 boundedValue:(int64_t)a5 binaryValue:(int64_t)a6 labeledValue:(id)a7;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INGetSettingResponseData

- (id)_dictionaryRepresentation
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"settingMetadata";
  settingMetadata = self->_settingMetadata;
  v4 = settingMetadata;
  if (!settingMetadata)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"numericValue";
  numericValue = self->_numericValue;
  v6 = numericValue;
  if (!numericValue)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
  v14[2] = @"boundedValue";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_boundedValue];
  v15[2] = v7;
  v14[3] = @"binaryValue";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_binaryValue];
  v15[3] = v8;
  v14[4] = @"labeledValue";
  labeledValue = self->_labeledValue;
  v10 = labeledValue;
  if (!labeledValue)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];
  if (!labeledValue)
  {
  }

  if (numericValue)
  {
    if (settingMetadata)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (settingMetadata)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INGetSettingResponseData;
  v6 = [(INGetSettingResponseData *)&v11 description];
  v7 = [(INGetSettingResponseData *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_settingMetadata];
  [v7 if_setObjectIfNonNil:v8 forKey:@"settingMetadata"];

  v9 = [v6 encodeObject:self->_numericValue];
  [v7 if_setObjectIfNonNil:v9 forKey:@"numericValue"];

  v10 = self->_boundedValue - 1;
  if (v10 > 2)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E7287E78[v10];
  }

  v12 = v11;
  [v7 if_setObjectIfNonNil:v12 forKey:@"boundedValue"];

  v13 = self->_binaryValue - 1;
  if (v13 > 2)
  {
    v14 = @"unknown";
  }

  else
  {
    v14 = *(&off_1E7287C40 + v13);
  }

  v15 = v14;
  [v7 if_setObjectIfNonNil:v15 forKey:@"binaryValue"];

  v16 = [v6 encodeObject:self->_labeledValue];

  [v7 if_setObjectIfNonNil:v16 forKey:@"labeledValue"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  settingMetadata = self->_settingMetadata;
  v5 = a3;
  [v5 encodeObject:settingMetadata forKey:@"settingMetadata"];
  [v5 encodeObject:self->_numericValue forKey:@"numericValue"];
  [v5 encodeInteger:self->_boundedValue forKey:@"boundedValue"];
  [v5 encodeInteger:self->_binaryValue forKey:@"binaryValue"];
  [v5 encodeObject:self->_labeledValue forKey:@"labeledValue"];
}

- (INGetSettingResponseData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"settingMetadata"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numericValue"];
  v7 = [v4 decodeIntegerForKey:@"boundedValue"];
  v8 = [v4 decodeIntegerForKey:@"binaryValue"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"labeledValue"];

  v13 = [(INGetSettingResponseData *)self initWithSettingMetadata:v5 numericValue:v6 boundedValue:v7 binaryValue:v8 labeledValue:v12];
  return v13;
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
      settingMetadata = self->_settingMetadata;
      v9 = 0;
      if (settingMetadata == v5->_settingMetadata || [(INSettingMetadata *)settingMetadata isEqual:?])
      {
        numericValue = self->_numericValue;
        if ((numericValue == v5->_numericValue || [(INNumericSettingValue *)numericValue isEqual:?]) && self->_boundedValue == v5->_boundedValue && self->_binaryValue == v5->_binaryValue)
        {
          labeledValue = self->_labeledValue;
          if (labeledValue == v5->_labeledValue || [(NSString *)labeledValue isEqual:?])
          {
            v9 = 1;
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
  v3 = [(INSettingMetadata *)self->_settingMetadata hash];
  v4 = [(INNumericSettingValue *)self->_numericValue hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_boundedValue];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_binaryValue];
  v8 = [v7 hash];
  v9 = v8 ^ [(NSString *)self->_labeledValue hash];

  return v6 ^ v9;
}

- (INGetSettingResponseData)initWithSettingMetadata:(id)a3 numericValue:(id)a4 boundedValue:(int64_t)a5 binaryValue:(int64_t)a6 labeledValue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = INGetSettingResponseData;
  v15 = [(INGetSettingResponseData *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    settingMetadata = v15->_settingMetadata;
    v15->_settingMetadata = v16;

    v18 = [v13 copy];
    numericValue = v15->_numericValue;
    v15->_numericValue = v18;

    v15->_boundedValue = a5;
    v15->_binaryValue = a6;
    v20 = [v14 copy];
    labeledValue = v15->_labeledValue;
    v15->_labeledValue = v20;
  }

  return v15;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"settingMetadata"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"numericValue"];
    v14 = [v7 decodeObjectOfClass:v12 from:v13];

    v15 = [v8 objectForKeyedSubscript:@"boundedValue"];
    v16 = INBoundedSettingValueWithString(v15);

    v17 = [v8 objectForKeyedSubscript:@"binaryValue"];
    v18 = INBinarySettingValueWithString(v17);

    v19 = [v8 objectForKeyedSubscript:@"labeledValue"];
    v20 = [[a1 alloc] initWithSettingMetadata:v11 numericValue:v14 boundedValue:v16 binaryValue:v18 labeledValue:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end