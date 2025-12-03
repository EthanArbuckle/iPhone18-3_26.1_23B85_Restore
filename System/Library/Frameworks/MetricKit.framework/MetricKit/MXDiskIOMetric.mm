@interface MXDiskIOMetric
- (MXDiskIOMetric)initWithCoder:(id)coder;
- (MXDiskIOMetric)initWithCumulativeLogicalWritesMeasurement:(id)measurement;
- (id)toDictionary;
@end

@implementation MXDiskIOMetric

- (MXDiskIOMetric)initWithCumulativeLogicalWritesMeasurement:(id)measurement
{
  measurementCopy = measurement;
  v10.receiver = self;
  v10.super_class = MXDiskIOMetric;
  v6 = [(MXMetric *)&v10 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  [measurementCopy doubleValue];
  if (v7 >= 0.0)
  {
    objc_storeStrong(&v6->_cumulativeLogicalWrites, measurement);
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (MXDiskIOMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MXDiskIOMetric;
  v5 = [(MXMetric *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeLogicalWrites"];
    cumulativeLogicalWrites = v5->_cumulativeLogicalWrites;
    v5->_cumulativeLogicalWrites = v6;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_cumulativeLogicalWrites)
  {
    measurementFormatter = [(MXMetric *)self measurementFormatter];
    v5 = [measurementFormatter stringFromMeasurement:self->_cumulativeLogicalWrites];
    [v3 setObject:v5 forKey:@"cumulativeLogicalWrites"];
  }

  return v3;
}

@end