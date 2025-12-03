@interface MXMemoryMetric
- (MXMemoryMetric)initWithCoder:(id)coder;
- (MXMemoryMetric)initWithPeakMemoryUsageMeasurement:(id)measurement averageMemoryUsageMeasurement:(id)usageMeasurement;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXMemoryMetric

- (MXMemoryMetric)initWithPeakMemoryUsageMeasurement:(id)measurement averageMemoryUsageMeasurement:(id)usageMeasurement
{
  measurementCopy = measurement;
  usageMeasurementCopy = usageMeasurement;
  v16.receiver = self;
  v16.super_class = MXMemoryMetric;
  v9 = [(MXMetric *)&v16 init];
  if (!v9)
  {
    goto LABEL_6;
  }

  [measurementCopy doubleValue];
  if (v10 >= 0.0)
  {
    averageMeasurement = [usageMeasurementCopy averageMeasurement];
    [averageMeasurement doubleValue];
    v13 = v12;

    if (v13 >= 0.0)
    {
      objc_storeStrong(&v9->_peakMemoryUsage, measurement);
      objc_storeStrong(&v9->_averageSuspendedMemory, usageMeasurement);
LABEL_6:
      v14 = v9;
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  peakMemoryUsage = self->_peakMemoryUsage;
  coderCopy = coder;
  [coderCopy encodeObject:peakMemoryUsage forKey:@"peakMemoryUsage"];
  [coderCopy encodeObject:self->_averageSuspendedMemory forKey:@"averageSuspendedMemory"];
}

- (MXMemoryMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MXMemoryMetric;
  v5 = [(MXMetric *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peakMemoryUsage"];
    peakMemoryUsage = v5->_peakMemoryUsage;
    v5->_peakMemoryUsage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageSuspendedMemory"];
    averageSuspendedMemory = v5->_averageSuspendedMemory;
    v5->_averageSuspendedMemory = v8;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_peakMemoryUsage)
  {
    measurementFormatter = [(MXMetric *)self measurementFormatter];
    v5 = [measurementFormatter stringFromMeasurement:self->_peakMemoryUsage];
    [v3 setObject:v5 forKey:@"peakMemoryUsage"];
  }

  averageSuspendedMemory = self->_averageSuspendedMemory;
  if (averageSuspendedMemory)
  {
    toDictionary = [(MXAverage *)averageSuspendedMemory toDictionary];
    [v3 setObject:toDictionary forKey:@"averageSuspendedMemory"];
  }

  return v3;
}

@end