@interface _HKDeepBreathingSessionConfiguration
+ (id)sessionConfigurationWithStartDate:(id)date sessionDuration:(double)duration inhaleExhaleRatio:(double)ratio respirationsPerMinute:(double)minute;
- (_HKDeepBreathingSessionConfiguration)initWithCoder:(id)coder;
- (id)_initWithStartDate:(id)date sessionDuration:(double)duration inhaleExhaleRatio:(double)ratio respirationsPerMinute:(double)minute;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKDeepBreathingSessionConfiguration

+ (id)sessionConfigurationWithStartDate:(id)date sessionDuration:(double)duration inhaleExhaleRatio:(double)ratio respirationsPerMinute:(double)minute
{
  dateCopy = date;
  v11 = [[self alloc] _initWithStartDate:dateCopy sessionDuration:duration inhaleExhaleRatio:ratio respirationsPerMinute:minute];

  return v11;
}

- (id)_initWithStartDate:(id)date sessionDuration:(double)duration inhaleExhaleRatio:(double)ratio respirationsPerMinute:(double)minute
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = _HKDeepBreathingSessionConfiguration;
  v11 = [(_HKDeepBreathingSessionConfiguration *)&v15 init];
  if (v11)
  {
    v12 = [dateCopy copy];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v11->_sessionDuration = duration;
    v11->_inhaleExhaleRatio = ratio;
    v11->_respirationsPerMinute = minute;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _HKDeepBreathingSessionConfiguration;
  v4 = [(HKTaskConfiguration *)&v8 copyWithZone:zone];
  v5 = [(NSDate *)self->_startDate copy];
  v6 = v4[1];
  v4[1] = v5;

  v4[2] = *&self->_sessionDuration;
  v4[3] = *&self->_inhaleExhaleRatio;
  v4[4] = *&self->_respirationsPerMinute;
  return v4;
}

- (_HKDeepBreathingSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _HKDeepBreathingSessionConfiguration;
  v5 = [(HKTaskConfiguration *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    [coderCopy decodeDoubleForKey:@"sessionDuration"];
    v5->_sessionDuration = v8;
    [coderCopy decodeDoubleForKey:@"inhaleExhaleRatio"];
    v5->_inhaleExhaleRatio = v9;
    [coderCopy decodeDoubleForKey:@"respirationsPerMinute"];
    v5->_respirationsPerMinute = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKDeepBreathingSessionConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_startDate forKey:{@"startDate", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"sessionDuration" forKey:self->_sessionDuration];
  [coderCopy encodeDouble:@"inhaleExhaleRatio" forKey:self->_inhaleExhaleRatio];
  [coderCopy encodeDouble:@"respirationsPerMinute" forKey:self->_respirationsPerMinute];
}

@end