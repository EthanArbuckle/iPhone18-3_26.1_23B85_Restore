@interface _HKQuantityDistributionData
- (_HKQuantityDistributionData)initWithCoder:(id)coder;
- (_HKQuantityDistributionData)initWithStartDate:(id)date endDate:(id)endDate minimumBucketValue:(id)value minimumValue:(id)minimumValue maximumValue:(id)maximumValue averageValue:(id)averageValue duration:(id)duration histogramCounts:(id)self0 contextIdentifiers:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKQuantityDistributionData

- (_HKQuantityDistributionData)initWithStartDate:(id)date endDate:(id)endDate minimumBucketValue:(id)value minimumValue:(id)minimumValue maximumValue:(id)maximumValue averageValue:(id)averageValue duration:(id)duration histogramCounts:(id)self0 contextIdentifiers:(id)self1
{
  dateCopy = date;
  endDateCopy = endDate;
  valueCopy = value;
  minimumValueCopy = minimumValue;
  maximumValueCopy = maximumValue;
  averageValueCopy = averageValue;
  durationCopy = duration;
  countsCopy = counts;
  identifiersCopy = identifiers;
  v30.receiver = self;
  v30.super_class = _HKQuantityDistributionData;
  v19 = [(_HKQuantityDistributionData *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v20->_endDate, endDate);
    objc_storeStrong(&v20->_minimumBucketValue, value);
    objc_storeStrong(&v20->_minimumValue, minimumValue);
    objc_storeStrong(&v20->_maximumValue, maximumValue);
    objc_storeStrong(&v20->_averageValue, averageValue);
    objc_storeStrong(&v20->_duration, duration);
    objc_storeStrong(&v20->_histogramCounts, counts);
    objc_storeStrong(&v20->_contextIdentifiers, identifiers);
  }

  return v20;
}

- (_HKQuantityDistributionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = _HKQuantityDistributionData;
  v5 = [(_HKQuantityDistributionData *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumBucketValue"];
    minimumBucketValue = v5->_minimumBucketValue;
    v5->_minimumBucketValue = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumValueKey"];
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumValueKey"];
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageValueKey"];
    averageValue = v5->_averageValue;
    v5->_averageValue = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"durationKey"];
    duration = v5->_duration;
    v5->_duration = v18;

    v20 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"histogramCounts"];
    histogramCounts = v5->_histogramCounts;
    v5->_histogramCounts = v21;

    v23 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"contextIdentifiers"];
    contextIdentifiers = v5->_contextIdentifiers;
    v5->_contextIdentifiers = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_minimumBucketValue forKey:@"minimumBucketValue"];
  [coderCopy encodeObject:self->_minimumValue forKey:@"minimumValueKey"];
  [coderCopy encodeObject:self->_maximumValue forKey:@"maximumValueKey"];
  [coderCopy encodeObject:self->_averageValue forKey:@"averageValueKey"];
  [coderCopy encodeObject:self->_duration forKey:@"durationKey"];
  [coderCopy encodeObject:self->_histogramCounts forKey:@"histogramCounts"];
  [coderCopy encodeObject:self->_contextIdentifiers forKey:@"contextIdentifiers"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDate *)self->_startDate copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDate *)self->_endDate copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(HKQuantity *)self->_minimumBucketValue copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(HKQuantity *)self->_minimumValue copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(HKQuantity *)self->_maximumValue copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(HKQuantity *)self->_averageValue copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(HKQuantity *)self->_duration copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(NSArray *)self->_histogramCounts copyWithZone:zone];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(NSArray *)self->_contextIdentifiers copyWithZone:zone];
  v23 = v5[9];
  v5[9] = v22;

  return v5;
}

@end