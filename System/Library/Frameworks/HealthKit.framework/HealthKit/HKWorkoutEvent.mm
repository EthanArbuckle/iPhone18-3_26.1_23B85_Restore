@interface HKWorkoutEvent
+ (HKWorkoutEvent)workoutEventWithType:(HKWorkoutEventType)type date:(NSDate *)date;
+ (HKWorkoutEvent)workoutEventWithType:(HKWorkoutEventType)type date:(NSDate *)date metadata:(NSDictionary *)metadata;
+ (HKWorkoutEvent)workoutEventWithType:(HKWorkoutEventType)type dateInterval:(NSDateInterval *)dateInterval metadata:(NSDictionary *)metadata;
+ (id)_newWorkoutEventWithType:(int64_t)type dateInterval:(id)interval metadata:(id)metadata;
+ (id)_unvalidatedWorkoutEventWithType:(int64_t)type dateInterval:(id)interval metadata:(id)metadata;
+ (id)_workoutEventWithInternalEvent:(id)event;
+ (id)_workoutEventWithType:(int64_t)type date:(id)date metadata:(id)metadata;
+ (id)_workoutEventWithType:(int64_t)type dateInterval:(id)interval metadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (HKWorkoutEvent)init;
- (HKWorkoutEvent)initWithCoder:(id)coder;
- (HKWorkoutEvent)initWithWorkoutEventType:(int64_t)type sessionUUID:(id)d dateInterval:(id)interval metadata:(id)metadata error:(id)error;
- (NSDate)date;
- (id)_init;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)_assertPropertiesValid;
- (void)_setWorkoutEventMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutEvent

uint64_t __30___HKWorkoutEvent_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = description___formatter;
  description___formatter = v0;

  v2 = description___formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

+ (id)_newWorkoutEventWithType:(int64_t)type dateInterval:(id)interval metadata:(id)metadata
{
  metadataCopy = metadata;
  intervalCopy = interval;
  _init = [[HKWorkoutEvent alloc] _init];
  _init[1] = type;
  v10 = [intervalCopy copy];

  v11 = _init[2];
  _init[2] = v10;

  if (metadataCopy)
  {
    v12 = [metadataCopy copy];
    v13 = _init[3];
    _init[3] = v12;
  }

  return _init;
}

+ (id)_workoutEventWithType:(int64_t)type date:(id)date metadata:(id)metadata
{
  v8 = MEMORY[0x1E696AB80];
  metadataCopy = metadata;
  dateCopy = date;
  v11 = [[v8 alloc] initWithStartDate:dateCopy duration:0.0];

  v12 = [self _newWorkoutEventWithType:type dateInterval:v11 metadata:metadataCopy];
  v13 = HKDefaultObjectValidationConfiguration();
  v15 = [v12 _validateWithConfiguration:{v13, v14}];

  if (v15)
  {

    v12 = 0;
  }

  return v12;
}

+ (id)_workoutEventWithType:(int64_t)type dateInterval:(id)interval metadata:(id)metadata
{
  v5 = [self _newWorkoutEventWithType:type dateInterval:interval metadata:metadata];
  v6 = HKDefaultObjectValidationConfiguration();
  v8 = [v5 _validateWithConfiguration:{v6, v7}];

  if (v8)
  {

    v5 = 0;
  }

  return v5;
}

+ (id)_workoutEventWithInternalEvent:(id)event
{
  eventCopy = event;
  _init = [[HKWorkoutEvent alloc] _init];
  eventType = [eventCopy eventType];
  v6 = 0;
  if (eventType > 6)
  {
    if (eventType > 9)
    {
      if ((eventType - 11) < 4)
      {
        goto LABEL_23;
      }

      if (eventType != 10)
      {
        goto LABEL_22;
      }

      v7 = 8;
    }

    else if (eventType == 7)
    {
      v7 = 5;
    }

    else if (eventType == 8)
    {
      v7 = 6;
    }

    else
    {
      v7 = 7;
    }

    goto LABEL_21;
  }

  if (eventType > 3)
  {
    if (eventType == 4)
    {
      goto LABEL_23;
    }

    if (eventType == 5)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    goto LABEL_21;
  }

  if (eventType < 2)
  {
    goto LABEL_23;
  }

  if (eventType == 2)
  {
    v7 = 1;
    goto LABEL_21;
  }

  if (eventType == 3)
  {
    v7 = 2;
LABEL_21:
    _init[1] = v7;
  }

LABEL_22:
  dateInterval = [eventCopy dateInterval];
  v9 = [dateInterval copy];
  v10 = _init[2];
  _init[2] = v9;

  metadata = [eventCopy metadata];
  v12 = [metadata copy];
  v13 = _init[3];
  _init[3] = v12;

  v6 = _init;
LABEL_23:

  return v6;
}

+ (id)_unvalidatedWorkoutEventWithType:(int64_t)type dateInterval:(id)interval metadata:(id)metadata
{
  v5 = [self _newWorkoutEventWithType:type dateInterval:interval metadata:metadata];

  return v5;
}

+ (HKWorkoutEvent)workoutEventWithType:(HKWorkoutEventType)type date:(NSDate *)date
{
  v6 = MEMORY[0x1E696AB80];
  v7 = date;
  v8 = [[v6 alloc] initWithStartDate:v7 duration:0.0];

  v9 = [self _newWorkoutEventWithType:type dateInterval:v8 metadata:0];
  [v9 _assertPropertiesValid];

  return v9;
}

+ (HKWorkoutEvent)workoutEventWithType:(HKWorkoutEventType)type date:(NSDate *)date metadata:(NSDictionary *)metadata
{
  v7 = MEMORY[0x1E696AB80];
  v8 = date;
  v9 = [[v7 alloc] initWithStartDate:v8 duration:0.0];

  v10 = [self _newWorkoutEventWithType:type dateInterval:v9 metadata:0];
  [v10 _assertPropertiesValid];

  return v10;
}

