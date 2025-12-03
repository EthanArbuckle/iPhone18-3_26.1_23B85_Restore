@interface INAlarm
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INAlarm)initWithCoder:(id)coder;
- (INAlarm)initWithIdentifier:(id)identifier dateTime:(id)time label:(id)label enabled:(id)enabled firing:(id)firing alarmRepeatScheduleOptions:(unint64_t)options sleepAlarmAttribute:(id)attribute;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  null = dateTime;
  if (!dateTime)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v24[1] = null;
  v23[2] = @"label";
  label = self->_label;
  null2 = label;
  if (!label)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v24[2] = null2;
  v23[3] = @"enabled";
  enabled = self->_enabled;
  null3 = enabled;
  if (!enabled)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null3;
  v23[4] = @"firing";
  firing = self->_firing;
  null4 = firing;
  if (!firing)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null4;
  v23[5] = @"alarmRepeatScheduleOptions";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_alarmRepeatScheduleOptions, v18}];
  v24[5] = v12;
  v23[6] = @"sleepAlarmAttribute";
  sleepAlarmAttribute = self->_sleepAlarmAttribute;
  null5 = sleepAlarmAttribute;
  if (!sleepAlarmAttribute)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[6] = null5;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAlarm;
  v6 = [(INAlarm *)&v11 description];
  _dictionaryRepresentation = [(INAlarm *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_identifier];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"identifier"];

  v9 = [encoderCopy encodeObject:self->_dateTime];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"dateTime"];

  v10 = [encoderCopy encodeObject:self->_label];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"label"];

  v11 = [encoderCopy encodeObject:self->_enabled];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"enabled"];

  v12 = [encoderCopy encodeObject:self->_firing];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"firing"];

  v13 = INAlarmRepeatScheduleOptionsGetNames(self->_alarmRepeatScheduleOptions);
  [dictionary if_setObjectIfNonNil:v13 forKey:@"alarmRepeatScheduleOptions"];

  v14 = [encoderCopy encodeObject:self->_sleepAlarmAttribute];

  [dictionary if_setObjectIfNonNil:v14 forKey:@"sleepAlarmAttribute"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_dateTime forKey:@"dateTime"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeObject:self->_enabled forKey:@"enabled"];
  [coderCopy encodeObject:self->_firing forKey:@"firing"];
  [coderCopy encodeInteger:self->_alarmRepeatScheduleOptions forKey:@"alarmRepeatScheduleOptions"];
  [coderCopy encodeObject:self->_sleepAlarmAttribute forKey:@"sleepAlarmAttribute"];
}

- (INAlarm)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateTime"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firing"];
  v13 = [coderCopy decodeIntegerForKey:@"alarmRepeatScheduleOptions"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sleepAlarmAttribute"];

  v15 = [(INAlarm *)self initWithIdentifier:v8 dateTime:v9 label:v10 enabled:v11 firing:v12 alarmRepeatScheduleOptions:v13 sleepAlarmAttribute:v14];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INAlarm)initWithIdentifier:(id)identifier dateTime:(id)time label:(id)label enabled:(id)enabled firing:(id)firing alarmRepeatScheduleOptions:(unint64_t)options sleepAlarmAttribute:(id)attribute
{
  identifierCopy = identifier;
  timeCopy = time;
  labelCopy = label;
  enabledCopy = enabled;
  firingCopy = firing;
  attributeCopy = attribute;
  v35.receiver = self;
  v35.super_class = INAlarm;
  v21 = [(INAlarm *)&v35 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [timeCopy copy];
    dateTime = v21->_dateTime;
    v21->_dateTime = v24;

    v26 = [labelCopy copy];
    label = v21->_label;
    v21->_label = v26;

    v28 = [enabledCopy copy];
    enabled = v21->_enabled;
    v21->_enabled = v28;

    v30 = [firingCopy copy];
    firing = v21->_firing;
    v21->_firing = v30;

    v21->_alarmRepeatScheduleOptions = options;
    v32 = [attributeCopy copy];
    sleepAlarmAttribute = v21->_sleepAlarmAttribute;
    v21->_sleepAlarmAttribute = v32;
  }

  return v21;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [fromCopy objectForKeyedSubscript:@"identifier"];
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"dateTime"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"label"];
    v14 = [decoderCopy decodeObjectOfClass:v12 from:v13];

    v15 = [fromCopy objectForKeyedSubscript:@"enabled"];
    v16 = [fromCopy objectForKeyedSubscript:@"firing"];
    v17 = [fromCopy objectForKeyedSubscript:@"alarmRepeatScheduleOptions"];
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
    v23 = [fromCopy objectForKeyedSubscript:@"sleepAlarmAttribute"];
    v24 = [decoderCopy decodeObjectOfClass:v22 from:v23];

    v19 = [[self alloc] initWithIdentifier:v26 dateTime:v11 label:v14 enabled:v15 firing:v16 alarmRepeatScheduleOptions:v21 sleepAlarmAttribute:v24];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end