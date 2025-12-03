@interface MXLocationActivityMetric
- (MXLocationActivityMetric)initWithCoder:(id)coder;
- (MXLocationActivityMetric)initWithCumulativeBestAccuracyTimeMeasurement:(id)measurement cumulativeBestAccuracyForNavigationTimeMeasurement:(id)timeMeasurement nearestTenMetersAccuracyTimeMeasurement:(id)accuracyTimeMeasurement hundredMetersAccuracyTimeMeasurement:(id)metersAccuracyTimeMeasurement kilometerAccuracyTimeMeasurement:(id)kilometerAccuracyTimeMeasurement threeKilometerAccuracyTimeMeasurement:(id)threeKilometerAccuracyTimeMeasurement;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXLocationActivityMetric

- (MXLocationActivityMetric)initWithCumulativeBestAccuracyTimeMeasurement:(id)measurement cumulativeBestAccuracyForNavigationTimeMeasurement:(id)timeMeasurement nearestTenMetersAccuracyTimeMeasurement:(id)accuracyTimeMeasurement hundredMetersAccuracyTimeMeasurement:(id)metersAccuracyTimeMeasurement kilometerAccuracyTimeMeasurement:(id)kilometerAccuracyTimeMeasurement threeKilometerAccuracyTimeMeasurement:(id)threeKilometerAccuracyTimeMeasurement
{
  measurementCopy = measurement;
  timeMeasurementCopy = timeMeasurement;
  accuracyTimeMeasurementCopy = accuracyTimeMeasurement;
  metersAccuracyTimeMeasurementCopy = metersAccuracyTimeMeasurement;
  kilometerAccuracyTimeMeasurementCopy = kilometerAccuracyTimeMeasurement;
  threeKilometerAccuracyTimeMeasurementCopy = threeKilometerAccuracyTimeMeasurement;
  v30.receiver = self;
  v30.super_class = MXLocationActivityMetric;
  v18 = [(MXMetric *)&v30 init];
  if (!v18)
  {
    goto LABEL_10;
  }

  [measurementCopy doubleValue];
  if (v19 >= 0.0)
  {
    [timeMeasurementCopy doubleValue];
    if (v20 >= 0.0)
    {
      [accuracyTimeMeasurementCopy doubleValue];
      if (v21 >= 0.0)
      {
        [metersAccuracyTimeMeasurementCopy doubleValue];
        if (v22 >= 0.0)
        {
          [kilometerAccuracyTimeMeasurementCopy doubleValue];
          if (v23 >= 0.0)
          {
            [threeKilometerAccuracyTimeMeasurementCopy doubleValue];
            if (v24 >= 0.0)
            {
              objc_storeStrong(&v18->_cumulativeBestAccuracyTime, measurement);
              objc_storeStrong(&v18->_cumulativeBestAccuracyForNavigationTime, timeMeasurement);
              objc_storeStrong(&v18->_cumulativeNearestTenMetersAccuracyTime, accuracyTimeMeasurement);
              objc_storeStrong(&v18->_cumulativeHundredMetersAccuracyTime, metersAccuracyTimeMeasurement);
              objc_storeStrong(&v18->_cumulativeKilometerAccuracyTime, kilometerAccuracyTimeMeasurement);
              objc_storeStrong(&v18->_cumulativeThreeKilometersAccuracyTime, threeKilometerAccuracyTimeMeasurement);
LABEL_10:
              v25 = v18;
              goto LABEL_11;
            }
          }
        }
      }
    }
  }

  v25 = 0;
LABEL_11:

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  cumulativeBestAccuracyTime = self->_cumulativeBestAccuracyTime;
  coderCopy = coder;
  [coderCopy encodeObject:cumulativeBestAccuracyTime forKey:@"cumulativeBestAccuracyTime"];
  [coderCopy encodeObject:self->_cumulativeBestAccuracyForNavigationTime forKey:@"cumulativeBestAccuracyForNavigationTime"];
  [coderCopy encodeObject:self->_cumulativeNearestTenMetersAccuracyTime forKey:@"cumulativeNearestTenMetersAccuracyTime"];
  [coderCopy encodeObject:self->_cumulativeHundredMetersAccuracyTime forKey:@"cumulativeHundredMetersAccuracyTime"];
  [coderCopy encodeObject:self->_cumulativeKilometerAccuracyTime forKey:@"cumulativeKilometerAccuracyTime"];
  [coderCopy encodeObject:self->_cumulativeThreeKilometersAccuracyTime forKey:@"cumulativeThreeKilometersAccuracyTime"];
}

