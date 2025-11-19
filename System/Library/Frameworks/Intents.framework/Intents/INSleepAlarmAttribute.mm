@interface INSleepAlarmAttribute
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INSleepAlarmAttribute)initWithBedtime:(id)a3 override:(id)a4;
- (INSleepAlarmAttribute)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INSleepAlarmAttribute

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"bedtime";
  bedtime = self->_bedtime;
  v4 = bedtime;
  if (!bedtime)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"override";
  v11[0] = v4;
  override = self->_override;
  v6 = override;
  if (!override)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (override)
  {
    if (bedtime)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (bedtime)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSleepAlarmAttribute;
  v6 = [(INSleepAlarmAttribute *)&v11 description];
  v7 = [(INSleepAlarmAttribute *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_bedtime];
  [v7 if_setObjectIfNonNil:v8 forKey:@"bedtime"];

  v9 = [v6 encodeObject:self->_override];

  [v7 if_setObjectIfNonNil:v9 forKey:@"override"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  bedtime = self->_bedtime;
  v5 = a3;
  [v5 encodeObject:bedtime forKey:@"bedtime"];
  [v5 encodeObject:self->_override forKey:@"override"];
}

- (INSleepAlarmAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bedtime"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"override"];

  v7 = [(INSleepAlarmAttribute *)self initWithBedtime:v5 override:v6];
  return v7;
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
      bedtime = self->_bedtime;
      v8 = 0;
      if (bedtime == v5->_bedtime || [(NSDateComponents *)bedtime isEqual:?])
      {
        override = self->_override;
        if (override == v5->_override || [(NSNumber *)override isEqual:?])
        {
          v8 = 1;
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

- (INSleepAlarmAttribute)initWithBedtime:(id)a3 override:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INSleepAlarmAttribute;
  v8 = [(INSleepAlarmAttribute *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    bedtime = v8->_bedtime;
    v8->_bedtime = v9;

    v11 = [v7 copy];
    override = v8->_override;
    v8->_override = v11;
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
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"bedtime"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"override"];
    v13 = [[a1 alloc] initWithBedtime:v11 override:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end