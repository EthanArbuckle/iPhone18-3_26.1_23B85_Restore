@interface SRWristTemperatureSession
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSDate)startDate;
- (NSEnumerator)temperatures;
- (NSString)description;
- (NSString)version;
- (NSTimeInterval)duration;
- (SRWristTemperatureSession)init;
- (SRWristTemperatureSession)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRWristTemperatureSession)initWithCoder:(id)a3;
- (SRWristTemperatureSession)initWithSession:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRWristTemperatureSession

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogWristTemperatureReading = os_log_create("com.apple.SensorKit", "SRLogWristTemperatureReading");
  }
}

- (SRWristTemperatureSession)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRWristTemperatureSession)initWithSession:(id)a3
{
  v6.receiver = self;
  v6.super_class = SRWristTemperatureSession;
  v4 = [(SRWristTemperatureSession *)&v6 init];
  if (v4)
  {
    v4->_healthwristTemperatureSession = a3;
  }

  return v4;
}

- (NSDate)startDate
{
  v2 = [(HAWristTemperatureSession *)self->_healthwristTemperatureSession sessionInterval];

  return [v2 startDate];
}

- (NSTimeInterval)duration
{
  v2 = [(HAWristTemperatureSession *)self->_healthwristTemperatureSession sessionInterval];

  [v2 duration];
  return result;
}

- (NSString)version
{
  result = [(HAWristTemperatureSession *)self->_healthwristTemperatureSession algorithmVersion];
  if (!result)
  {
    return &stru_1F48BB5C0;
  }

  return result;
}

- (void)dealloc
{
  self->_healthwristTemperatureSession = 0;

  v3.receiver = self;
  v3.super_class = SRWristTemperatureSession;
  [(SRWristTemperatureSession *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:-[SRWristTemperatureSession startDate](self forKey:{"startDate"), @"startDate"}];
  if (self)
  {
    dataRepresentation = self->_dataRepresentation;
  }

  else
  {
    dataRepresentation = 0;
  }

  [a3 encodeObject:dataRepresentation forKey:@"dataRepresentation"];
}

- (SRWristTemperatureSession)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"dataRepresentation"];
  if (v7)
  {
    v8 = v7;
    [v6 srAbsoluteTime];

    return [(SRWristTemperatureSession *)self initWithBinarySampleRepresentation:v8 metadata:0 timestamp:?];
  }

  else
  {
    v10 = SRLogWristTemperatureReading;
    if (os_log_type_enabled(SRLogWristTemperatureReading, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to decode data", buf, 2u);
    }

    return 0;
  }
}

- (SRWristTemperatureSession)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (![a3 length])
  {
    goto LABEL_8;
  }

  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v9, a3, 16);
  }

  v10 = [MEMORY[0x1E695DF00] dateWithSRAbsoluteTime:a5];
  v11 = objc_alloc(MEMORY[0x1E69A2B68]);
  v12 = self ? self->_dataRepresentation : 0;
  v13 = [v11 initWithBinarySampleRepresentation:v12 metadata:a4 timestamp:v10];
  if (v13)
  {
    v14 = v13;
    v15 = [(SRWristTemperatureSession *)self initWithSession:v13];

    return v15;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

- (NSEnumerator)temperatures
{
  v2 = [[SRWristTemperatureEnumerator alloc] initWithHAWristTemperatureEnumerator:[(HAWristTemperatureSession *)self->_healthwristTemperatureSession wristTemperatureEnumerator]];

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SRWristTemperatureSession *)self startDate];
  [(SRWristTemperatureSession *)self duration];
  return [v3 stringWithFormat:@"%@ (%p) {start date: %@, duration: %f, version: %@, temperatures: %@}", v5, self, v6, v7, -[SRWristTemperatureSession version](self, "version"), -[SRWristTemperatureSession temperatures](self, "temperatures")];
}

- (id)sr_dictionaryRepresentation
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SRWristTemperatureSession *)self temperatures];
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(NSEnumerator *)v4 nextObject];
    if (!v6)
    {
      break;
    }

    [v3 addObject:{objc_msgSend(v6, "sr_dictionaryRepresentation")}];
    objc_autoreleasePoolPop(v5);
  }

  objc_autoreleasePoolPop(v5);
  v17[0] = @"startDate";
  [(NSDate *)[(SRWristTemperatureSession *)self startDate] timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  if (fabs(v8) == INFINITY)
  {
    v10 = @"inf";
  }

  else
  {
    v10 = v9;
  }

  v18[0] = v10;
  v17[1] = @"duration";
  [(SRWristTemperatureSession *)self duration];
  v12 = v11;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  if (fabs(v12) == INFINITY)
  {
    v14 = @"inf";
  }

  else
  {
    v14 = v13;
  }

  v18[1] = v14;
  v17[2] = @"version";
  v17[3] = @"temperatures";
  v18[2] = [(SRWristTemperatureSession *)self version];
  v18[3] = v3;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v5 = -[NSDate isEqualToDate:](-[SRWristTemperatureSession startDate](self, "startDate"), "isEqualToDate:", [a3 startDate]);
  if (!v5)
  {
    return v5;
  }

  [(SRWristTemperatureSession *)self duration];
  v7 = v6;
  [a3 duration];
  if (v7 != v8)
  {
    goto LABEL_14;
  }

  v5 = -[NSString isEqualToString:](-[SRWristTemperatureSession version](self, "version"), "isEqualToString:", [a3 version]);
  if (!v5)
  {
    return v5;
  }

  v5 = -[NSArray isEqualToArray:](-[NSEnumerator allObjects](-[SRWristTemperatureSession temperatures](self, "temperatures"), "allObjects"), "isEqualToArray:", [objc_msgSend(a3 "temperatures")]);
  if (!v5)
  {
    return v5;
  }

  [(SRWristTemperatureSession *)self a0CorrectionCoefficient];
  v10 = v9;
  [a3 a0CorrectionCoefficient];
  if (v10 != v11 || (-[SRWristTemperatureSession c0CorrectionCoefficient](self, "c0CorrectionCoefficient"), v13 = v12, [a3 c0CorrectionCoefficient], v13 != v14) || (-[SRWristTemperatureSession c0UserDeviceCorrectionCoefficient](self, "c0UserDeviceCorrectionCoefficient"), v16 = v15, objc_msgSend(a3, "c0UserDeviceCorrectionCoefficient"), v16 != v17))
  {
LABEL_14:
    LOBYTE(v5) = 0;
    return v5;
  }

  v5 = -[NSMeasurement isEqual:](-[SRWristTemperatureSession meanQuiescentPower](self, "meanQuiescentPower"), "isEqual:", [a3 meanQuiescentPower]);
  if (v5)
  {
    v18 = [(SRWristTemperatureSession *)self standardDeviationQuiescentPower];
    v19 = [a3 standardDeviationQuiescentPower];

    LOBYTE(v5) = [(NSMeasurement *)v18 isEqual:v19];
  }

  return v5;
}

@end