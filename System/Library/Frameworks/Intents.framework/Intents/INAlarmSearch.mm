@interface INAlarmSearch
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INAlarmSearch)initWithAlarmReferenceType:(int64_t)type identifier:(id)identifier time:(id)time label:(id)label alarmSearchStatus:(int64_t)status includeSleepAlarm:(id)alarm period:(int64_t)period isMeridianInferred:(id)self0;
- (INAlarmSearch)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAlarmSearch

- (id)_dictionaryRepresentation
{
  v23[8] = *MEMORY[0x1E69E9840];
  v22[0] = @"alarmReferenceType";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:self->_alarmReferenceType];
  v23[0] = v21;
  v22[1] = @"identifier";
  identifier = self->_identifier;
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v23[1] = null;
  v22[2] = @"time";
  time = self->_time;
  null2 = time;
  if (!time)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v23[2] = null2;
  v22[3] = @"label";
  label = self->_label;
  null3 = label;
  if (!label)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null3;
  v22[4] = @"alarmSearchStatus";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_alarmSearchStatus, null3}];
  v23[4] = v9;
  v22[5] = @"includeSleepAlarm";
  includeSleepAlarm = self->_includeSleepAlarm;
  null4 = includeSleepAlarm;
  if (!includeSleepAlarm)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null4;
  v22[6] = @"period";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_period];
  v23[6] = v12;
  v22[7] = @"isMeridianInferred";
  isMeridianInferred = self->_isMeridianInferred;
  null5 = isMeridianInferred;
  if (!isMeridianInferred)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[7] = null5;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:8];
  if (!isMeridianInferred)
  {
  }

  if (!includeSleepAlarm)
  {
  }

  if (label)
  {
    if (time)
    {
      goto LABEL_17;
    }

LABEL_22:

    if (identifier)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (!time)
  {
    goto LABEL_22;
  }

LABEL_17:
  if (identifier)
  {
    goto LABEL_18;
  }

LABEL_23:

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAlarmSearch;
  v6 = [(INAlarmSearch *)&v11 description];
  _dictionaryRepresentation = [(INAlarmSearch *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = self->_alarmReferenceType - 1;
  if (v8 > 3)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E72881C0[v8];
  }

  v10 = v9;
  [dictionary if_setObjectIfNonNil:v10 forKey:@"alarmReferenceType"];

  v11 = [encoderCopy encodeObject:self->_identifier];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"identifier"];

  v12 = [encoderCopy encodeObject:self->_time];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"time"];

  v13 = [encoderCopy encodeObject:self->_label];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"label"];

  v14 = self->_alarmSearchStatus - 1;
  if (v14 > 3)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = off_1E7288350[v14];
  }

  v16 = v15;
  [dictionary if_setObjectIfNonNil:v16 forKey:@"alarmSearchStatus"];

  v17 = [encoderCopy encodeObject:self->_includeSleepAlarm];
  [dictionary if_setObjectIfNonNil:v17 forKey:@"includeSleepAlarm"];

  v18 = self->_period - 1;
  if (v18 > 7)
  {
    v19 = @"unknown";
  }

  else
  {
    v19 = off_1E72880B0[v18];
  }

  v20 = v19;
  [dictionary if_setObjectIfNonNil:v20 forKey:@"period"];

  v21 = [encoderCopy encodeObject:self->_isMeridianInferred];

  [dictionary if_setObjectIfNonNil:v21 forKey:@"isMeridianInferred"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  alarmReferenceType = self->_alarmReferenceType;
  coderCopy = coder;
  [coderCopy encodeInteger:alarmReferenceType forKey:@"alarmReferenceType"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_time forKey:@"time"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeInteger:self->_alarmSearchStatus forKey:@"alarmSearchStatus"];
  [coderCopy encodeObject:self->_includeSleepAlarm forKey:@"includeSleepAlarm"];
  [coderCopy encodeInteger:self->_period forKey:@"period"];
  [coderCopy encodeObject:self->_isMeridianInferred forKey:@"isMeridianInferred"];
}