- (MXLocationActivityMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MXLocationActivityMetric;
  v5 = [(MXMetric *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeBestAccuracyTime"];
    cumulativeBestAccuracyTime = v5->_cumulativeBestAccuracyTime;
    v5->_cumulativeBestAccuracyTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeBestAccuracyForNavigationTime"];
    cumulativeBestAccuracyForNavigationTime = v5->_cumulativeBestAccuracyForNavigationTime;
    v5->_cumulativeBestAccuracyForNavigationTime = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeNearestTenMetersAccuracyTime"];
    cumulativeNearestTenMetersAccuracyTime = v5->_cumulativeNearestTenMetersAccuracyTime;
    v5->_cumulativeNearestTenMetersAccuracyTime = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeHundredMetersAccuracyTime"];
    cumulativeHundredMetersAccuracyTime = v5->_cumulativeHundredMetersAccuracyTime;
    v5->_cumulativeHundredMetersAccuracyTime = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeKilometerAccuracyTime"];
    cumulativeKilometerAccuracyTime = v5->_cumulativeKilometerAccuracyTime;
    v5->_cumulativeKilometerAccuracyTime = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeThreeKilometersAccuracyTime"];
    cumulativeThreeKilometersAccuracyTime = v5->_cumulativeThreeKilometersAccuracyTime;
    v5->_cumulativeThreeKilometersAccuracyTime = v16;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_cumulativeBestAccuracyTime)
  {
    measurementFormatter = [(MXMetric *)self measurementFormatter];
    v5 = [measurementFormatter stringFromMeasurement:self->_cumulativeBestAccuracyTime];
    [v3 setObject:v5 forKey:@"cumulativeBestAccuracyTime"];
  }

  if (self->_cumulativeBestAccuracyForNavigationTime)
  {
    measurementFormatter2 = [(MXMetric *)self measurementFormatter];
    v7 = [measurementFormatter2 stringFromMeasurement:self->_cumulativeBestAccuracyForNavigationTime];
    [v3 setObject:v7 forKey:@"cumulativeBestAccuracyForNavigationTime"];
  }

  if (self->_cumulativeNearestTenMetersAccuracyTime)
  {
    measurementFormatter3 = [(MXMetric *)self measurementFormatter];
    v9 = [measurementFormatter3 stringFromMeasurement:self->_cumulativeNearestTenMetersAccuracyTime];
    [v3 setObject:v9 forKey:@"cumulativeNearestTenMetersAccuracyTime"];
  }

  if (self->_cumulativeHundredMetersAccuracyTime)
  {
    measurementFormatter4 = [(MXMetric *)self measurementFormatter];
    v11 = [measurementFormatter4 stringFromMeasurement:self->_cumulativeHundredMetersAccuracyTime];
    [v3 setObject:v11 forKey:@"cumulativeHundredMetersAccuracyTime"];
  }

  if (self->_cumulativeKilometerAccuracyTime)
  {
    measurementFormatter5 = [(MXMetric *)self measurementFormatter];
    v13 = [measurementFormatter5 stringFromMeasurement:self->_cumulativeKilometerAccuracyTime];
    [v3 setObject:v13 forKey:@"cumulativeKilometerAccuracyTime"];
  }

  if (self->_cumulativeThreeKilometersAccuracyTime)
  {
    measurementFormatter6 = [(MXMetric *)self measurementFormatter];
    v15 = [measurementFormatter6 stringFromMeasurement:self->_cumulativeThreeKilometersAccuracyTime];
    [v3 setObject:v15 forKey:@"cumulativeThreeKilometersAccuracyTime"];
  }

  return v3;
}

@end