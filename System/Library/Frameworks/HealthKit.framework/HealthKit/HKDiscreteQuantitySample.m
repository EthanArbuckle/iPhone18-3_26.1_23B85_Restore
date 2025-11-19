@interface HKDiscreteQuantitySample
- (HKDiscreteQuantitySample)initWithCoder:(id)a3;
- (HKQuantity)maximumQuantity;
- (HKQuantity)minimumQuantity;
- (HKQuantity)mostRecentQuantity;
- (NSDateInterval)mostRecentQuantityDateInterval;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)asJSONObject;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDiscreteQuantitySample

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v36.receiver = self;
  v36.super_class = HKDiscreteQuantitySample;
  v5 = [(HKQuantitySample *)&v36 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    goto LABEL_13;
  }

  if ([(HKQuantitySample *)self count]< 2)
  {
    goto LABEL_10;
  }

  v8 = [(HKQuantitySample *)self quantityType];
  v9 = 128;
  v10 = [(HKQuantity *)self->_minimumQuantity _unit];
  v11 = [v8 isCompatibleWithUnit:v10];

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = 136;
  v12 = [(HKQuantity *)self->_maximumQuantity _unit];
  v13 = [v8 isCompatibleWithUnit:v12];

  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = 144;
  v14 = [(HKQuantity *)self->_mostRecentQuantity _unit];
  v15 = [v8 isCompatibleWithUnit:v14];

  if (v15)
  {
    v16 = [(NSDateInterval *)self->_mostRecentQuantityDateInterval startDate];
    [v16 timeIntervalSinceReferenceDate];
    v18 = v17;
    [(HKSample *)self _startTimestamp];
    if (v18 < v19)
    {
    }

    else
    {
      v20 = [(NSDateInterval *)self->_mostRecentQuantityDateInterval endDate];
      [v20 timeIntervalSinceReferenceDate];
      v22 = v21;
      [(HKSample *)self _endTimestamp];
      v24 = v23;

      if (v22 <= v24)
      {

LABEL_10:
        v7 = 0;
        goto LABEL_13;
      }
    }

    v31 = MEMORY[0x1E696ABC0];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    mostRecentQuantityDateInterval = self->_mostRecentQuantityDateInterval;
    v28 = [(HKSample *)self startDate];
    v29 = [(HKSample *)self endDate];
    [v31 hk_errorForInvalidArgument:@"@" class:v32 selector:a2 format:{@"%@ %@ most recent quantity interval %@ falls outside the range of the sample: %@ - %@", v33, self, mostRecentQuantityDateInterval, v28, v29}];
  }

  else
  {
LABEL_11:
    v25 = MEMORY[0x1E696ABC0];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [v8 dimension];
    v29 = [*(&self->super.super.super.super.isa + v9) _unit];
    [v25 hk_errorForInvalidArgument:@"@" class:v26 selector:a2 format:{@"%@ %@ requires unit of type %@. Incompatible unit: %@", v27, self, v28, v29, v35}];
  }
  v7 = ;

LABEL_13:

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKDiscreteQuantitySample;
  v4 = a3;
  [(HKQuantitySample *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_minimumQuantity forKey:{@"Min", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_maximumQuantity forKey:@"Max"];
  [v4 encodeObject:self->_mostRecentQuantity forKey:@"Recent"];
  [v4 encodeObject:self->_mostRecentQuantityDateInterval forKey:@"RecentDate"];
}

- (HKDiscreteQuantitySample)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKDiscreteQuantitySample;
  v5 = [(HKQuantitySample *)&v16 initWithCoder:v4];
  v6 = v5;
  if (v5 && [(HKQuantitySample *)v5 count]>= 2)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Min"];
    minimumQuantity = v6->_minimumQuantity;
    v6->_minimumQuantity = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Max"];
    maximumQuantity = v6->_maximumQuantity;
    v6->_maximumQuantity = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Recent"];
    mostRecentQuantity = v6->_mostRecentQuantity;
    v6->_mostRecentQuantity = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecentDate"];
    mostRecentQuantityDateInterval = v6->_mostRecentQuantityDateInterval;
    v6->_mostRecentQuantityDateInterval = v13;
  }

  return v6;
}

- (HKQuantity)minimumQuantity
{
  minimumQuantity = self->_minimumQuantity;
  if (minimumQuantity)
  {
    v3 = minimumQuantity;
  }

  else
  {
    v3 = [(HKQuantitySample *)self quantity];
  }

  return v3;
}

- (HKQuantity)maximumQuantity
{
  maximumQuantity = self->_maximumQuantity;
  if (maximumQuantity)
  {
    v3 = maximumQuantity;
  }

  else
  {
    v3 = [(HKQuantitySample *)self quantity];
  }

  return v3;
}

- (HKQuantity)mostRecentQuantity
{
  mostRecentQuantity = self->_mostRecentQuantity;
  if (mostRecentQuantity)
  {
    v3 = mostRecentQuantity;
  }

  else
  {
    v3 = [(HKQuantitySample *)self quantity];
  }

  return v3;
}

- (NSDateInterval)mostRecentQuantityDateInterval
{
  mostRecentQuantityDateInterval = self->_mostRecentQuantityDateInterval;
  if (mostRecentQuantityDateInterval)
  {
    v3 = mostRecentQuantityDateInterval;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AB80]);
    v6 = [(HKSample *)self startDate];
    v7 = [(HKSample *)self endDate];
    v3 = [v5 initWithStartDate:v6 endDate:v7];
  }

  return v3;
}

- (id)asJSONObject
{
  v4.receiver = self;
  v4.super_class = HKDiscreteQuantitySample;
  v2 = [(HKQuantitySample *)&v4 asJSONObject];

  return v2;
}

@end