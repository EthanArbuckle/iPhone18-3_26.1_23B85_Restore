@interface HKQuantitySeriesSampleBuilderTaskServerConfiguration
- (HKQuantitySeriesSampleBuilderTaskServerConfiguration)initWithCoder:(id)coder;
- (HKQuantitySeriesSampleBuilderTaskServerConfiguration)initWithQuantityType:(id)type startDate:(id)date device:(id)device;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKQuantitySeriesSampleBuilderTaskServerConfiguration

- (HKQuantitySeriesSampleBuilderTaskServerConfiguration)initWithQuantityType:(id)type startDate:(id)date device:(id)device
{
  typeCopy = type;
  dateCopy = date;
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = HKQuantitySeriesSampleBuilderTaskServerConfiguration;
  v11 = [(HKQuantitySeriesSampleBuilderTaskServerConfiguration *)&v19 init];
  if (v11)
  {
    v12 = [typeCopy copy];
    quantityType = v11->_quantityType;
    v11->_quantityType = v12;

    v14 = [dateCopy copy];
    startDate = v11->_startDate;
    v11->_startDate = v14;

    v16 = [deviceCopy copy];
    device = v11->_device;
    v11->_device = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKQuantitySeriesSampleBuilderTaskServerConfiguration;
  v4 = [(HKTaskConfiguration *)&v6 copyWithZone:zone];
  [v4 setQuantityType:self->_quantityType];
  [v4 setStartDate:self->_startDate];
  [v4 setDevice:self->_device];
  return v4;
}

- (HKQuantitySeriesSampleBuilderTaskServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKQuantitySeriesSampleBuilderTaskServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quantity_type"];
    quantityType = v5->_quantityType;
    v5->_quantityType = v6;

    if (!v5->_quantityType || ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"start_date"], v8 = objc_claimAutoreleasedReturnValue(), startDate = v5->_startDate, v5->_startDate = v8, startDate, !v5->_startDate))
    {
      v12 = 0;
      goto LABEL_7;
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v10;
  }

  v12 = v5;
LABEL_7:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKQuantitySeriesSampleBuilderTaskServerConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_quantityType forKey:{@"quantity_type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_startDate forKey:@"start_date"];
  [coderCopy encodeObject:self->_device forKey:@"device"];
}

@end