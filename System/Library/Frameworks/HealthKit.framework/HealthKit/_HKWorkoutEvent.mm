@interface _HKWorkoutEvent
+ (int64_t)internalEventTypeWithPublicEvent:(id)event;
- (_HKWorkoutEvent)initWithCoder:(id)coder;
- (_HKWorkoutEvent)initWithEventType:(int64_t)type sessionId:(id)id dateInterval:(id)interval metadata:(id)metadata;
- (_HKWorkoutEvent)initWithSessionId:(id)id error:(id)error;
- (_HKWorkoutEvent)initWithWorkoutEventType:(int64_t)type sessionUUID:(id)d dateInterval:(id)interval metadata:(id)metadata error:(id)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
    startDate = [(NSDateInterval *)self->_dateInterval startDate];
    v5 = [v7 stringFromDate:startDate];

    v9 = description___formatter;
    endDate = [(NSDateInterval *)self->_dateInterval endDate];
    v11 = [v9 stringFromDate:endDate];

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

- (_HKWorkoutEvent)initWithEventType:(int64_t)type sessionId:(id)id dateInterval:(id)interval metadata:(id)metadata
{
  idCopy = id;
  intervalCopy = interval;
  metadataCopy = metadata;
  v19.receiver = self;
  v19.super_class = _HKWorkoutEvent;
  v14 = [(_HKWorkoutEvent *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_eventType = type;
    objc_storeStrong(&v14->_sessionId, id);
    objc_storeStrong(&v15->_dateInterval, interval);
    v16 = [metadataCopy copy];
    metadata = v15->_metadata;
    v15->_metadata = v16;
  }

  return v15;
}

- (_HKWorkoutEvent)initWithSessionId:(id)id error:(id)error
{
  idCopy = id;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = _HKWorkoutEvent;
  v9 = [(_HKWorkoutEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_eventType = 4;
    objc_storeStrong(&v9->_sessionId, id);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

- (_HKWorkoutEvent)initWithWorkoutEventType:(int64_t)type sessionUUID:(id)d dateInterval:(id)interval metadata:(id)metadata error:(id)error
{
  if (error)
  {
    metadata = [(_HKWorkoutEvent *)self initWithSessionId:d error:error, interval, metadata];
  }

  else
  {
    metadata = [(_HKWorkoutEvent *)self initWithEventType:type sessionId:d dateInterval:interval metadata:metadata];
  }

  v8 = metadata;

  return v8;
}

+ (int64_t)internalEventTypeWithPublicEvent:(id)event
{
  type = [event type];
  if ((type - 2) > 6)
  {
    return 2;
  }

  else
  {
    return qword_191DCE090[type - 2];
  }
}

- (void)encodeWithCoder:(id)coder
{
  eventType = self->_eventType;
  coderCopy = coder;
  [coderCopy encodeInteger:eventType forKey:@"eventType"];
  [coderCopy encodeObject:self->_sessionId forKey:@"sessionId"];
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  [coderCopy encodeObject:startDate forKey:@"date"];

  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
}

- (_HKWorkoutEvent)initWithCoder:(id)coder
{
  v24[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = _HKWorkoutEvent;
  v5 = [(_HKWorkoutEvent *)&v23 init];
  if (v5)
  {
    v5->_eventType = [coderCopy decodeIntegerForKey:@"eventType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionId"];
    sessionId = v5->_sessionId;
    v5->_sessionId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v8;

    if (!v5->_dateInterval)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
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

    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"metadata"];
    hk_replaceKeysFromSharedStringCache = [v16 hk_replaceKeysFromSharedStringCache];
    metadata = v5->_metadata;
    v5->_metadata = hk_replaceKeysFromSharedStringCache;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

@end