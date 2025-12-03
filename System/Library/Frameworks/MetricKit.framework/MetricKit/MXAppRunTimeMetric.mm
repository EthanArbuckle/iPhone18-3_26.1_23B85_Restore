@interface MXAppRunTimeMetric
- (MXAppRunTimeMetric)initWithCoder:(id)coder;
- (MXAppRunTimeMetric)initWithCumulativeForegroundTimeMeasurement:(id)measurement cumulativeBackgroundTimeMeasurement:(id)timeMeasurement cumulativeBackgroundAudioTimeMeasurement:(id)audioTimeMeasurement cumulativeBackgroundLocationTimeMeasurement:(id)locationTimeMeasurement;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXAppRunTimeMetric

- (MXAppRunTimeMetric)initWithCumulativeForegroundTimeMeasurement:(id)measurement cumulativeBackgroundTimeMeasurement:(id)timeMeasurement cumulativeBackgroundAudioTimeMeasurement:(id)audioTimeMeasurement cumulativeBackgroundLocationTimeMeasurement:(id)locationTimeMeasurement
{
  measurementCopy = measurement;
  timeMeasurementCopy = timeMeasurement;
  audioTimeMeasurementCopy = audioTimeMeasurement;
  locationTimeMeasurementCopy = locationTimeMeasurement;
  v22.receiver = self;
  v22.super_class = MXAppRunTimeMetric;
  v15 = [(MXMetric *)&v22 init];
  if (!v15)
  {
    goto LABEL_8;
  }

  [measurementCopy doubleValue];
  if (v16 >= 0.0)
  {
    [timeMeasurementCopy doubleValue];
    if (v17 >= 0.0)
    {
      [audioTimeMeasurementCopy doubleValue];
      if (v18 >= 0.0)
      {
        [locationTimeMeasurementCopy doubleValue];
        if (v19 >= 0.0)
        {
          objc_storeStrong(&v15->_cumulativeForegroundTime, measurement);
          objc_storeStrong(&v15->_cumulativeBackgroundTime, timeMeasurement);
          objc_storeStrong(&v15->_cumulativeBackgroundAudioTime, audioTimeMeasurement);
          objc_storeStrong(&v15->_cumulativeBackgroundLocationTime, locationTimeMeasurement);
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

- (void)encodeWithCoder:(id)coder
{
  cumulativeForegroundTime = self->_cumulativeForegroundTime;
  coderCopy = coder;
  [coderCopy encodeObject:cumulativeForegroundTime forKey:@"cumulativeForegroundTime"];
  [coderCopy encodeObject:self->_cumulativeBackgroundTime forKey:@"cumulativeBackgroundTime"];
  [coderCopy encodeObject:self->_cumulativeBackgroundAudioTime forKey:@"cumulativeBackgroundAudioTime"];
  [coderCopy encodeObject:self->_cumulativeBackgroundLocationTime forKey:@"cumulativeBackgroundLocationTime"];
}

- (MXAppRunTimeMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MXAppRunTimeMetric;
  v5 = [(MXMetric *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeForegroundTime"];
    cumulativeForegroundTime = v5->_cumulativeForegroundTime;
    v5->_cumulativeForegroundTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeBackgroundTime"];
    cumulativeBackgroundTime = v5->_cumulativeBackgroundTime;
    v5->_cumulativeBackgroundTime = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeBackgroundAudioTime"];
    cumulativeBackgroundAudioTime = v5->_cumulativeBackgroundAudioTime;
    v5->_cumulativeBackgroundAudioTime = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeBackgroundLocationTime"];
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
    measurementFormatter = [(MXMetric *)self measurementFormatter];
    v5 = [measurementFormatter stringFromMeasurement:self->_cumulativeForegroundTime];
    [v3 setObject:v5 forKey:@"cumulativeForegroundTime"];
  }

  if (self->_cumulativeBackgroundTime)
  {
    measurementFormatter2 = [(MXMetric *)self measurementFormatter];
    v7 = [measurementFormatter2 stringFromMeasurement:self->_cumulativeBackgroundTime];
    [v3 setObject:v7 forKey:@"cumulativeBackgroundTime"];
  }

  if (self->_cumulativeBackgroundAudioTime)
  {
    measurementFormatter3 = [(MXMetric *)self measurementFormatter];
    v9 = [measurementFormatter3 stringFromMeasurement:self->_cumulativeBackgroundAudioTime];
    [v3 setObject:v9 forKey:@"cumulativeBackgroundAudioTime"];
  }

  if (self->_cumulativeBackgroundLocationTime)
  {
    measurementFormatter4 = [(MXMetric *)self measurementFormatter];
    v11 = [measurementFormatter4 stringFromMeasurement:self->_cumulativeBackgroundLocationTime];
    [v3 setObject:v11 forKey:@"cumulativeBackgroundLocationTime"];
  }

  return v3;
}

@end