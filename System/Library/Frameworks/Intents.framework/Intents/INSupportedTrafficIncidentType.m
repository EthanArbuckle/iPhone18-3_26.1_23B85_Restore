@interface INSupportedTrafficIncidentType
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INSupportedTrafficIncidentType)initWithCoder:(id)a3;
- (INSupportedTrafficIncidentType)initWithType:(int64_t)a3 localizedDisplayString:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v5 = localizedDisplayString;
  if (!localizedDisplayString)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!localizedDisplayString)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSupportedTrafficIncidentType;
  v6 = [(INSupportedTrafficIncidentType *)&v11 description];
  v7 = [(INSupportedTrafficIncidentType *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
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
  [v7 if_setObjectIfNonNil:v10 forKey:@"type"];

  v11 = [v6 encodeObject:self->_localizedDisplayString];

  [v7 if_setObjectIfNonNil:v11 forKey:@"localizedDisplayString"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_localizedDisplayString forKey:@"localizedDisplayString"];
}

- (INSupportedTrafficIncidentType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayString"];

  v7 = [(INSupportedTrafficIncidentType *)self initWithType:v5 localizedDisplayString:v6];
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

- (INSupportedTrafficIncidentType)initWithType:(int64_t)a3 localizedDisplayString:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = INSupportedTrafficIncidentType;
  v7 = [(INSupportedTrafficIncidentType *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    localizedDisplayString = v8->_localizedDisplayString;
    v8->_localizedDisplayString = v9;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"type"];
    v10 = INTrafficIncidentTypeWithString(v9);

    v11 = objc_opt_class();
    v12 = [v8 objectForKeyedSubscript:@"localizedDisplayString"];
    v13 = [v7 decodeObjectOfClass:v11 from:v12];

    v14 = [[a1 alloc] initWithType:v10 localizedDisplayString:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end