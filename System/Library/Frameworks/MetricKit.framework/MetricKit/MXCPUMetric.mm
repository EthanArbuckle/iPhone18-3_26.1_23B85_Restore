@interface MXCPUMetric
- (MXCPUMetric)initWithCoder:(id)coder;
- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)measurement;
- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)measurement withCumulativeCPUInstructions:(id)instructions;
- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)measurement withCumulativeCPUInstructions:(id)instructions withCumulativeForegroundCPUTimeMeasurement:(id)timeMeasurement withCumulativeBackgroundCPUTimeMeasurement:(id)uTimeMeasurement;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXCPUMetric

- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)measurement
{
  measurementCopy = measurement;
  v10.receiver = self;
  v10.super_class = MXCPUMetric;
  v6 = [(MXMetric *)&v10 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  [measurementCopy doubleValue];
  if (v7 >= 0.0)
  {
    objc_storeStrong(&v6->_cumulativeCPUTime, measurement);
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)measurement withCumulativeCPUInstructions:(id)instructions withCumulativeForegroundCPUTimeMeasurement:(id)timeMeasurement withCumulativeBackgroundCPUTimeMeasurement:(id)uTimeMeasurement
{
  measurementCopy = measurement;
  instructionsCopy = instructions;
  v16.receiver = self;
  v16.super_class = MXCPUMetric;
  v11 = [(MXMetric *)&v16 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  [measurementCopy doubleValue];
  if (v12 >= 0.0)
  {
    [instructionsCopy doubleValue];
    if (v13 >= 0.0)
    {
      objc_storeStrong(&v11->_cumulativeCPUTime, measurement);
      objc_storeStrong(&v11->_cumulativeCPUInstructions, instructions);
LABEL_6:
      v14 = v11;
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (MXCPUMetric)initWithCumulativeCPUTimeMeasurement:(id)measurement withCumulativeCPUInstructions:(id)instructions
{
  measurementCopy = measurement;
  instructionsCopy = instructions;
  v14.receiver = self;
  v14.super_class = MXCPUMetric;
  v9 = [(MXMetric *)&v14 init];
  if (!v9)
  {
    goto LABEL_6;
  }

  [measurementCopy doubleValue];
  if (v10 >= 0.0)
  {
    [instructionsCopy doubleValue];
    if (v11 >= 0.0)
    {
      objc_storeStrong(&v9->_cumulativeCPUTime, measurement);
      objc_storeStrong(&v9->_cumulativeCPUInstructions, instructions);
LABEL_6:
      v12 = v9;
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  cumulativeCPUTime = self->_cumulativeCPUTime;
  coderCopy = coder;
  [coderCopy encodeObject:cumulativeCPUTime forKey:@"cumulativeCPUTime"];
  [coderCopy encodeObject:self->_cumulativeCPUInstructions forKey:@"cumulativeCPUInstructions"];
}

- (MXCPUMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MXCPUMetric;
  v5 = [(MXMetric *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeCPUTime"];
    cumulativeCPUTime = v5->_cumulativeCPUTime;
    v5->_cumulativeCPUTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeCPUInstructions"];
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
    measurementFormatter = [(MXMetric *)self measurementFormatter];
    v5 = [measurementFormatter stringFromMeasurement:self->_cumulativeCPUTime];
    [v3 setObject:v5 forKey:@"cumulativeCPUTime"];
  }

  if (self->_cumulativeCPUInstructions)
  {
    measurementFormatter2 = [(MXMetric *)self measurementFormatter];
    v7 = [measurementFormatter2 stringFromMeasurement:self->_cumulativeCPUInstructions];
    [v3 setObject:v7 forKey:@"cumulativeCPUInstructions"];
  }

  return v3;
}

@end