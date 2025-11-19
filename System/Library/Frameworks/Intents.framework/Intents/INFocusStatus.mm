@interface INFocusStatus
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INFocusStatus)initWithCoder:(id)a3;
- (INFocusStatus)initWithIsFocused:(NSNumber *)isFocused;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
@end

@implementation INFocusStatus

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"isFocused";
  isFocused = self->_isFocused;
  v3 = isFocused;
  if (!isFocused)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!isFocused)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INFocusStatus;
  v6 = [(INFocusStatus *)&v11 description];
  v7 = [(INFocusStatus *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_isFocused];

  [v7 if_setObjectIfNonNil:v8 forKey:@"isFocused"];

  return v7;
}

- (INFocusStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isFocused"];

  v6 = [(INFocusStatus *)self initWithIsFocused:v5];
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
      isFocused = self->_isFocused;
      v7 = isFocused == v5->_isFocused || [(NSNumber *)isFocused isEqual:?];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (INFocusStatus)initWithIsFocused:(NSNumber *)isFocused
{
  v4 = isFocused;
  v9.receiver = self;
  v9.super_class = INFocusStatus;
  v5 = [(INFocusStatus *)&v9 init];
  if (v5)
  {
    v6 = [(NSNumber *)v4 copy];
    v7 = v5->_isFocused;
    v5->_isFocused = v6;
  }

  return v5;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"isFocused"];
    v8 = [[a1 alloc] initWithIsFocused:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end