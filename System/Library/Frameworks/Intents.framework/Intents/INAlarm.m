@interface INAlarm
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INAlarm)initWithCoder:(id)a3;
- (INAlarm)initWithIdentifier:(id)a3 dateTime:(id)a4 label:(id)a5 enabled:(id)a6 firing:(id)a7 alarmRepeatScheduleOptions:(unint64_t)a8 sleepAlarmAttribute:(id)a9;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAlarm

- (id)_dictionaryRepresentation
{
  v24[7] = *MEMORY[0x1E69E9840];
  identifier = self->_identifier;
  v22 = identifier;
  v23[0] = @"identifier";
  if (!identifier)
  {
    identifier = [MEMORY[0x1E695DFB0] null];
  }

  v21 = identifier;
  v24[0] = identifier;
  v23[1] = @"dateTime";
  dateTime = self->_dateTime;
  v5 = dateTime;
  if (!dateTime)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v5;
  v24[1] = v5;
  v23[2] = @"label";
  label = self->_label;
  v7 = label;
  if (!label)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v7;
  v24[2] = v7;
  v23[3] = @"enabled";
  enabled = self->_enabled;
  v9 = enabled;
  if (!enabled)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = v9;
  v23[4] = @"firing";
  firing = self->_firing;
  v11 = firing;
  if (!firing)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = v11;
  v23[5] = @"alarmRepeatScheduleOptions";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_alarmRepeatScheduleOptions, v18}];
  v24[5] = v12;
  v23[6] = @"sleepAlarmAttribute";
  sleepAlarmAttribute = self->_sleepAlarmAttribute;
  v14 = sleepAlarmAttribute;
  if (!sleepAlarmAttribute)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24[6] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:7];
  if (!sleepAlarmAttribute)
  {
  }

  if (firing)
  {
    if (enabled)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (enabled)
    {
LABEL_17:
      if (label)
      {
        goto LABEL_18;
      }

LABEL_26:

      if (dateTime)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }
  }

  if (!label)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (dateTime)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  if (!v22)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAlarm;
  v6 = [(INAlarm *)&v11 description];
  v7 = [(INAlarm *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_identifier];
  [v7 if_setObjectIfNonNil:v8 forKey:@"identifier"];

  v9 = [v6 encodeObject:self->_dateTime];
  [v7 if_setObjectIfNonNil:v9 forKey:@"dateTime"];

  v10 = [v6 encodeObject:self->_label];
  [v7 if_setObjectIfNonNil:v10 forKey:@"label"];

  v11 = [v6 encodeObject:self->_enabled];
  [v7 if_setObjectIfNonNil:v11 forKey:@"enabled"];

  v12 = [v6 encodeObject:self->_firing];
  [v7 if_setObjectIfNonNil:v12 forKey:@"firing"];

  v13 = INAlarmRepeatScheduleOptionsGetNames(self->_alarmRepeatScheduleOptions);
  [v7 if_setObjectIfNonNil:v13 forKey:@"alarmRepeatScheduleOptions"];

  v14 = [v6 encodeObject:self->_sleepAlarmAttribute];

  [v7 if_setObjectIfNonNil:v14 forKey:@"sleepAlarmAttribute"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_dateTime forKey:@"dateTime"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeObject:self->_enabled forKey:@"enabled"];
  [v5 encodeObject:self->_firing forKey:@"firing"];
  [v5 encodeInteger:self->_alarmRepeatScheduleOptions forKey:@"alarmRepeatScheduleOptions"];
  [v5 encodeObject:self->_sleepAlarmAttribute forKey:@"sleepAlarmAttribute"];
}

- (INAlarm)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"identifier"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"dateTime"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
  v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"firing"];
  v13 = [v5 decodeIntegerForKey:@"alarmRepeatScheduleOptions"];
  v14 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"sleepAlarmAttribute"];

  v15 = [(INAlarm *)self initWithIdentifier:v8 dateTime:v9 label:v10 enabled:v11 firing:v12 alarmRepeatScheduleOptions:v13 sleepAlarmAttribute:v14];
  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = self->_identifier;
      v12 = 0;
      if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
      {
        dateTime = self->_dateTime;
        if (dateTime == v5->_dateTime || [(NSDateComponents *)dateTime isEqual:?])
        {
          label = self->_label;
          if (label == v5->_label || [(INSpeakableString *)label isEqual:?])
          {
            enabled = self->_enabled;
            if (enabled == v5->_enabled || [(NSNumber *)enabled isEqual:?])
            {
              firing = self->_firing;
              if ((firing == v5->_firing || [(NSNumber *)firing isEqual:?]) && self->_alarmRepeatScheduleOptions == v5->_alarmRepeatScheduleOptions)
              {
                sleepAlarmAttribute = self->_sleepAlarmAttribute;
                if (sleepAlarmAttribute == v5->_sleepAlarmAttribute || [(INSleepAlarmAttribute *)sleepAlarmAttribute isEqual:?])
                {
                  v12 = 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSDateComponents *)self->_dateTime hash]^ v3;
  v5 = [(INSpeakableString *)self->_label hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_enabled hash];
  v7 = v6 ^ [(NSNumber *)self->_firing hash];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_alarmRepeatScheduleOptions];
  v9 = [v8 hash];
  v10 = v9 ^ [(INSleepAlarmAttribute *)self->_sleepAlarmAttribute hash];

  return v7 ^ v10;
}

- (INAlarm)initWithIdentifier:(id)a3 dateTime:(id)a4 label:(id)a5 enabled:(id)a6 firing:(id)a7 alarmRepeatScheduleOptions:(unint64_t)a8 sleepAlarmAttribute:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v35.receiver = self;
  v35.super_class = INAlarm;
  v21 = [(INAlarm *)&v35 init];
  if (v21)
  {
    v22 = [v15 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [v16 copy];
    dateTime = v21->_dateTime;
    v21->_dateTime = v24;

    v26 = [v17 copy];
    label = v21->_label;
    v21->_label = v26;

    v28 = [v18 copy];
    enabled = v21->_enabled;
    v21->_enabled = v28;

    v30 = [v19 copy];
    firing = v21->_firing;
    v21->_firing = v30;

    v21->_alarmRepeatScheduleOptions = a8;
    v32 = [v20 copy];
    sleepAlarmAttribute = v21->_sleepAlarmAttribute;
    v21->_sleepAlarmAttribute = v32;
  }

  return v21;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v8 objectForKeyedSubscript:@"identifier"];
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"dateTime"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"label"];
    v14 = [v7 decodeObjectOfClass:v12 from:v13];

    v15 = [v8 objectForKeyedSubscript:@"enabled"];
    v16 = [v8 objectForKeyedSubscript:@"firing"];
    v17 = [v8 objectForKeyedSubscript:@"alarmRepeatScheduleOptions"];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = v18;

    v21 = INAlarmRepeatScheduleOptionsWithNames(v20);
    v22 = objc_opt_class();
    v23 = [v8 objectForKeyedSubscript:@"sleepAlarmAttribute"];
    v24 = [v7 decodeObjectOfClass:v22 from:v23];

    v19 = [[a1 alloc] initWithIdentifier:v26 dateTime:v11 label:v14 enabled:v15 firing:v16 alarmRepeatScheduleOptions:v21 sleepAlarmAttribute:v24];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end