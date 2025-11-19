@interface MXDiskIOMetric
- (MXDiskIOMetric)initWithCoder:(id)a3;
- (MXDiskIOMetric)initWithCumulativeLogicalWritesMeasurement:(id)a3;
- (id)toDictionary;
@end

@implementation MXDiskIOMetric

- (MXDiskIOMetric)initWithCumulativeLogicalWritesMeasurement:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MXDiskIOMetric;
  v6 = [(MXMetric *)&v10 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  [v5 doubleValue];
  if (v7 >= 0.0)
  {
    objc_storeStrong(&v6->_cumulativeLogicalWrites, a3);
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (MXDiskIOMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MXDiskIOMetric;
  v5 = [(MXMetric *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeLogicalWrites"];
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
    v4 = [(MXMetric *)self measurementFormatter];
    v5 = [v4 stringFromMeasurement:self->_cumulativeLogicalWrites];
    [v3 setObject:v5 forKey:@"cumulativeLogicalWrites"];
  }

  return v3;
}

@end