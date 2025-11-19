@interface INTimer
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INTimer)initWithCoder:(id)a3;
- (INTimer)initWithLabel:(id)a3 duration:(double)a4 remainingTime:(double)a5 identifier:(id)a6 state:(int64_t)a7 type:(int64_t)a8;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INTimer

- (id)_dictionaryRepresentation
{
  v15[6] = *MEMORY[0x1E69E9840];
  v14[0] = @"label";
  label = self->_label;
  v4 = label;
  if (!label)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"duration";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  v15[1] = v5;
  v14[2] = @"remainingTime";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_remainingTime];
  v15[2] = v6;
  v14[3] = @"identifier";
  identifier = self->_identifier;
  v8 = identifier;
  if (!identifier)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v8;
  v14[4] = @"state";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v15[4] = v9;
  v14[5] = @"type";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v15[5] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];

  if (!identifier)
  {
  }

  if (!label)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INTimer;
  v6 = [(INTimer *)&v11 description];
  v7 = [(INTimer *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_label];
  [v7 if_setObjectIfNonNil:v8 forKey:@"label"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  [v7 if_setObjectIfNonNil:v9 forKey:@"duration"];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_remainingTime];
  [v7 if_setObjectIfNonNil:v10 forKey:@"remainingTime"];

  v11 = [v6 encodeObject:self->_identifier];

  [v7 if_setObjectIfNonNil:v11 forKey:@"identifier"];
  state = self->_state;
  v13 = @"unknown";
  if (state == 2)
  {
    v13 = @"timerPaused";
  }

  if (state == 1)
  {
    v14 = @"timerRunning";
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;
  [v7 if_setObjectIfNonNil:v15 forKey:@"state"];

  type = self->_type;
  v17 = @"unknown";
  if (type == 2)
  {
    v17 = @"sleepTimer";
  }

  if (type == 1)
  {
    v18 = @"defaultType";
  }

  else
  {
    v18 = v17;
  }

  v19 = v18;
  [v7 if_setObjectIfNonNil:v19 forKey:@"type"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  label = self->_label;
  v5 = a3;
  [v5 encodeObject:label forKey:@"label"];
  [v5 encodeDouble:@"duration" forKey:self->_duration];
  [v5 encodeDouble:@"remainingTime" forKey:self->_remainingTime];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeInteger:self->_type forKey:@"type"];
}

- (INTimer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  [v4 decodeDoubleForKey:@"duration"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"remainingTime"];
  v9 = v8;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"identifier"];

  v14 = [v4 decodeIntegerForKey:@"state"];
  v15 = [v4 decodeIntegerForKey:@"type"];

  v16 = [(INTimer *)self initWithLabel:v5 duration:v13 remainingTime:v14 identifier:v15 state:v7 type:v9];
  return v16;
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
      label = self->_label;
      v7 = (label == v5->_label || [(INSpeakableString *)label isEqual:?]) && self->_duration == v5->_duration && self->_remainingTime == v5->_remainingTime && ((identifier = self->_identifier, identifier == v5->_identifier) || [(NSString *)identifier isEqual:?]) && self->_state == v5->_state && self->_type == v5->_type;
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
  v3 = [(INSpeakableString *)self->_label hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_remainingTime];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(NSString *)self->_identifier hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v12 = v10 ^ [v11 hash];

  return v8 ^ v12;
}

- (INTimer)initWithLabel:(id)a3 duration:(double)a4 remainingTime:(double)a5 identifier:(id)a6 state:(int64_t)a7 type:(int64_t)a8
{
  v14 = a3;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = INTimer;
  v16 = [(INTimer *)&v22 init];
  if (v16)
  {
    v17 = [v14 copy];
    label = v16->_label;
    v16->_label = v17;

    v16->_duration = a4;
    v16->_remainingTime = a5;
    v19 = [v15 copy];
    identifier = v16->_identifier;
    v16->_identifier = v19;

    v16->_state = a7;
    v16->_type = a8;
  }

  return v16;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"label"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"duration"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [v8 objectForKeyedSubscript:@"remainingTime"];
    [v15 doubleValue];
    v17 = v16;

    v18 = [v8 objectForKeyedSubscript:@"identifier"];
    v19 = [v8 objectForKeyedSubscript:@"state"];
    v20 = INTimerStateWithString(v19);

    v21 = [v8 objectForKeyedSubscript:@"type"];
    v22 = INTimerTypeWithString(v21);

    v23 = [[a1 alloc] initWithLabel:v11 duration:v18 remainingTime:v20 identifier:v22 state:v14 type:v17];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end