@interface HKQuantitySeriesSampleBuilderTaskServerConfiguration
- (HKQuantitySeriesSampleBuilderTaskServerConfiguration)initWithCoder:(id)a3;
- (HKQuantitySeriesSampleBuilderTaskServerConfiguration)initWithQuantityType:(id)a3 startDate:(id)a4 device:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKQuantitySeriesSampleBuilderTaskServerConfiguration

- (HKQuantitySeriesSampleBuilderTaskServerConfiguration)initWithQuantityType:(id)a3 startDate:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKQuantitySeriesSampleBuilderTaskServerConfiguration;
  v11 = [(HKQuantitySeriesSampleBuilderTaskServerConfiguration *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    quantityType = v11->_quantityType;
    v11->_quantityType = v12;

    v14 = [v9 copy];
    startDate = v11->_startDate;
    v11->_startDate = v14;

    v16 = [v10 copy];
    device = v11->_device;
    v11->_device = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKQuantitySeriesSampleBuilderTaskServerConfiguration;
  v4 = [(HKTaskConfiguration *)&v6 copyWithZone:a3];
  [v4 setQuantityType:self->_quantityType];
  [v4 setStartDate:self->_startDate];
  [v4 setDevice:self->_device];
  return v4;
}

- (HKQuantitySeriesSampleBuilderTaskServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HKQuantitySeriesSampleBuilderTaskServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quantity_type"];
    quantityType = v5->_quantityType;
    v5->_quantityType = v6;

    if (!v5->_quantityType || ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"start_date"], v8 = objc_claimAutoreleasedReturnValue(), startDate = v5->_startDate, v5->_startDate = v8, startDate, !v5->_startDate))
    {
      v12 = 0;
      goto LABEL_7;
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v10;
  }

  v12 = v5;
LABEL_7:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKQuantitySeriesSampleBuilderTaskServerConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_quantityType forKey:{@"quantity_type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_startDate forKey:@"start_date"];
  [v4 encodeObject:self->_device forKey:@"device"];
}

@end