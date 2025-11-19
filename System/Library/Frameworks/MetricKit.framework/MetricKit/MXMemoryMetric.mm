@interface MXMemoryMetric
- (MXMemoryMetric)initWithCoder:(id)a3;
- (MXMemoryMetric)initWithPeakMemoryUsageMeasurement:(id)a3 averageMemoryUsageMeasurement:(id)a4;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXMemoryMetric

- (MXMemoryMetric)initWithPeakMemoryUsageMeasurement:(id)a3 averageMemoryUsageMeasurement:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MXMemoryMetric;
  v9 = [(MXMetric *)&v16 init];
  if (!v9)
  {
    goto LABEL_6;
  }

  [v7 doubleValue];
  if (v10 >= 0.0)
  {
    v11 = [v8 averageMeasurement];
    [v11 doubleValue];
    v13 = v12;

    if (v13 >= 0.0)
    {
      objc_storeStrong(&v9->_peakMemoryUsage, a3);
      objc_storeStrong(&v9->_averageSuspendedMemory, a4);
LABEL_6:
      v14 = v9;
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  peakMemoryUsage = self->_peakMemoryUsage;
  v5 = a3;
  [v5 encodeObject:peakMemoryUsage forKey:@"peakMemoryUsage"];
  [v5 encodeObject:self->_averageSuspendedMemory forKey:@"averageSuspendedMemory"];
}

- (MXMemoryMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXMemoryMetric;
  v5 = [(MXMetric *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peakMemoryUsage"];
    peakMemoryUsage = v5->_peakMemoryUsage;
    v5->_peakMemoryUsage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"averageSuspendedMemory"];
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
    v4 = [(MXMetric *)self measurementFormatter];
    v5 = [v4 stringFromMeasurement:self->_peakMemoryUsage];
    [v3 setObject:v5 forKey:@"peakMemoryUsage"];
  }

  averageSuspendedMemory = self->_averageSuspendedMemory;
  if (averageSuspendedMemory)
  {
    v7 = [(MXAverage *)averageSuspendedMemory toDictionary];
    [v3 setObject:v7 forKey:@"averageSuspendedMemory"];
  }

  return v3;
}

@end