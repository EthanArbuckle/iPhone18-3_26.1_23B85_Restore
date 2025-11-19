@interface _HKQuantityDistributionQueryServerConfiguration
- (_HKQuantityDistributionQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKQuantityDistributionQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKQuantityDistributionQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setStartDate:self->_startDate];
  [v4 setEndDate:self->_endDate];
  [v4 setContextStyle:self->_contextStyle];
  [v4 setAnchorDate:self->_anchorDate];
  [v4 setIntervalComponents:self->_intervalComponents];
  [v4 setHistogramAnchor:self->_histogramAnchor];
  [v4 setHistogramBucketSize:self->_histogramBucketSize];
  [v4 setOptions:self->_options];
  return v4;
}

- (_HKQuantityDistributionQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _HKQuantityDistributionQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startConfigDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endConfigDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v5->_contextStyle = [v4 decodeIntegerForKey:@"contextStyleKey"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchorDate"];
    anchorDate = v5->_anchorDate;
    v5->_anchorDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intervalComponents"];
    intervalComponents = v5->_intervalComponents;
    v5->_intervalComponents = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"histogramAnchor"];
    histogramAnchor = v5->_histogramAnchor;
    v5->_histogramAnchor = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"histogramBucketSize"];
    histogramBucketSize = v5->_histogramBucketSize;
    v5->_histogramBucketSize = v16;

    v5->_options = [v4 decodeIntegerForKey:@"optionsKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKQuantityDistributionQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_startDate forKey:{@"startConfigDate", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_endDate forKey:@"endConfigDate"];
  [v4 encodeInteger:self->_contextStyle forKey:@"contextStyleKey"];
  [v4 encodeObject:self->_anchorDate forKey:@"anchorDate"];
  [v4 encodeObject:self->_intervalComponents forKey:@"intervalComponents"];
  [v4 encodeObject:self->_histogramAnchor forKey:@"histogramAnchor"];
  [v4 encodeObject:self->_histogramBucketSize forKey:@"histogramBucketSize"];
  [v4 encodeInteger:self->_options forKey:@"optionsKey"];
}

@end