- (INAlarmSearch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"alarmReferenceType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"identifier"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v12 = [coderCopy decodeIntegerForKey:@"alarmSearchStatus"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includeSleepAlarm"];
  v14 = [coderCopy decodeIntegerForKey:@"period"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isMeridianInferred"];

  v16 = [(INAlarmSearch *)self initWithAlarmReferenceType:v5 identifier:v9 time:v10 label:v11 alarmSearchStatus:v12 includeSleepAlarm:v13 period:v14 isMeridianInferred:v15];
  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v11 = 0;
      if (self->_alarmReferenceType == v5->_alarmReferenceType)
      {
        identifier = self->_identifier;
        if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
        {
          time = self->_time;
          if (time == v5->_time || [(INDateComponentsRange *)time isEqual:?])
          {
            label = self->_label;
            if ((label == v5->_label || [(INSpeakableString *)label isEqual:?]) && self->_alarmSearchStatus == v5->_alarmSearchStatus)
            {
              includeSleepAlarm = self->_includeSleepAlarm;
              if ((includeSleepAlarm == v5->_includeSleepAlarm || [(NSNumber *)includeSleepAlarm isEqual:?]) && self->_period == v5->_period)
              {
                isMeridianInferred = self->_isMeridianInferred;
                if (isMeridianInferred == v5->_isMeridianInferred || [(NSNumber *)isMeridianInferred isEqual:?])
                {
                  v11 = 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_alarmReferenceType];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_identifier hash];
  v6 = v5 ^ [(INDateComponentsRange *)self->_time hash];
  v7 = v6 ^ [(INSpeakableString *)self->_label hash]^ v4;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_alarmSearchStatus];
  v9 = [v8 hash];
  v10 = v7 ^ v9 ^ [(NSNumber *)self->_includeSleepAlarm hash];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_period];
  v12 = [v11 hash];
  v13 = v12 ^ [(NSNumber *)self->_isMeridianInferred hash];

  return v10 ^ v13;
}

- (INAlarmSearch)initWithAlarmReferenceType:(int64_t)type identifier:(id)identifier time:(id)time label:(id)label alarmSearchStatus:(int64_t)status includeSleepAlarm:(id)alarm period:(int64_t)period isMeridianInferred:(id)self0
{
  identifierCopy = identifier;
  timeCopy = time;
  labelCopy = label;
  alarmCopy = alarm;
  inferredCopy = inferred;
  v34.receiver = self;
  v34.super_class = INAlarmSearch;
  v21 = [(INAlarmSearch *)&v34 init];
  v22 = v21;
  if (v21)
  {
    v21->_alarmReferenceType = type;
    v23 = [identifierCopy copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [timeCopy copy];
    time = v22->_time;
    v22->_time = v25;

    v27 = [labelCopy copy];
    label = v22->_label;
    v22->_label = v27;

    v22->_alarmSearchStatus = status;
    v29 = [alarmCopy copy];
    includeSleepAlarm = v22->_includeSleepAlarm;
    v22->_includeSleepAlarm = v29;

    v22->_period = period;
    v31 = [inferredCopy copy];
    isMeridianInferred = v22->_isMeridianInferred;
    v22->_isMeridianInferred = v31;
  }

  return v22;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"alarmReferenceType"];
    v25 = INAlarmReferenceTypeWithString(v9);

    v10 = [fromCopy objectForKeyedSubscript:@"identifier"];
    v11 = objc_opt_class();
    v12 = [fromCopy objectForKeyedSubscript:@"time"];
    v13 = [decoderCopy decodeObjectOfClass:v11 from:v12];

    v14 = objc_opt_class();
    v15 = [fromCopy objectForKeyedSubscript:@"label"];
    v16 = [decoderCopy decodeObjectOfClass:v14 from:v15];

    v17 = [fromCopy objectForKeyedSubscript:@"alarmSearchStatus"];
    v18 = INAlarmSearchStatusWithString(v17);

    v19 = [fromCopy objectForKeyedSubscript:@"includeSleepAlarm"];
    v20 = [fromCopy objectForKeyedSubscript:@"period"];
    v21 = INAlarmPeriodWithString(v20);

    v22 = [fromCopy objectForKeyedSubscript:@"isMeridianInferred"];
    v23 = [[self alloc] initWithAlarmReferenceType:v25 identifier:v10 time:v13 label:v16 alarmSearchStatus:v18 includeSleepAlarm:v19 period:v21 isMeridianInferred:v22];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end