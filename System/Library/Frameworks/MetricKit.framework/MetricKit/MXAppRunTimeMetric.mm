@interface MXAppRunTimeMetric
- (MXAppRunTimeMetric)initWithCoder:(id)a3;
- (MXAppRunTimeMetric)initWithCumulativeForegroundTimeMeasurement:(id)a3 cumulativeBackgroundTimeMeasurement:(id)a4 cumulativeBackgroundAudioTimeMeasurement:(id)a5 cumulativeBackgroundLocationTimeMeasurement:(id)a6;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXAppRunTimeMetric

- (MXAppRunTimeMetric)initWithCumulativeForegroundTimeMeasurement:(id)a3 cumulativeBackgroundTimeMeasurement:(id)a4 cumulativeBackgroundAudioTimeMeasurement:(id)a5 cumulativeBackgroundLocationTimeMeasurement:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = MXAppRunTimeMetric;
  v15 = [(MXMetric *)&v22 init];
  if (!v15)
  {
    goto LABEL_8;
  }

  [v11 doubleValue];
  if (v16 >= 0.0)
  {
    [v12 doubleValue];
    if (v17 >= 0.0)
    {
      [v13 doubleValue];
      if (v18 >= 0.0)
      {
        [v14 doubleValue];
        if (v19 >= 0.0)
        {
          objc_storeStrong(&v15->_cumulativeForegroundTime, a3);
          objc_storeStrong(&v15->_cumulativeBackgroundTime, a4);
          objc_storeStrong(&v15->_cumulativeBackgroundAudioTime, a5);
          objc_storeStrong(&v15->_cumulativeBackgroundLocationTime, a6);
LABEL_8:
          v20 = v15;
          goto LABEL_9;
        }
      }
    }
  }

  v20 = 0;
LABEL_9:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  cumulativeForegroundTime = self->_cumulativeForegroundTime;
  v5 = a3;
  [v5 encodeObject:cumulativeForegroundTime forKey:@"cumulativeForegroundTime"];
  [v5 encodeObject:self->_cumulativeBackgroundTime forKey:@"cumulativeBackgroundTime"];
  [v5 encodeObject:self->_cumulativeBackgroundAudioTime forKey:@"cumulativeBackgroundAudioTime"];
  [v5 encodeObject:self->_cumulativeBackgroundLocationTime forKey:@"cumulativeBackgroundLocationTime"];
}

- (MXAppRunTimeMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MXAppRunTimeMetric;
  v5 = [(MXMetric *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeForegroundTime"];
    cumulativeForegroundTime = v5->_cumulativeForegroundTime;
    v5->_cumulativeForegroundTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeBackgroundTime"];
    cumulativeBackgroundTime = v5->_cumulativeBackgroundTime;
    v5->_cumulativeBackgroundTime = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeBackgroundAudioTime"];
    cumulativeBackgroundAudioTime = v5->_cumulativeBackgroundAudioTime;
    v5->_cumulativeBackgroundAudioTime = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeBackgroundLocationTime"];
    cumulativeBackgroundLocationTime = v5->_cumulativeBackgroundLocationTime;
    v5->_cumulativeBackgroundLocationTime = v12;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_cumulativeForegroundTime)
  {
    v4 = [(MXMetric *)self measurementFormatter];
    v5 = [v4 stringFromMeasurement:self->_cumulativeForegroundTime];
    [v3 setObject:v5 forKey:@"cumulativeForegroundTime"];
  }

  if (self->_cumulativeBackgroundTime)
  {
    v6 = [(MXMetric *)self measurementFormatter];
    v7 = [v6 stringFromMeasurement:self->_cumulativeBackgroundTime];
    [v3 setObject:v7 forKey:@"cumulativeBackgroundTime"];
  }

  if (self->_cumulativeBackgroundAudioTime)
  {
    v8 = [(MXMetric *)self measurementFormatter];
    v9 = [v8 stringFromMeasurement:self->_cumulativeBackgroundAudioTime];
    [v3 setObject:v9 forKey:@"cumulativeBackgroundAudioTime"];
  }

  if (self->_cumulativeBackgroundLocationTime)
  {
    v10 = [(MXMetric *)self measurementFormatter];
    v11 = [v10 stringFromMeasurement:self->_cumulativeBackgroundLocationTime];
    [v3 setObject:v11 forKey:@"cumulativeBackgroundLocationTime"];
  }

  return v3;
}

@end