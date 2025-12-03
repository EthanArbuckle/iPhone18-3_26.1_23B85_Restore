@interface INSupportedTrafficIncidentType
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INSupportedTrafficIncidentType)initWithCoder:(id)coder;
- (INSupportedTrafficIncidentType)initWithType:(int64_t)type localizedDisplayString:(id)string;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSupportedTrafficIncidentType

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"type";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v9[1] = @"localizedDisplayString";
  v10[0] = v3;
  localizedDisplayString = self->_localizedDisplayString;
  null = localizedDisplayString;
  if (!localizedDisplayString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!localizedDisplayString)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSupportedTrafficIncidentType;
  v6 = [(INSupportedTrafficIncidentType *)&v11 description];
  _dictionaryRepresentation = [(INSupportedTrafficIncidentType *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = self->_type - 1;
  if (v8 > 4)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E72887F0[v8];
  }

  v10 = v9;
  [dictionary if_setObjectIfNonNil:v10 forKey:@"type"];

  v11 = [encoderCopy encodeObject:self->_localizedDisplayString];

  [dictionary if_setObjectIfNonNil:v11 forKey:@"localizedDisplayString"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_localizedDisplayString forKey:@"localizedDisplayString"];
}

- (INSupportedTrafficIncidentType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayString"];

  v7 = [(INSupportedTrafficIncidentType *)self initWithType:v5 localizedDisplayString:v6];
  return v7;
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
      v7 = 0;
      if (self->_type == v5->_type)
      {
        localizedDisplayString = self->_localizedDisplayString;
        if (localizedDisplayString == v5->_localizedDisplayString || [(NSString *)localizedDisplayString isEqual:?])
        {
          v7 = 1;
        }
      }
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
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_localizedDisplayString hash];

  return v5 ^ v4;
}

- (INSupportedTrafficIncidentType)initWithType:(int64_t)type localizedDisplayString:(id)string
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = INSupportedTrafficIncidentType;
  v7 = [(INSupportedTrafficIncidentType *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [stringCopy copy];
    localizedDisplayString = v8->_localizedDisplayString;
    v8->_localizedDisplayString = v9;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"type"];
    v10 = INTrafficIncidentTypeWithString(v9);

    v11 = objc_opt_class();
    v12 = [fromCopy objectForKeyedSubscript:@"localizedDisplayString"];
    v13 = [decoderCopy decodeObjectOfClass:v11 from:v12];

    v14 = [[self alloc] initWithType:v10 localizedDisplayString:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end