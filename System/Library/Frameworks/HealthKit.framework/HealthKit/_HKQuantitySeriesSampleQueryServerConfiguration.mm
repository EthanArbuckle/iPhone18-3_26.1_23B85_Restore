@interface _HKQuantitySeriesSampleQueryServerConfiguration
- (_HKQuantitySeriesSampleQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKQuantitySeriesSampleQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = _HKQuantitySeriesSampleQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v10 copyWithZone:zone];
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

- (_HKQuantitySeriesSampleQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _HKQuantitySeriesSampleQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sample"];
    quantitySample = v5->_quantitySample;
    v5->_quantitySample = v6;

    v5->_seriesAnchor = [coderCopy decodeIntegerForKey:@"anchor"];
    if ([coderCopy containsValueForKey:@"mode"])
    {
      v8 = [coderCopy decodeIntegerForKey:@"mode"];
    }

    else
    {
      v8 = 0;
    }

    v5->_mode = v8;
    if ([coderCopy containsValueForKey:@"options"])
    {
      v9 = [coderCopy decodeIntegerForKey:@"options"];
    }

    else
    {
      v9 = 0;
    }

    v5->_options = v9;
    v10 = [coderCopy containsValueForKey:@"maxStart"];
    if (v10)
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxStart"];
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v5->_maximumStartDate, v11);
    if (v10)
    {
    }

    v12 = [coderCopy containsValueForKey:@"latestUUID"];
    if (v12)
    {
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestUUID"];
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&v5->_latestUUID, v13);
    if (v12)
    {
    }

    v14 = [coderCopy containsValueForKey:@"latestStart"];
    if (v14)
    {
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestStart"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _HKQuantitySeriesSampleQueryServerConfiguration;
  [(HKQueryServerConfiguration *)&v8 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_quantitySample forKey:@"sample"];
  [coderCopy encodeInteger:self->_seriesAnchor forKey:@"anchor"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
  maximumStartDate = self->_maximumStartDate;
  if (maximumStartDate)
  {
    [coderCopy encodeObject:maximumStartDate forKey:@"maxStart"];
  }

  latestUUID = self->_latestUUID;
  if (latestUUID)
  {
    [coderCopy encodeObject:latestUUID forKey:@"latestUUID"];
  }

  latestSampleStartDate = self->_latestSampleStartDate;
  if (latestSampleStartDate)
  {
    [coderCopy encodeObject:latestSampleStartDate forKey:@"latestStart"];
  }
}

@end