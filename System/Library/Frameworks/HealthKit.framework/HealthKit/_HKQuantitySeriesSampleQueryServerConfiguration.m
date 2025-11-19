@interface _HKQuantitySeriesSampleQueryServerConfiguration
- (_HKQuantitySeriesSampleQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKQuantitySeriesSampleQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = _HKQuantitySeriesSampleQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v10 copyWithZone:a3];
  v5 = [(HKQuantitySample *)self->_quantitySample copy];
  [v4 setQuantitySample:v5];

  [v4 setSeriesAnchor:self->_seriesAnchor];
  [v4 setMode:self->_mode];
  [v4 setOptions:self->_options];
  v6 = [(NSDate *)self->_maximumStartDate copy];
  [v4 setMaximumStartDate:v6];

  v7 = [(NSUUID *)self->_latestUUID copy];
  [v4 setLatestUUID:v7];

  v8 = [(NSDate *)self->_latestSampleStartDate copy];
  [v4 setLatestSampleStartDate:v8];

  return v4;
}

- (_HKQuantitySeriesSampleQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _HKQuantitySeriesSampleQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sample"];
    quantitySample = v5->_quantitySample;
    v5->_quantitySample = v6;

    v5->_seriesAnchor = [v4 decodeIntegerForKey:@"anchor"];
    if ([v4 containsValueForKey:@"mode"])
    {
      v8 = [v4 decodeIntegerForKey:@"mode"];
    }

    else
    {
      v8 = 0;
    }

    v5->_mode = v8;
    if ([v4 containsValueForKey:@"options"])
    {
      v9 = [v4 decodeIntegerForKey:@"options"];
    }

    else
    {
      v9 = 0;
    }

    v5->_options = v9;
    v10 = [v4 containsValueForKey:@"maxStart"];
    if (v10)
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxStart"];
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v5->_maximumStartDate, v11);
    if (v10)
    {
    }

    v12 = [v4 containsValueForKey:@"latestUUID"];
    if (v12)
    {
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestUUID"];
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&v5->_latestUUID, v13);
    if (v12)
    {
    }

    v14 = [v4 containsValueForKey:@"latestStart"];
    if (v14)
    {
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestStart"];
    }

    else
    {
      v15 = 0;
    }

    objc_storeStrong(&v5->_latestSampleStartDate, v15);
    if (v14)
    {
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _HKQuantitySeriesSampleQueryServerConfiguration;
  [(HKQueryServerConfiguration *)&v8 encodeWithCoder:v4];
  [v4 encodeObject:self->_quantitySample forKey:@"sample"];
  [v4 encodeInteger:self->_seriesAnchor forKey:@"anchor"];
  [v4 encodeInteger:self->_mode forKey:@"mode"];
  [v4 encodeInteger:self->_options forKey:@"options"];
  maximumStartDate = self->_maximumStartDate;
  if (maximumStartDate)
  {
    [v4 encodeObject:maximumStartDate forKey:@"maxStart"];
  }

  latestUUID = self->_latestUUID;
  if (latestUUID)
  {
    [v4 encodeObject:latestUUID forKey:@"latestUUID"];
  }

  latestSampleStartDate = self->_latestSampleStartDate;
  if (latestSampleStartDate)
  {
    [v4 encodeObject:latestSampleStartDate forKey:@"latestStart"];
  }
}

@end