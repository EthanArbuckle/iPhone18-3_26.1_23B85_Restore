@interface _HKWorkoutObserverConfiguration
- (_HKWorkoutObserverConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKWorkoutObserverConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutObserverConfiguration;
  v4 = [(HKTaskConfiguration *)&v6 copyWithZone:zone];
  [v4 setReportInactiveSessions:self->_reportInactiveSessions];
  return v4;
}

- (_HKWorkoutObserverConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _HKWorkoutObserverConfiguration;
  v5 = [(HKTaskConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_reportInactiveSessions = [coderCopy decodeBoolForKey:@"reportInactiveSessions"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutObserverConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_reportInactiveSessions forKey:{@"reportInactiveSessions", v5.receiver, v5.super_class}];
}

@end