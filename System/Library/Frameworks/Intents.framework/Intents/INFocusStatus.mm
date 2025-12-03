@interface INFocusStatus
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INFocusStatus)initWithCoder:(id)coder;
- (INFocusStatus)initWithIsFocused:(NSNumber *)isFocused;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
@end

@implementation INFocusStatus

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"isFocused";
  isFocused = self->_isFocused;
  null = isFocused;
  if (!isFocused)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!isFocused)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INFocusStatus;
  v6 = [(INFocusStatus *)&v11 description];
  _dictionaryRepresentation = [(INFocusStatus *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_isFocused];

  [dictionary if_setObjectIfNonNil:v8 forKey:@"isFocused"];

  return dictionary;
}

- (INFocusStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isFocused"];

  v6 = [(INFocusStatus *)self initWithIsFocused:v5];
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

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"isFocused"];
    v8 = [[self alloc] initWithIsFocused:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end