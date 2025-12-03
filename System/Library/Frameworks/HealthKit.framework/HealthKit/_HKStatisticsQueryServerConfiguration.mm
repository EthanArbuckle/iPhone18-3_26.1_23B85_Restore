@interface _HKStatisticsQueryServerConfiguration
- (_HKStatisticsQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKStatisticsQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKStatisticsQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setOptions:self->_options];
  [v4 setMergeStrategy:self->_mergeStrategy];
  [v4 setDateInterval:self->_dateInterval];
  return v4;
}

- (_HKStatisticsQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HKStatisticsQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
    v5->_mergeStrategy = [coderCopy decodeIntegerForKey:@"mergeStrategy"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKStatisticsQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_options forKey:{@"options", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_mergeStrategy forKey:@"mergeStrategy"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
}

@end