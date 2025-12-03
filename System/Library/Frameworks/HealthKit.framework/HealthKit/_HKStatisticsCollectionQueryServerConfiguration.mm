@interface _HKStatisticsCollectionQueryServerConfiguration
- (_HKStatisticsCollectionQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKStatisticsCollectionQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKStatisticsCollectionQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setAnchorDate:self->_anchorDate];
  [v4 setOptions:self->_options];
  [v4 setIntervalComponents:self->_intervalComponents];
  [v4 setMergeStrategy:self->_mergeStrategy];
  [v4 setDateInterval:self->_dateInterval];
  [v4 setCacheSettings:self->_cacheSettings];
  return v4;
}

- (_HKStatisticsCollectionQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _HKStatisticsCollectionQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
    anchorDate = v5->_anchorDate;
    v5->_anchorDate = v6;

    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
    intervalComponents = v5->_intervalComponents;
    v5->_intervalComponents = v8;

    v5->_mergeStrategy = [coderCopy decodeIntegerForKey:@"mergeStrategy"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheSettings"];
    cacheSettings = v5->_cacheSettings;
    v5->_cacheSettings = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKStatisticsCollectionQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_anchorDate forKey:{@"anchor", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
  [coderCopy encodeObject:self->_intervalComponents forKey:@"interval"];
  [coderCopy encodeInteger:self->_mergeStrategy forKey:@"mergeStrategy"];
  [coderCopy encodeObject:self->_cacheSettings forKey:@"cacheSettings"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
}

@end