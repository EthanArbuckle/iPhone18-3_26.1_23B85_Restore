@interface HKDiscreteQuantitySample
- (HKDiscreteQuantitySample)initWithCoder:(id)coder;
- (HKQuantity)maximumQuantity;
- (HKQuantity)minimumQuantity;
- (HKQuantity)mostRecentQuantity;
- (NSDateInterval)mostRecentQuantityDateInterval;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)asJSONObject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDiscreteQuantitySample

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v36.receiver = self;
  v36.super_class = HKDiscreteQuantitySample;
  v5 = [(HKQuantitySample *)&v36 _validateWithConfiguration:configuration.var0, configuration.var1];
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

  quantityType = [(HKQuantitySample *)self quantityType];
  v9 = 128;
  _unit = [(HKQuantity *)self->_minimumQuantity _unit];
  v11 = [quantityType isCompatibleWithUnit:_unit];

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = 136;
  _unit2 = [(HKQuantity *)self->_maximumQuantity _unit];
  v13 = [quantityType isCompatibleWithUnit:_unit2];

  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = 144;
  _unit3 = [(HKQuantity *)self->_mostRecentQuantity _unit];
  v15 = [quantityType isCompatibleWithUnit:_unit3];

  if (v15)
  {
    startDate = [(NSDateInterval *)self->_mostRecentQuantityDateInterval startDate];
    [startDate timeIntervalSinceReferenceDate];
    v18 = v17;
    [(HKSample *)self _startTimestamp];
    if (v18 < v19)
    {
    }

    else
    {
      endDate = [(NSDateInterval *)self->_mostRecentQuantityDateInterval endDate];
      [endDate timeIntervalSinceReferenceDate];
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
    startDate2 = [(HKSample *)self startDate];
    endDate2 = [(HKSample *)self endDate];
    [v31 hk_errorForInvalidArgument:@"@" class:v32 selector:a2 format:{@"%@ %@ most recent quantity interval %@ falls outside the range of the sample: %@ - %@", v33, self, mostRecentQuantityDateInterval, startDate2, endDate2}];
  }

  else
  {
LABEL_11:
    v25 = MEMORY[0x1E696ABC0];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    startDate2 = [quantityType dimension];
    endDate2 = [*(&self->super.super.super.super.isa + v9) _unit];
    [v25 hk_errorForInvalidArgument:@"@" class:v26 selector:a2 format:{@"%@ %@ requires unit of type %@. Incompatible unit: %@", v27, self, startDate2, endDate2, v35}];
  }
  v7 = ;

LABEL_13:

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKDiscreteQuantitySample;
  coderCopy = coder;
  [(HKQuantitySample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_minimumQuantity forKey:{@"Min", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_maximumQuantity forKey:@"Max"];
  [coderCopy encodeObject:self->_mostRecentQuantity forKey:@"Recent"];
  [coderCopy encodeObject:self->_mostRecentQuantityDateInterval forKey:@"RecentDate"];
}

- (HKDiscreteQuantitySample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKDiscreteQuantitySample;
  v5 = [(HKQuantitySample *)&v16 initWithCoder:coderCopy];
  v6 = v5;
  if (v5 && [(HKQuantitySample *)v5 count]>= 2)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Min"];
    minimumQuantity = v6->_minimumQuantity;
    v6->_minimumQuantity = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Max"];
    maximumQuantity = v6->_maximumQuantity;
    v6->_maximumQuantity = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Recent"];
    mostRecentQuantity = v6->_mostRecentQuantity;
    v6->_mostRecentQuantity = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecentDate"];
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
    quantity = minimumQuantity;
  }

  else
  {
    quantity = [(HKQuantitySample *)self quantity];
  }

  return quantity;
}

- (HKQuantity)maximumQuantity
{
  maximumQuantity = self->_maximumQuantity;
  if (maximumQuantity)
  {
    quantity = maximumQuantity;
  }

  else
  {
    quantity = [(HKQuantitySample *)self quantity];
  }

  return quantity;
}

- (HKQuantity)mostRecentQuantity
{
  mostRecentQuantity = self->_mostRecentQuantity;
  if (mostRecentQuantity)
  {
    quantity = mostRecentQuantity;
  }

  else
  {
    quantity = [(HKQuantitySample *)self quantity];
  }

  return quantity;
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
    startDate = [(HKSample *)self startDate];
    endDate = [(HKSample *)self endDate];
    v3 = [v5 initWithStartDate:startDate endDate:endDate];
  }

  return v3;
}

- (id)asJSONObject
{
  v4.receiver = self;
  v4.super_class = HKDiscreteQuantitySample;
  asJSONObject = [(HKQuantitySample *)&v4 asJSONObject];

  return asJSONObject;
}

@end