@interface MXCPUMetric
- (MXCPUMetric)initWithCoder:(id)a3;
- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)a3;
- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)a3 withCumulativeCPUInstructions:(id)a4;
- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)a3 withCumulativeCPUInstructions:(id)a4 withCumulativeForegroundCPUTimeMeasurement:(id)a5 withCumulativeBackgroundCPUTimeMeasurement:(id)a6;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXCPUMetric

- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MXCPUMetric;
  v6 = [(MXMetric *)&v10 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  [v5 doubleValue];
  if (v7 >= 0.0)
  {
    objc_storeStrong(&v6->_cumulativeCPUTime, a3);
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)a3 withCumulativeCPUInstructions:(id)a4 withCumulativeForegroundCPUTimeMeasurement:(id)a5 withCumulativeBackgroundCPUTimeMeasurement:(id)a6
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = MXCPUMetric;
  v11 = [(MXMetric *)&v16 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  [v9 doubleValue];
  if (v12 >= 0.0)
  {
    [v10 doubleValue];
    if (v13 >= 0.0)
    {
      objc_storeStrong(&v11->_cumulativeCPUTime, a3);
      objc_storeStrong(&v11->_cumulativeCPUInstructions, a4);
LABEL_6:
      v14 = v11;
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)a3 withCumulativeCPUInstructions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MXCPUMetric;
  v9 = [(MXMetric *)&v14 init];
  if (!v9)
  {
    goto LABEL_6;
  }

  [v7 doubleValue];
  if (v10 >= 0.0)
  {
    [v8 doubleValue];
    if (v11 >= 0.0)
    {
      objc_storeStrong(&v9->_cumulativeCPUTime, a3);
      objc_storeStrong(&v9->_cumulativeCPUInstructions, a4);
LABEL_6:
      v12 = v9;
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  cumulativeCPUTime = self->_cumulativeCPUTime;
  v5 = a3;
  [v5 encodeObject:cumulativeCPUTime forKey:@"cumulativeCPUTime"];
  [v5 encodeObject:self->_cumulativeCPUInstructions forKey:@"cumulativeCPUInstructions"];
}

- (MXCPUMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXCPUMetric;
  v5 = [(MXMetric *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeCPUTime"];
    cumulativeCPUTime = v5->_cumulativeCPUTime;
    v5->_cumulativeCPUTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeCPUInstructions"];
    cumulativeCPUInstructions = v5->_cumulativeCPUInstructions;
    v5->_cumulativeCPUInstructions = v8;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_cumulativeCPUTime)
  {
    v4 = [(MXMetric *)self measurementFormatter];
    v5 = [v4 stringFromMeasurement:self->_cumulativeCPUTime];
    [v3 setObject:v5 forKey:@"cumulativeCPUTime"];
  }

  if (self->_cumulativeCPUInstructions)
  {
    v6 = [(MXMetric *)self measurementFormatter];
    v7 = [v6 stringFromMeasurement:self->_cumulativeCPUInstructions];
    [v3 setObject:v7 forKey:@"cumulativeCPUInstructions"];
  }

  return v3;
}

@end