@interface SRPhotoplethysmogramSample
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPPGSample:(id)sample;
- (SRPhotoplethysmogramSample)init;
- (SRPhotoplethysmogramSample)initWithCoder:(id)coder;
- (SRPhotoplethysmogramSample)initWithHAPPGFrame:(id)frame;
- (SRPhotoplethysmogramSample)initWithStartDate:(id)date nsSinceStart:(int64_t)start usage:(id)usage opticalSamples:(id)samples accelSamples:(id)accelSamples degrees:(id)degrees;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRPhotoplethysmogramSample

- (SRPhotoplethysmogramSample)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRPhotoplethysmogramSample)initWithStartDate:(id)date nsSinceStart:(int64_t)start usage:(id)usage opticalSamples:(id)samples accelSamples:(id)accelSamples degrees:(id)degrees
{
  v16.receiver = self;
  v16.super_class = SRPhotoplethysmogramSample;
  v14 = [(SRPhotoplethysmogramSample *)&v16 init];
  if (v14)
  {
    v14->_startDate = date;
    v14->_nanosecondsSinceStart = start;
    v14->_usage = [usage copy];
    v14->_opticalSamples = samples;
    v14->_accelerometerSamples = accelSamples;
    v14->_temperature = degrees;
  }

  return v14;
}

- (SRPhotoplethysmogramSample)initWithHAPPGFrame:(id)frame
{
  v5 = [MEMORY[0x1E695DEC8] sr_arrayWithHAOpticalSamples:{objc_msgSend(frame, "opticalSamples")}];
  v6 = [MEMORY[0x1E695DEC8] sr_arrayWithHAAccelSamples:{objc_msgSend(frame, "accelSamples")}];
  usage = [frame usage];
  array = [MEMORY[0x1E695DF70] array];
  v9 = array;
  if (usage)
  {
    [array addObject:@"ForegroundHeartRate"];
    if ((usage & 2) == 0)
    {
LABEL_3:
      if ((usage & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((usage & 2) == 0)
  {
    goto LABEL_3;
  }

  [v9 addObject:@"DeepBreathing"];
  if ((usage & 4) == 0)
  {
LABEL_4:
    if ((usage & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v9 addObject:@"ForegroundBloodOxygen"];
  if ((usage & 8) != 0)
  {
LABEL_5:
    [v9 addObject:@"BackgroundSystem"];
  }

LABEL_6:
  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  if ([frame temperatureSample])
  {
    v11 = objc_alloc(MEMORY[0x1E696AD28]);
    [objc_msgSend(frame "temperatureSample")];
    v13 = [v11 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B080] unit:{"celsius"), v12}];
  }

  else
  {
    v13 = 0;
  }

  v14 = -[SRPhotoplethysmogramSample initWithStartDate:nsSinceStart:usage:opticalSamples:accelSamples:degrees:]([SRPhotoplethysmogramSample alloc], "initWithStartDate:nsSinceStart:usage:opticalSamples:accelSamples:degrees:", [frame startDate], objc_msgSend(frame, "timestamp"), v10, v5, v6, v13);
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRPhotoplethysmogramSample;
  [(SRPhotoplethysmogramSample *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SRPhotoplethysmogramSample *)self isEqualToPPGSample:equal];
}

- (BOOL)isEqualToPPGSample:(id)sample
{
  if ((-[SRPhotoplethysmogramSample temperature](self, "temperature") || [sample temperature]) && !-[NSMeasurement isEqual:](-[SRPhotoplethysmogramSample temperature](self, "temperature"), "isEqual:", objc_msgSend(sample, "temperature")))
  {
    return 0;
  }

  if (!-[NSDate isEqualToDate:](-[SRPhotoplethysmogramSample startDate](self, "startDate"), "isEqualToDate:", [sample startDate]))
  {
    return 0;
  }

  nanosecondsSinceStart = [(SRPhotoplethysmogramSample *)self nanosecondsSinceStart];
  if (nanosecondsSinceStart != [sample nanosecondsSinceStart] || !-[NSArray isEqual:](-[SRPhotoplethysmogramSample usage](self, "usage"), "isEqual:", objc_msgSend(sample, "usage")) || !-[NSArray isEqualToArray:](-[SRPhotoplethysmogramSample opticalSamples](self, "opticalSamples"), "isEqualToArray:", objc_msgSend(sample, "opticalSamples")))
  {
    return 0;
  }

  accelerometerSamples = [(SRPhotoplethysmogramSample *)self accelerometerSamples];
  accelerometerSamples2 = [sample accelerometerSamples];

  return [(NSArray *)accelerometerSamples isEqualToArray:accelerometerSamples2];
}

- (unint64_t)hash
{
  v3 = [(NSDate *)[(SRPhotoplethysmogramSample *)self startDate] hash];
  v4 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLongLong:{-[SRPhotoplethysmogramSample nanosecondsSinceStart](self, "nanosecondsSinceStart")), "hash"}];
  v5 = v3 ^ [(NSArray *)[(SRPhotoplethysmogramSample *)self usage] hash];
  v6 = v5 ^ [(NSArray *)[(SRPhotoplethysmogramSample *)self opticalSamples] hash];
  return v4 ^ v6 ^ [(NSArray *)[(SRPhotoplethysmogramSample *)self accelerometerSamples] hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p): startDate: %@, nanosecondsSinceStart: %lld, usage: %@, opticalSamples: %@, accelerometerSamples: %@, temperature: %@", NSStringFromClass(v4), self, -[SRPhotoplethysmogramSample startDate](self, "startDate"), -[SRPhotoplethysmogramSample nanosecondsSinceStart](self, "nanosecondsSinceStart"), -[SRPhotoplethysmogramSample usage](self, "usage"), -[SRPhotoplethysmogramSample opticalSamples](self, "opticalSamples"), -[SRPhotoplethysmogramSample accelerometerSamples](self, "accelerometerSamples"), -[SRPhotoplethysmogramSample temperature](self, "temperature")];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:self->_startDate forKey:@"startDate"];
  [coder encodeInt64:self->_nanosecondsSinceStart forKey:@"nanosecondsSinceStart"];
  [coder encodeObject:self->_usage forKey:@"usage"];
  [coder encodeObject:self->_opticalSamples forKey:@"opticalSamples"];
  [coder encodeObject:self->_accelerometerSamples forKey:@"accelerometerSamples"];
  temperature = self->_temperature;

  [coder encodeObject:temperature forKey:@"temperature"];
}

- (SRPhotoplethysmogramSample)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [coder decodeInt64ForKey:@"nanosecondsSinceStart"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [coder decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, objc_opt_class(), 0), @"usage"}];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [coder decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, objc_opt_class(), 0), @"opticalSamples"}];
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [coder decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithObjects:", v15, objc_opt_class(), 0), @"accelerometerSamples"}];
  v17 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"temperature"];

  return [(SRPhotoplethysmogramSample *)self initWithStartDate:v6 nsSinceStart:v7 usage:v10 opticalSamples:v13 accelSamples:v16 degrees:v17];
}

@end