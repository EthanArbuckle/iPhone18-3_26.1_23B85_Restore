@interface _HKQuantityDistributionData
- (_HKQuantityDistributionData)initWithCoder:(id)a3;
- (_HKQuantityDistributionData)initWithStartDate:(id)a3 endDate:(id)a4 minimumBucketValue:(id)a5 minimumValue:(id)a6 maximumValue:(id)a7 averageValue:(id)a8 duration:(id)a9 histogramCounts:(id)a10 contextIdentifiers:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKQuantityDistributionData

- (_HKQuantityDistributionData)initWithStartDate:(id)a3 endDate:(id)a4 minimumBucketValue:(id)a5 minimumValue:(id)a6 maximumValue:(id)a7 averageValue:(id)a8 duration:(id)a9 histogramCounts:(id)a10 contextIdentifiers:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = _HKQuantityDistributionData;
  v19 = [(_HKQuantityDistributionData *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_startDate, a3);
    objc_storeStrong(&v20->_endDate, a4);
    objc_storeStrong(&v20->_minimumBucketValue, a5);
    objc_storeStrong(&v20->_minimumValue, a6);
    objc_storeStrong(&v20->_maximumValue, a7);
    objc_storeStrong(&v20->_averageValue, a8);
    objc_storeStrong(&v20->_duration, a9);
    objc_storeStrong(&v20->_histogramCounts, a10);
    objc_storeStrong(&v20->_contextIdentifiers, a11);
  }

  return v20;
}

- (_HKQuantityDistributionData)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _HKQuantityDistributionData;
  v5 = [(_HKQuantityDistributionData *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumBucketValue"];
    minimumBucketValue = v5->_minimumBucketValue;
    v5->_minimumBucketValue = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumValueKey"];
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumValueKey"];
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"averageValueKey"];
    averageValue = v5->_averageValue;
    v5->_averageValue = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"durationKey"];
    duration = v5->_duration;
    v5->_duration = v18;

    v20 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"histogramCounts"];
    histogramCounts = v5->_histogramCounts;
    v5->_histogramCounts = v21;

    v23 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"contextIdentifiers"];
    contextIdentifiers = v5->_contextIdentifiers;
    v5->_contextIdentifiers = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_minimumBucketValue forKey:@"minimumBucketValue"];
  [v5 encodeObject:self->_minimumValue forKey:@"minimumValueKey"];
  [v5 encodeObject:self->_maximumValue forKey:@"maximumValueKey"];
  [v5 encodeObject:self->_averageValue forKey:@"averageValueKey"];
  [v5 encodeObject:self->_duration forKey:@"durationKey"];
  [v5 encodeObject:self->_histogramCounts forKey:@"histogramCounts"];
  [v5 encodeObject:self->_contextIdentifiers forKey:@"contextIdentifiers"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDate *)self->_startDate copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDate *)self->_endDate copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(HKQuantity *)self->_minimumBucketValue copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(HKQuantity *)self->_minimumValue copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(HKQuantity *)self->_maximumValue copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(HKQuantity *)self->_averageValue copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(HKQuantity *)self->_duration copyWithZone:a3];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(NSArray *)self->_histogramCounts copyWithZone:a3];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(NSArray *)self->_contextIdentifiers copyWithZone:a3];
  v23 = v5[9];
  v5[9] = v22;

  return v5;
}

@end