+ (HKWorkoutEvent)workoutEventWithType:(HKWorkoutEventType)type dateInterval:(NSDateInterval *)dateInterval metadata:(NSDictionary *)metadata
{
  v5 = [self _newWorkoutEventWithType:type dateInterval:dateInterval metadata:metadata];
  [v5 _assertPropertiesValid];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _HKWorkoutEventTypeName(self->_type);
  v5 = [v3 stringWithFormat:@"%@, %@", v4, self->_dateInterval];

  if ([(NSDictionary *)self->_metadata count])
  {
    v6 = [v5 stringByAppendingFormat:@" %@", self->_metadata];

    v5 = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v7 = equalCopy[3];
    v8 = [(NSDictionary *)self->_metadata count];
    v6 = v8 == [v7 count] && ((metadata = self->_metadata) == 0 || !v7 || -[NSDictionary isEqualToDictionary:](metadata, "isEqualToDictionary:", v7)) && equalCopy[1] == self->_type && -[NSDateInterval isEqualToDateInterval:](self->_dateInterval, "isEqualToDateInterval:", equalCopy[2]);
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDateInterval *)self->_dateInterval hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v5 = [v4 hash] ^ v3;

  if ([(NSDictionary *)self->_metadata count])
  {
    v5 ^= [(NSDictionary *)self->_metadata hash];
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  dateInterval = [compareCopy dateInterval];
  startDate2 = [dateInterval startDate];
  v8 = [startDate compare:startDate2];

  if (!v8)
  {
    endDate = [(NSDateInterval *)self->_dateInterval endDate];
    dateInterval2 = [compareCopy dateInterval];
    endDate2 = [dateInterval2 endDate];
    v8 = [endDate compare:endDate2];

    if (!v8)
    {
      type = self->_type;
      if (type == [compareCopy type])
      {
        v8 = 0;
      }

      else
      {
        v13 = self->_type;
        if (v13 < [compareCopy type])
        {
          v8 = -1;
        }

        else
        {
          v8 = 1;
        }
      }
    }
  }

  return v8;
}

- (void)_setWorkoutEventMetadata:(id)metadata
{
  v4 = [metadata copy];
  metadata = self->_metadata;
  self->_metadata = v4;

  MEMORY[0x1EEE66BB8](v4, metadata);
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKWorkoutEvent;
  return [(HKWorkoutEvent *)&v3 init];
}

- (HKWorkoutEvent)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKWorkoutEvent)initWithWorkoutEventType:(int64_t)type sessionUUID:(id)d dateInterval:(id)interval metadata:(id)metadata error:(id)error
{
  v8 = [HKWorkoutEvent _unvalidatedWorkoutEventWithType:type dateInterval:interval metadata:metadata];

  return v8;
}

- (NSDate)date
{
  type = self->_type;
  dateInterval = self->_dateInterval;
  if (type == 3)
  {
    [(NSDateInterval *)dateInterval endDate];
  }

  else
  {
    [(NSDateInterval *)dateInterval startDate];
  }
  v4 = ;

  return v4;
}

- (void)_assertPropertiesValid
{
  v3 = HKDefaultObjectValidationConfiguration();
  v5 = [(HKWorkoutEvent *)self _validateWithConfiguration:v3, v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v9 = v5;
    localizedDescription = [v5 localizedDescription];
    [v6 raise:v7 format:{@"%@", localizedDescription}];

    v5 = v9;
  }
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  if ((self->_type - 1) >= 8)
  {
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Invalid type (%ld)", self->_type}];
    v14 = LABEL_9:;
    goto LABEL_10;
  }

  dateInterval = self->_dateInterval;
  if (!dateInterval)
  {
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Workout event date interval cannot be nil", v19}];
    goto LABEL_9;
  }

  var1 = configuration.var1;
  var0 = configuration.var0;
  [(NSDateInterval *)dateInterval duration];
  type = self->_type;
  if (type > 8)
  {
LABEL_6:
    v11 = MEMORY[0x1E696ABC0];
    v12 = objc_opt_class();
    v13 = _HKWorkoutEventTypeName(self->_type);
    v14 = [v11 hk_errorForInvalidArgument:@"@" class:v12 selector:a2 format:{@"Invalid date interval duration for type %@", v13}];

    goto LABEL_10;
  }

  v10 = fabs(v8);
  if (((1 << type) & 0x176) != 0)
  {
    if (v10 >= 2.22044605e-16)
    {
      goto LABEL_6;
    }
  }

  else if (type != 3 && (type != 7 || v10 < 2.22044605e-16))
  {
    goto LABEL_6;
  }

  if ((var0 & 4) != 0)
  {
    v18 = 0;
    goto LABEL_20;
  }

  metadata = self->_metadata;
  v20 = 0;
  v17 = [(NSDictionary *)metadata hk_validateMetadataKeysAndValuesForWorkoutEvent:self applicationSDKVersionToken:var1 error:&v20];
  v18 = v20;
  if (v17)
  {
LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  v18 = v18;
  v14 = v18;
LABEL_21:

LABEL_10:

  return v14;
}

- (HKWorkoutEvent)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  if (!v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 duration:0.0];
  }

  v8 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:5];
  v10 = [v8 setWithArray:{v9, v16, v17, v18, v19}];

  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"metadata"];
  hk_replaceKeysFromSharedStringCache = [v11 hk_replaceKeysFromSharedStringCache];

  v13 = [objc_opt_class() _unvalidatedWorkoutEventWithType:v5 dateInterval:v6 metadata:hk_replaceKeysFromSharedStringCache];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
}

@end