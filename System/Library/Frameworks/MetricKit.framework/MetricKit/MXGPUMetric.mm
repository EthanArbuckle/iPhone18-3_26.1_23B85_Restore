@interface MXGPUMetric
- (MXGPUMetric)initWithCoder:(id)coder;
- (MXGPUMetric)initWithCumulativeGPUTimeMeasurement:(id)measurement;
- (id)toDictionary;
@end

@implementation MXGPUMetric

- (MXGPUMetric)initWithCumulativeGPUTimeMeasurement:(id)measurement
{
  measurementCopy = measurement;
  v10.receiver = self;
  v10.super_class = MXGPUMetric;
  v6 = [(MXMetric *)&v10 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  [measurementCopy doubleValue];
  if (v7 >= 0.0)
  {
    objc_storeStrong(&v6->_cumulativeGPUTime, measurement);
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (MXGPUMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MXGPUMetric;
  v5 = [(MXMetric *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeGPUTime"];
    cumulativeGPUTime = v5->_cumulativeGPUTime;
    v5->_cumulativeGPUTime = v6;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_cumulativeGPUTime)
  {
    measurementFormatter = [(MXMetric *)self measurementFormatter];
    v5 = [measurementFormatter stringFromMeasurement:self->_cumulativeGPUTime];
    [v3 setObject:v5 forKey:@"cumulativeGPUTime"];
  }

  return v3;
}

@end