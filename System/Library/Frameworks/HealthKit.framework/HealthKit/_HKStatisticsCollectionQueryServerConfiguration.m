@interface _HKStatisticsCollectionQueryServerConfiguration
- (_HKStatisticsCollectionQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKStatisticsCollectionQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKStatisticsCollectionQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setAnchorDate:self->_anchorDate];
  [v4 setOptions:self->_options];
  [v4 setIntervalComponents:self->_intervalComponents];
  [v4 setMergeStrategy:self->_mergeStrategy];
  [v4 setDateInterval:self->_dateInterval];
  [v4 setCacheSettings:self->_cacheSettings];
  return v4;
}

- (_HKStatisticsCollectionQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _HKStatisticsCollectionQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
    anchorDate = v5->_anchorDate;
    v5->_anchorDate = v6;

    v5->_options = [v4 decodeIntegerForKey:@"options"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
    intervalComponents = v5->_intervalComponents;
    v5->_intervalComponents = v8;

    v5->_mergeStrategy = [v4 decodeIntegerForKey:@"mergeStrategy"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheSettings"];
    cacheSettings = v5->_cacheSettings;
    v5->_cacheSettings = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKStatisticsCollectionQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_anchorDate forKey:{@"anchor", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_options forKey:@"options"];
  [v4 encodeObject:self->_intervalComponents forKey:@"interval"];
  [v4 encodeInteger:self->_mergeStrategy forKey:@"mergeStrategy"];
  [v4 encodeObject:self->_cacheSettings forKey:@"cacheSettings"];
  [v4 encodeObject:self->_dateInterval forKey:@"dateInterval"];
}

@end