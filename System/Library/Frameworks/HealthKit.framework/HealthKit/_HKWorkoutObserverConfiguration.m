@interface _HKWorkoutObserverConfiguration
- (_HKWorkoutObserverConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKWorkoutObserverConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutObserverConfiguration;
  v4 = [(HKTaskConfiguration *)&v6 copyWithZone:a3];
  [v4 setReportInactiveSessions:self->_reportInactiveSessions];
  return v4;
}

- (_HKWorkoutObserverConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _HKWorkoutObserverConfiguration;
  v5 = [(HKTaskConfiguration *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_reportInactiveSessions = [v4 decodeBoolForKey:@"reportInactiveSessions"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutObserverConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_reportInactiveSessions forKey:{@"reportInactiveSessions", v5.receiver, v5.super_class}];
}

@end