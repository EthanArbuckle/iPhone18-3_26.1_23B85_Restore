@interface INReservationAction
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INReservationAction)initWithCoder:(id)coder;
- (INReservationAction)initWithType:(INReservationActionType)type validDuration:(INDateComponentsRange *)validDuration userActivity:(NSUserActivity *)userActivity;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INReservationAction

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"type";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v12[0] = v3;
  v11[1] = @"validDuration";
  validDuration = self->_validDuration;
  null = validDuration;
  if (!validDuration)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null;
  v11[2] = @"userActivity";
  userActivity = self->_userActivity;
  null2 = userActivity;
  if (!userActivity)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (userActivity)
  {
    if (validDuration)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (validDuration)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INReservationAction;
  v6 = [(INReservationAction *)&v11 description];
  _dictionaryRepresentation = [(INReservationAction *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  if (self->_type == 1)
  {
    v8 = @"checkIn";
  }

  else
  {
    v8 = @"unknown";
  }

  v9 = v8;
  [dictionary if_setObjectIfNonNil:v9 forKey:@"type"];

  v10 = [encoderCopy encodeObject:self->_validDuration];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"validDuration"];

  v11 = INUserActivitySerializeToData(self->_userActivity);
  v12 = [encoderCopy encodeObject:v11];

  [dictionary if_setObjectIfNonNil:v12 forKey:@"userActivity"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_validDuration forKey:@"validDuration"];
  v6 = INUserActivitySerializeToData(self->_userActivity);
  [coderCopy encodeObject:v6 forKey:@"userActivity"];
}

- (INReservationAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validDuration"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];

  v8 = INUserActivityDeserializeFromData(v7);
  v9 = [(INReservationAction *)self initWithType:v5 validDuration:v6 userActivity:v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = 0;
      if (self->_type == v5->_type)
      {
        validDuration = self->_validDuration;
        if (validDuration == v5->_validDuration || [(INDateComponentsRange *)validDuration isEqual:?])
        {
          userActivity = self->_userActivity;
          if (userActivity == v5->_userActivity || [(NSUserActivity *)userActivity isEqual:?])
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
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v4 = [v3 hash];
  v5 = [(INDateComponentsRange *)self->_validDuration hash];
  v6 = v5 ^ [(NSUserActivity *)self->_userActivity hash];

  return v6 ^ v4;
}

- (INReservationAction)initWithType:(INReservationActionType)type validDuration:(INDateComponentsRange *)validDuration userActivity:(NSUserActivity *)userActivity
{
  v8 = validDuration;
  v9 = userActivity;
  v17.receiver = self;
  v17.super_class = INReservationAction;
  v10 = [(INReservationAction *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [(INDateComponentsRange *)v8 copy];
    v13 = v11->_validDuration;
    v11->_validDuration = v12;

    _intents_copy = [(NSUserActivity *)v9 _intents_copy];
    v15 = v11->_userActivity;
    v11->_userActivity = _intents_copy;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  decoderCopy = decoder;
  v9 = [fromCopy objectForKeyedSubscript:@"type"];
  v10 = [v9 isEqualToString:@"checkIn"];

  v11 = objc_opt_class();
  v12 = [fromCopy objectForKeyedSubscript:@"validDuration"];
  v13 = [decoderCopy decodeObjectOfClass:v11 from:v12];

  v14 = objc_opt_class();
  v15 = [fromCopy objectForKeyedSubscript:@"userActivity"];

  v16 = [decoderCopy decodeObjectOfClass:v14 from:v15];

  v17 = INUserActivityDeserializeFromData(v16);
  v18 = [[self alloc] initWithType:v10 validDuration:v13 userActivity:v17];

  return v18;
}

@end