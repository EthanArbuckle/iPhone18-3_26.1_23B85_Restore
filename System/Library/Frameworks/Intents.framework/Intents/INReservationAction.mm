@interface INReservationAction
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INReservationAction)initWithCoder:(id)a3;
- (INReservationAction)initWithType:(INReservationActionType)type validDuration:(INDateComponentsRange *)validDuration userActivity:(NSUserActivity *)userActivity;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v5 = validDuration;
  if (!validDuration)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v5;
  v11[2] = @"userActivity";
  userActivity = self->_userActivity;
  v7 = userActivity;
  if (!userActivity)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = v7;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INReservationAction;
  v6 = [(INReservationAction *)&v11 description];
  v7 = [(INReservationAction *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  if (self->_type == 1)
  {
    v8 = @"checkIn";
  }

  else
  {
    v8 = @"unknown";
  }

  v9 = v8;
  [v7 if_setObjectIfNonNil:v9 forKey:@"type"];

  v10 = [v6 encodeObject:self->_validDuration];
  [v7 if_setObjectIfNonNil:v10 forKey:@"validDuration"];

  v11 = INUserActivitySerializeToData(self->_userActivity);
  v12 = [v6 encodeObject:v11];

  [v7 if_setObjectIfNonNil:v12 forKey:@"userActivity"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_validDuration forKey:@"validDuration"];
  v6 = INUserActivitySerializeToData(self->_userActivity);
  [v5 encodeObject:v6 forKey:@"userActivity"];
}

- (INReservationAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"validDuration"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];

  v8 = INUserActivityDeserializeFromData(v7);
  v9 = [(INReservationAction *)self initWithType:v5 validDuration:v6 userActivity:v8];

  return v9;
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

    v14 = [(NSUserActivity *)v9 _intents_copy];
    v15 = v11->_userActivity;
    v11->_userActivity = v14;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:@"type"];
  v10 = [v9 isEqualToString:@"checkIn"];

  v11 = objc_opt_class();
  v12 = [v7 objectForKeyedSubscript:@"validDuration"];
  v13 = [v8 decodeObjectOfClass:v11 from:v12];

  v14 = objc_opt_class();
  v15 = [v7 objectForKeyedSubscript:@"userActivity"];

  v16 = [v8 decodeObjectOfClass:v14 from:v15];

  v17 = INUserActivityDeserializeFromData(v16);
  v18 = [[a1 alloc] initWithType:v10 validDuration:v13 userActivity:v17];

  return v18;
}

@end