@interface INWellnessMetadataPair
- (BOOL)isEqual:(id)equal;
- (INWellnessMetadataPair)initWithCoder:(id)coder;
- (INWellnessMetadataPair)initWithNumber:(id)number key:(id)key;
- (INWellnessMetadataPair)initWithString:(id)string key:(id)key;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INWellnessMetadataPair;
  v6 = [(INWellnessMetadataPair *)&v11 description];
  _dictionaryRepresentation = [(INWellnessMetadataPair *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"key"];
  [coderCopy encodeObject:self->_stringValue forKey:@"stringValue"];
  [coderCopy encodeObject:self->_numberValue forKey:@"numberValue"];
}

- (INWellnessMetadataPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberValue"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (INWellnessMetadataPair)initWithString:(id)string key:(id)key
{
  stringCopy = string;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = INWellnessMetadataPair;
  v9 = [(INWellnessMetadataPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_stringValue, string);
  }

  return v10;
}

- (INWellnessMetadataPair)initWithNumber:(id)number key:(id)key
{
  numberCopy = number;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = INWellnessMetadataPair;
  v9 = [(INWellnessMetadataPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_numberValue, number);
  }

  return v10;
}

@end