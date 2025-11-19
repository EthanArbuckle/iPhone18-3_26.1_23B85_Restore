@interface _HKDeepBreathingSessionConfiguration
+ (id)sessionConfigurationWithStartDate:(id)a3 sessionDuration:(double)a4 inhaleExhaleRatio:(double)a5 respirationsPerMinute:(double)a6;
- (_HKDeepBreathingSessionConfiguration)initWithCoder:(id)a3;
- (id)_initWithStartDate:(id)a3 sessionDuration:(double)a4 inhaleExhaleRatio:(double)a5 respirationsPerMinute:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKDeepBreathingSessionConfiguration

+ (id)sessionConfigurationWithStartDate:(id)a3 sessionDuration:(double)a4 inhaleExhaleRatio:(double)a5 respirationsPerMinute:(double)a6
{
  v10 = a3;
  v11 = [[a1 alloc] _initWithStartDate:v10 sessionDuration:a4 inhaleExhaleRatio:a5 respirationsPerMinute:a6];

  return v11;
}

- (id)_initWithStartDate:(id)a3 sessionDuration:(double)a4 inhaleExhaleRatio:(double)a5 respirationsPerMinute:(double)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = _HKDeepBreathingSessionConfiguration;
  v11 = [(_HKDeepBreathingSessionConfiguration *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v11->_sessionDuration = a4;
    v11->_inhaleExhaleRatio = a5;
    v11->_respirationsPerMinute = a6;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  startDate = self->_startDate;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sessionDuration];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_inhaleExhaleRatio];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_respirationsPerMinute];
  v9 = [v3 stringWithFormat:@"<%@:%p, startDate:%@, sessionDuration:%@, inhaleExhaleRatio:%@, respirationsPerMinute:%@>", v4, self, startDate, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _HKDeepBreathingSessionConfiguration;
  v4 = [(HKTaskConfiguration *)&v8 copyWithZone:a3];
  v5 = [(NSDate *)self->_startDate copy];
  v6 = v4[1];
  v4[1] = v5;

  v4[2] = *&self->_sessionDuration;
  v4[3] = *&self->_inhaleExhaleRatio;
  v4[4] = *&self->_respirationsPerMinute;
  return v4;
}

- (_HKDeepBreathingSessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _HKDeepBreathingSessionConfiguration;
  v5 = [(HKTaskConfiguration *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    [v4 decodeDoubleForKey:@"sessionDuration"];
    v5->_sessionDuration = v8;
    [v4 decodeDoubleForKey:@"inhaleExhaleRatio"];
    v5->_inhaleExhaleRatio = v9;
    [v4 decodeDoubleForKey:@"respirationsPerMinute"];
    v5->_respirationsPerMinute = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKDeepBreathingSessionConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_startDate forKey:{@"startDate", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"sessionDuration" forKey:self->_sessionDuration];
  [v4 encodeDouble:@"inhaleExhaleRatio" forKey:self->_inhaleExhaleRatio];
  [v4 encodeDouble:@"respirationsPerMinute" forKey:self->_respirationsPerMinute];
}

@end