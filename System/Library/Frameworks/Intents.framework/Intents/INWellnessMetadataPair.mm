@interface INWellnessMetadataPair
- (BOOL)isEqual:(id)a3;
- (INWellnessMetadataPair)initWithCoder:(id)a3;
- (INWellnessMetadataPair)initWithNumber:(id)a3 key:(id)a4;
- (INWellnessMetadataPair)initWithString:(id)a3 key:(id)a4;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INWellnessMetadataPair

- (id)_dictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  stringValue = self->_stringValue;
  if (stringValue)
  {
    key = self->_key;
    v11[0] = @"key";
    v11[1] = @"value";
    v12[0] = key;
    v12[1] = stringValue;
    v4 = MEMORY[0x1E695DF20];
    v5 = v12;
    v6 = v11;
  }

  else
  {
    v13[0] = @"key";
    v13[1] = @"value";
    numberValue = self->_numberValue;
    v14[0] = self->_key;
    v14[1] = numberValue;
    v4 = MEMORY[0x1E695DF20];
    v5 = v14;
    v6 = v13;
  }

  v8 = [v4 dictionaryWithObjects:v5 forKeys:v6 count:2];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INWellnessMetadataPair;
  v6 = [(INWellnessMetadataPair *)&v11 description];
  v7 = [(INWellnessMetadataPair *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 encodeObject:key forKey:@"key"];
  [v5 encodeObject:self->_stringValue forKey:@"stringValue"];
  [v5 encodeObject:self->_numberValue forKey:@"numberValue"];
}

- (INWellnessMetadataPair)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberValue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];

  v8 = objc_alloc(objc_opt_class());
  if (v7)
  {
    v9 = [v8 initWithString:v7 key:v5];
  }

  else
  {
    v9 = [v8 initWithNumber:v6 key:v5];
  }

  v10 = v9;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v8 = 0;
    if ([(NSString *)self->_key isEqualToString:v5[1]])
    {
      numberValue = self->_numberValue;
      if (!numberValue || [(NSNumber *)numberValue isEqualToNumber:v5[2]])
      {
        stringValue = self->_stringValue;
        if (!stringValue || [(NSString *)stringValue isEqualToString:v5[3]])
        {
          v8 = 1;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (INWellnessMetadataPair)initWithString:(id)a3 key:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INWellnessMetadataPair;
  v9 = [(INWellnessMetadataPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a4);
    objc_storeStrong(&v10->_stringValue, a3);
  }

  return v10;
}

- (INWellnessMetadataPair)initWithNumber:(id)a3 key:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INWellnessMetadataPair;
  v9 = [(INWellnessMetadataPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a4);
    objc_storeStrong(&v10->_numberValue, a3);
  }

  return v10;
}

@end