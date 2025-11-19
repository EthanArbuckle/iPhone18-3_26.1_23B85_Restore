@interface _HKStatisticsQueryServerConfiguration
- (_HKStatisticsQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKStatisticsQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKStatisticsQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setOptions:self->_options];
  [v4 setMergeStrategy:self->_mergeStrategy];
  [v4 setDateInterval:self->_dateInterval];
  return v4;
}

- (_HKStatisticsQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HKStatisticsQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_options = [v4 decodeIntegerForKey:@"options"];
    v5->_mergeStrategy = [v4 decodeIntegerForKey:@"mergeStrategy"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKStatisticsQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_options forKey:{@"options", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_mergeStrategy forKey:@"mergeStrategy"];
  [v4 encodeObject:self->_dateInterval forKey:@"dateInterval"];
}

@end