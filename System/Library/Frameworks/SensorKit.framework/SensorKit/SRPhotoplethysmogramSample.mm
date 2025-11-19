@interface SRPhotoplethysmogramSample
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPPGSample:(id)a3;
- (SRPhotoplethysmogramSample)init;
- (SRPhotoplethysmogramSample)initWithCoder:(id)a3;
- (SRPhotoplethysmogramSample)initWithHAPPGFrame:(id)a3;
- (SRPhotoplethysmogramSample)initWithStartDate:(id)a3 nsSinceStart:(int64_t)a4 usage:(id)a5 opticalSamples:(id)a6 accelSamples:(id)a7 degrees:(id)a8;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRPhotoplethysmogramSample

- (SRPhotoplethysmogramSample)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRPhotoplethysmogramSample)initWithStartDate:(id)a3 nsSinceStart:(int64_t)a4 usage:(id)a5 opticalSamples:(id)a6 accelSamples:(id)a7 degrees:(id)a8
{
  v16.receiver = self;
  v16.super_class = SRPhotoplethysmogramSample;
  v14 = [(SRPhotoplethysmogramSample *)&v16 init];
  if (v14)
  {
    v14->_startDate = a3;
    v14->_nanosecondsSinceStart = a4;
    v14->_usage = [a5 copy];
    v14->_opticalSamples = a6;
    v14->_accelerometerSamples = a7;
    v14->_temperature = a8;
  }

  return v14;
}

- (SRPhotoplethysmogramSample)initWithHAPPGFrame:(id)a3
{
  v5 = [MEMORY[0x1E695DEC8] sr_arrayWithHAOpticalSamples:{objc_msgSend(a3, "opticalSamples")}];
  v6 = [MEMORY[0x1E695DEC8] sr_arrayWithHAAccelSamples:{objc_msgSend(a3, "accelSamples")}];
  v7 = [a3 usage];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = v8;
  if (v7)
  {
    [v8 addObject:@"ForegroundHeartRate"];
    if ((v7 & 2) == 0)
    {
LABEL_3:
      if ((v7 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v9 addObject:@"DeepBreathing"];
  if ((v7 & 4) == 0)
  {
LABEL_4:
    if ((v7 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v9 addObject:@"ForegroundBloodOxygen"];
  if ((v7 & 8) != 0)
  {
LABEL_5:
    [v9 addObject:@"BackgroundSystem"];
  }

LABEL_6:
  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  if ([a3 temperatureSample])
  {
    v11 = objc_alloc(MEMORY[0x1E696AD28]);
    [objc_msgSend(a3 "temperatureSample")];
    v13 = [v11 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B080] unit:{"celsius"), v12}];
  }

  else
  {
    v13 = 0;
  }

  v14 = -[SRPhotoplethysmogramSample initWithStartDate:nsSinceStart:usage:opticalSamples:accelSamples:degrees:]([SRPhotoplethysmogramSample alloc], "initWithStartDate:nsSinceStart:usage:opticalSamples:accelSamples:degrees:", [a3 startDate], objc_msgSend(a3, "timestamp"), v10, v5, v6, v13);
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRPhotoplethysmogramSample;
  [(SRPhotoplethysmogramSample *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SRPhotoplethysmogramSample *)self isEqualToPPGSample:a3];
}

- (BOOL)isEqualToPPGSample:(id)a3
{
  if ((-[SRPhotoplethysmogramSample temperature](self, "temperature") || [a3 temperature]) && !-[NSMeasurement isEqual:](-[SRPhotoplethysmogramSample temperature](self, "temperature"), "isEqual:", objc_msgSend(a3, "temperature")))
  {
    return 0;
  }

  if (!-[NSDate isEqualToDate:](-[SRPhotoplethysmogramSample startDate](self, "startDate"), "isEqualToDate:", [a3 startDate]))
  {
    return 0;
  }

  v5 = [(SRPhotoplethysmogramSample *)self nanosecondsSinceStart];
  if (v5 != [a3 nanosecondsSinceStart] || !-[NSArray isEqual:](-[SRPhotoplethysmogramSample usage](self, "usage"), "isEqual:", objc_msgSend(a3, "usage")) || !-[NSArray isEqualToArray:](-[SRPhotoplethysmogramSample opticalSamples](self, "opticalSamples"), "isEqualToArray:", objc_msgSend(a3, "opticalSamples")))
  {
    return 0;
  }

  v6 = [(SRPhotoplethysmogramSample *)self accelerometerSamples];
  v7 = [a3 accelerometerSamples];

  return [(NSArray *)v6 isEqualToArray:v7];
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

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:self->_startDate forKey:@"startDate"];
  [a3 encodeInt64:self->_nanosecondsSinceStart forKey:@"nanosecondsSinceStart"];
  [a3 encodeObject:self->_usage forKey:@"usage"];
  [a3 encodeObject:self->_opticalSamples forKey:@"opticalSamples"];
  [a3 encodeObject:self->_accelerometerSamples forKey:@"accelerometerSamples"];
  temperature = self->_temperature;

  [a3 encodeObject:temperature forKey:@"temperature"];
}

- (SRPhotoplethysmogramSample)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [a3 decodeInt64ForKey:@"nanosecondsSinceStart"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [a3 decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, objc_opt_class(), 0), @"usage"}];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [a3 decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, objc_opt_class(), 0), @"opticalSamples"}];
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [a3 decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithObjects:", v15, objc_opt_class(), 0), @"accelerometerSamples"}];
  v17 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"temperature"];

  return [(SRPhotoplethysmogramSample *)self initWithStartDate:v6 nsSinceStart:v7 usage:v10 opticalSamples:v13 accelSamples:v16 degrees:v17];
}

@end