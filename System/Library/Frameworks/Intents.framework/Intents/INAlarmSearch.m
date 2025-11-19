@interface INAlarmSearch
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INAlarmSearch)initWithAlarmReferenceType:(int64_t)a3 identifier:(id)a4 time:(id)a5 label:(id)a6 alarmSearchStatus:(int64_t)a7 includeSleepAlarm:(id)a8 period:(int64_t)a9 isMeridianInferred:(id)a10;
- (INAlarmSearch)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v4 = identifier;
  if (!identifier)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v4;
  v23[1] = v4;
  v22[2] = @"time";
  time = self->_time;
  v6 = time;
  if (!time)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v6;
  v23[2] = v6;
  v22[3] = @"label";
  label = self->_label;
  v8 = label;
  if (!label)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v8;
  v22[4] = @"alarmSearchStatus";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_alarmSearchStatus, v8}];
  v23[4] = v9;
  v22[5] = @"includeSleepAlarm";
  includeSleepAlarm = self->_includeSleepAlarm;
  v11 = includeSleepAlarm;
  if (!includeSleepAlarm)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v11;
  v22[6] = @"period";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_period];
  v23[6] = v12;
  v22[7] = @"isMeridianInferred";
  isMeridianInferred = self->_isMeridianInferred;
  v14 = isMeridianInferred;
  if (!isMeridianInferred)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[7] = v14;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAlarmSearch;
  v6 = [(INAlarmSearch *)&v11 description];
  v7 = [(INAlarmSearch *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
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
  [v7 if_setObjectIfNonNil:v10 forKey:@"alarmReferenceType"];

  v11 = [v6 encodeObject:self->_identifier];
  [v7 if_setObjectIfNonNil:v11 forKey:@"identifier"];

  v12 = [v6 encodeObject:self->_time];
  [v7 if_setObjectIfNonNil:v12 forKey:@"time"];

  v13 = [v6 encodeObject:self->_label];
  [v7 if_setObjectIfNonNil:v13 forKey:@"label"];

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
  [v7 if_setObjectIfNonNil:v16 forKey:@"alarmSearchStatus"];

  v17 = [v6 encodeObject:self->_includeSleepAlarm];
  [v7 if_setObjectIfNonNil:v17 forKey:@"includeSleepAlarm"];

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
  [v7 if_setObjectIfNonNil:v20 forKey:@"period"];

  v21 = [v6 encodeObject:self->_isMeridianInferred];

  [v7 if_setObjectIfNonNil:v21 forKey:@"isMeridianInferred"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  alarmReferenceType = self->_alarmReferenceType;
  v5 = a3;
  [v5 encodeInteger:alarmReferenceType forKey:@"alarmReferenceType"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_time forKey:@"time"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeInteger:self->_alarmSearchStatus forKey:@"alarmSearchStatus"];
  [v5 encodeObject:self->_includeSleepAlarm forKey:@"includeSleepAlarm"];
  [v5 encodeInteger:self->_period forKey:@"period"];
  [v5 encodeObject:self->_isMeridianInferred forKey:@"isMeridianInferred"];
}

- (INAlarmSearch)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"alarmReferenceType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"identifier"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v12 = [v4 decodeIntegerForKey:@"alarmSearchStatus"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includeSleepAlarm"];
  v14 = [v4 decodeIntegerForKey:@"period"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isMeridianInferred"];

  v16 = [(INAlarmSearch *)self initWithAlarmReferenceType:v5 identifier:v9 time:v10 label:v11 alarmSearchStatus:v12 includeSleepAlarm:v13 period:v14 isMeridianInferred:v15];
  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INAlarmSearch)initWithAlarmReferenceType:(int64_t)a3 identifier:(id)a4 time:(id)a5 label:(id)a6 alarmSearchStatus:(int64_t)a7 includeSleepAlarm:(id)a8 period:(int64_t)a9 isMeridianInferred:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a10;
  v34.receiver = self;
  v34.super_class = INAlarmSearch;
  v21 = [(INAlarmSearch *)&v34 init];
  v22 = v21;
  if (v21)
  {
    v21->_alarmReferenceType = a3;
    v23 = [v16 copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [v17 copy];
    time = v22->_time;
    v22->_time = v25;

    v27 = [v18 copy];
    label = v22->_label;
    v22->_label = v27;

    v22->_alarmSearchStatus = a7;
    v29 = [v19 copy];
    includeSleepAlarm = v22->_includeSleepAlarm;
    v22->_includeSleepAlarm = v29;

    v22->_period = a9;
    v31 = [v20 copy];
    isMeridianInferred = v22->_isMeridianInferred;
    v22->_isMeridianInferred = v31;
  }

  return v22;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"alarmReferenceType"];
    v25 = INAlarmReferenceTypeWithString(v9);

    v10 = [v8 objectForKeyedSubscript:@"identifier"];
    v11 = objc_opt_class();
    v12 = [v8 objectForKeyedSubscript:@"time"];
    v13 = [v7 decodeObjectOfClass:v11 from:v12];

    v14 = objc_opt_class();
    v15 = [v8 objectForKeyedSubscript:@"label"];
    v16 = [v7 decodeObjectOfClass:v14 from:v15];

    v17 = [v8 objectForKeyedSubscript:@"alarmSearchStatus"];
    v18 = INAlarmSearchStatusWithString(v17);

    v19 = [v8 objectForKeyedSubscript:@"includeSleepAlarm"];
    v20 = [v8 objectForKeyedSubscript:@"period"];
    v21 = INAlarmPeriodWithString(v20);

    v22 = [v8 objectForKeyedSubscript:@"isMeridianInferred"];
    v23 = [[a1 alloc] initWithAlarmReferenceType:v25 identifier:v10 time:v13 label:v16 alarmSearchStatus:v18 includeSleepAlarm:v19 period:v21 isMeridianInferred:v22];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end