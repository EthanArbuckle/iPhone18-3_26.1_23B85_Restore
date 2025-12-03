@interface SRWristTemperature
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SRWristTemperature)init;
- (SRWristTemperature)initWithCoder:(id)coder;
- (SRWristTemperature)initWithTimestamp:(id)timestamp temperature:(id)temperature condition:(unint64_t)condition errorEstimate:(id)estimate temperatureT1:(id)t1 temperatureT2:(id)t2;
- (id)sr_dictionaryRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRWristTemperature

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogWristTemperature = os_log_create("com.apple.SensorKit", "SRLogWristTemperature");
  }
}

- (SRWristTemperature)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRWristTemperature)initWithTimestamp:(id)timestamp temperature:(id)temperature condition:(unint64_t)condition errorEstimate:(id)estimate temperatureT1:(id)t1 temperatureT2:(id)t2
{
  v16.receiver = self;
  v16.super_class = SRWristTemperature;
  v14 = [(SRWristTemperature *)&v16 init];
  if (v14)
  {
    v14->_timestamp = timestamp;
    v14->_value = temperature;
    v14->_condition = condition;
    v14->_errorEstimate = estimate;
    v14->_temperatureT1 = t1;
    v14->_temperatureT2 = t2;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRWristTemperature;
  [(SRWristTemperature *)&v3 dealloc];
}

- (SRWristTemperature)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v20 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"value"}];
  v9 = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"condition", "unsignedIntegerValue"}];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [coder decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, objc_opt_class(), 0), @"errorEstimate"}];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [coder decodeObjectOfClasses:objc_msgSend(v13 forKey:{"setWithObjects:", v14, objc_opt_class(), 0), @"temperatureT1"}];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [coder decodeObjectOfClasses:objc_msgSend(v16 forKey:{"setWithObjects:", v17, objc_opt_class(), 0), @"temperatureT2"}];

  return [(SRWristTemperature *)self initWithTimestamp:v20 temperature:v8 condition:v9 errorEstimate:v12 temperatureT1:v15 temperatureT2:v18];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:-[SRWristTemperature timestamp](self forKey:{"timestamp"), @"timestamp"}];
  [coder encodeObject:-[SRWristTemperature value](self forKey:{"value"), @"value"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", -[SRWristTemperature condition](self, "condition")), @"condition"}];
  [coder encodeObject:-[SRWristTemperature errorEstimate](self forKey:{"errorEstimate"), @"errorEstimate"}];
  [coder encodeObject:-[SRWristTemperature temperatureT1](self forKey:{"temperatureT1"), @"temperatureT1"}];
  temperatureT2 = [(SRWristTemperature *)self temperatureT2];

  [coder encodeObject:temperatureT2 forKey:@"temperatureT2"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p) {timestamp: %@, value: %@, condition: %lu, errorEstimate: %@}", NSStringFromClass(v4), self, -[SRWristTemperature timestamp](self, "timestamp"), -[SRWristTemperature value](self, "value"), -[SRWristTemperature condition](self, "condition"), -[SRWristTemperature errorEstimate](self, "errorEstimate")];
}

- (id)sr_dictionaryRepresentation
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"timestamp";
  [(NSDate *)[(SRWristTemperature *)self timestamp] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  if (fabs(v4) == INFINITY)
  {
    v6 = @"inf";
  }

  else
  {
    v6 = v5;
  }

  v18[0] = v6;
  v17[1] = @"value";
  [(NSMeasurement *)[(SRWristTemperature *)self value] doubleValue];
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

  v18[1] = v10;
  v17[2] = @"condition";
  v18[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SRWristTemperature condition](self, "condition")}];
  v17[3] = @"errorEstimate";
  [(NSMeasurement *)[(SRWristTemperature *)self errorEstimate] doubleValue];
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

  v18[3] = v14;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = -[NSDate isEqual:](-[SRWristTemperature timestamp](self, "timestamp"), "isEqual:", [equal timestamp]);
  if (!v5)
  {
    return v5;
  }

  v5 = -[NSMeasurement isEqual:](-[SRWristTemperature value](self, "value"), "isEqual:", [equal value]);
  if (!v5)
  {
    return v5;
  }

  condition = [(SRWristTemperature *)self condition];
  if (condition != [equal condition])
  {
LABEL_12:
    LOBYTE(v5) = 0;
    return v5;
  }

  v5 = -[NSMeasurement isEqual:](-[SRWristTemperature errorEstimate](self, "errorEstimate"), "isEqual:", [equal errorEstimate]);
  if (v5)
  {
    v5 = -[NSMeasurement isEqual:](-[SRWristTemperature temperatureT1](self, "temperatureT1"), "isEqual:", [equal temperatureT1]);
    if (v5)
    {
      temperatureT2 = [(SRWristTemperature *)self temperatureT2];
      temperatureT22 = [equal temperatureT2];

      LOBYTE(v5) = [(NSMeasurement *)temperatureT2 isEqual:temperatureT22];
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_timestamp hash];
  v4 = v3 ^ (2 * [(NSMeasurement *)self->_value hash]);
  v5 = v4 ^ (4 * [objc_msgSend(MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_condition), "hash"}]);
  return v5 ^ (8 * [(NSMeasurement *)self->_errorEstimate hash]);
}

@end