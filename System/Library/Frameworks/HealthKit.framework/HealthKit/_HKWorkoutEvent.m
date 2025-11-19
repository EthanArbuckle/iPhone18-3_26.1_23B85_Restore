@interface _HKWorkoutEvent
+ (int64_t)internalEventTypeWithPublicEvent:(id)a3;
- (_HKWorkoutEvent)initWithCoder:(id)a3;
- (_HKWorkoutEvent)initWithEventType:(int64_t)a3 sessionId:(id)a4 dateInterval:(id)a5 metadata:(id)a6;
- (_HKWorkoutEvent)initWithSessionId:(id)a3 error:(id)a4;
- (_HKWorkoutEvent)initWithWorkoutEventType:(int64_t)a3 sessionUUID:(id)a4 dateInterval:(id)a5 metadata:(id)a6 error:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKWorkoutEvent

- (id)description
{
  if (self->_eventType == 4)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"%@: ERROR %@", v5, self->_error];
  }

  else
  {
    if (description_onceToken_0 != -1)
    {
      [_HKWorkoutEvent description];
    }

    v7 = description___formatter;
    v8 = [(NSDateInterval *)self->_dateInterval startDate];
    v5 = [v7 stringFromDate:v8];

    v9 = description___formatter;
    v10 = [(NSDateInterval *)self->_dateInterval endDate];
    v11 = [v9 stringFromDate:v10];

    eventType = self->_eventType;
    if (eventType > 0xB)
    {
      v13 = &stru_1F05FF230;
    }

    else
    {
      v13 = off_1E73848E0[eventType];
    }

    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v6 = [v14 stringWithFormat:@"%@: %@ %@ %@-%@", v16, v13, self->_sessionId, v5, v11];
  }

  return v6;
}

- (_HKWorkoutEvent)initWithEventType:(int64_t)a3 sessionId:(id)a4 dateInterval:(id)a5 metadata:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = _HKWorkoutEvent;
  v14 = [(_HKWorkoutEvent *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_eventType = a3;
    objc_storeStrong(&v14->_sessionId, a4);
    objc_storeStrong(&v15->_dateInterval, a5);
    v16 = [v13 copy];
    metadata = v15->_metadata;
    v15->_metadata = v16;
  }

  return v15;
}

- (_HKWorkoutEvent)initWithSessionId:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _HKWorkoutEvent;
  v9 = [(_HKWorkoutEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_eventType = 4;
    objc_storeStrong(&v9->_sessionId, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

- (_HKWorkoutEvent)initWithWorkoutEventType:(int64_t)a3 sessionUUID:(id)a4 dateInterval:(id)a5 metadata:(id)a6 error:(id)a7
{
  if (a7)
  {
    v7 = [(_HKWorkoutEvent *)self initWithSessionId:a4 error:a7, a5, a6];
  }

  else
  {
    v7 = [(_HKWorkoutEvent *)self initWithEventType:a3 sessionId:a4 dateInterval:a5 metadata:a6];
  }

  v8 = v7;

  return v8;
}

+ (int64_t)internalEventTypeWithPublicEvent:(id)a3
{
  v3 = [a3 type];
  if ((v3 - 2) > 6)
  {
    return 2;
  }

  else
  {
    return qword_191DCE090[v3 - 2];
  }
}

- (void)encodeWithCoder:(id)a3
{
  eventType = self->_eventType;
  v6 = a3;
  [v6 encodeInteger:eventType forKey:@"eventType"];
  [v6 encodeObject:self->_sessionId forKey:@"sessionId"];
  v5 = [(NSDateInterval *)self->_dateInterval startDate];
  [v6 encodeObject:v5 forKey:@"date"];

  [v6 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v6 encodeObject:self->_metadata forKey:@"metadata"];
  [v6 encodeObject:self->_error forKey:@"error"];
}

- (_HKWorkoutEvent)initWithCoder:(id)a3
{
  v24[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _HKWorkoutEvent;
  v5 = [(_HKWorkoutEvent *)&v23 init];
  if (v5)
  {
    v5->_eventType = [v4 decodeIntegerForKey:@"eventType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionId"];
    sessionId = v5->_sessionId;
    v5->_sessionId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v8;

    if (!v5->_dateInterval)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
      if (v10)
      {
        v11 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v10 duration:0.0];
        v12 = v5->_dateInterval;
        v5->_dateInterval = v11;
      }
    }

    v13 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v24[3] = objc_opt_class();
    v24[4] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
    v15 = [v13 setWithArray:v14];

    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"metadata"];
    v17 = [v16 hk_replaceKeysFromSharedStringCache];
    metadata = v5->_metadata;
    v5->_metadata = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

@end