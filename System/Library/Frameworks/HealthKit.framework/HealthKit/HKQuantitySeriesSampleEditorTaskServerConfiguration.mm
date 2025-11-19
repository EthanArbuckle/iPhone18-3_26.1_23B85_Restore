@interface HKQuantitySeriesSampleEditorTaskServerConfiguration
- (HKQuantitySeriesSampleEditorTaskServerConfiguration)initWithCoder:(id)a3;
- (HKQuantitySeriesSampleEditorTaskServerConfiguration)initWithQuantitySample:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKQuantitySeriesSampleEditorTaskServerConfiguration

- (HKQuantitySeriesSampleEditorTaskServerConfiguration)initWithQuantitySample:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKQuantitySeriesSampleEditorTaskServerConfiguration;
  v5 = [(HKQuantitySeriesSampleEditorTaskServerConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    quantitySample = v5->_quantitySample;
    v5->_quantitySample = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKQuantitySeriesSampleEditorTaskServerConfiguration;
  v4 = [(HKTaskConfiguration *)&v6 copyWithZone:a3];
  [v4 setQuantitySample:self->_quantitySample];
  return v4;
}

- (HKQuantitySeriesSampleEditorTaskServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKQuantitySeriesSampleEditorTaskServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v10 initWithCoder:v4];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"quantity_sample"], v6 = objc_claimAutoreleasedReturnValue(), quantitySample = v5->_quantitySample, v5->_quantitySample = v6, quantitySample, !v5->_quantitySample))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKQuantitySeriesSampleEditorTaskServerConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_quantitySample forKey:{@"quantity_sample", v5.receiver, v5.super_class}];
}

@end