@interface SRWristTemperature
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SRWristTemperature)init;
- (SRWristTemperature)initWithCoder:(id)a3;
- (SRWristTemperature)initWithTimestamp:(id)a3 temperature:(id)a4 condition:(unint64_t)a5 errorEstimate:(id)a6 temperatureT1:(id)a7 temperatureT2:(id)a8;
- (id)sr_dictionaryRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRWristTemperature

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogWristTemperature = os_log_create("com.apple.SensorKit", "SRLogWristTemperature");
  }
}

- (SRWristTemperature)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRWristTemperature)initWithTimestamp:(id)a3 temperature:(id)a4 condition:(unint64_t)a5 errorEstimate:(id)a6 temperatureT1:(id)a7 temperatureT2:(id)a8
{
  v16.receiver = self;
  v16.super_class = SRWristTemperature;
  v14 = [(SRWristTemperature *)&v16 init];
  if (v14)
  {
    v14->_timestamp = a3;
    v14->_value = a4;
    v14->_condition = a5;
    v14->_errorEstimate = a6;
    v14->_temperatureT1 = a7;
    v14->_temperatureT2 = a8;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRWristTemperature;
  [(SRWristTemperature *)&v3 dealloc];
}

- (SRWristTemperature)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v20 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"value"}];
  v9 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"condition", "unsignedIntegerValue"}];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [a3 decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, objc_opt_class(), 0), @"errorEstimate"}];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [a3 decodeObjectOfClasses:objc_msgSend(v13 forKey:{"setWithObjects:", v14, objc_opt_class(), 0), @"temperatureT1"}];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [a3 decodeObjectOfClasses:objc_msgSend(v16 forKey:{"setWithObjects:", v17, objc_opt_class(), 0), @"temperatureT2"}];

  return [(SRWristTemperature *)self initWithTimestamp:v20 temperature:v8 condition:v9 errorEstimate:v12 temperatureT1:v15 temperatureT2:v18];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:-[SRWristTemperature timestamp](self forKey:{"timestamp"), @"timestamp"}];
  [a3 encodeObject:-[SRWristTemperature value](self forKey:{"value"), @"value"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", -[SRWristTemperature condition](self, "condition")), @"condition"}];
  [a3 encodeObject:-[SRWristTemperature errorEstimate](self forKey:{"errorEstimate"), @"errorEstimate"}];
  [a3 encodeObject:-[SRWristTemperature temperatureT1](self forKey:{"temperatureT1"), @"temperatureT1"}];
  v6 = [(SRWristTemperature *)self temperatureT2];

  [a3 encodeObject:v6 forKey:@"temperatureT2"];
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
    goto LABEL_12;
  }

  v5 = -[NSDate isEqual:](-[SRWristTemperature timestamp](self, "timestamp"), "isEqual:", [a3 timestamp]);
  if (!v5)
  {
    return v5;
  }

  v5 = -[NSMeasurement isEqual:](-[SRWristTemperature value](self, "value"), "isEqual:", [a3 value]);
  if (!v5)
  {
    return v5;
  }

  v6 = [(SRWristTemperature *)self condition];
  if (v6 != [a3 condition])
  {
LABEL_12:
    LOBYTE(v5) = 0;
    return v5;
  }

  v5 = -[NSMeasurement isEqual:](-[SRWristTemperature errorEstimate](self, "errorEstimate"), "isEqual:", [a3 errorEstimate]);
  if (v5)
  {
    v5 = -[NSMeasurement isEqual:](-[SRWristTemperature temperatureT1](self, "temperatureT1"), "isEqual:", [a3 temperatureT1]);
    if (v5)
    {
      v7 = [(SRWristTemperature *)self temperatureT2];
      v8 = [a3 temperatureT2];

      LOBYTE(v5) = [(NSMeasurement *)v7 isEqual:v8];
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