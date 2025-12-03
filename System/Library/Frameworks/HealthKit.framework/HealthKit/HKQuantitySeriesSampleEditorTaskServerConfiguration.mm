@interface HKQuantitySeriesSampleEditorTaskServerConfiguration
- (HKQuantitySeriesSampleEditorTaskServerConfiguration)initWithCoder:(id)coder;
- (HKQuantitySeriesSampleEditorTaskServerConfiguration)initWithQuantitySample:(id)sample;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKQuantitySeriesSampleEditorTaskServerConfiguration

- (HKQuantitySeriesSampleEditorTaskServerConfiguration)initWithQuantitySample:(id)sample
{
  sampleCopy = sample;
  v9.receiver = self;
  v9.super_class = HKQuantitySeriesSampleEditorTaskServerConfiguration;
  v5 = [(HKQuantitySeriesSampleEditorTaskServerConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [sampleCopy copy];
    quantitySample = v5->_quantitySample;
    v5->_quantitySample = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKQuantitySeriesSampleEditorTaskServerConfiguration;
  v4 = [(HKTaskConfiguration *)&v6 copyWithZone:zone];
  [v4 setQuantitySample:self->_quantitySample];
  return v4;
}

- (HKQuantitySeriesSampleEditorTaskServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKQuantitySeriesSampleEditorTaskServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v10 initWithCoder:coderCopy];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quantity_sample"], v6 = objc_claimAutoreleasedReturnValue(), quantitySample = v5->_quantitySample, v5->_quantitySample = v6, quantitySample, !v5->_quantitySample))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKQuantitySeriesSampleEditorTaskServerConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_quantitySample forKey:{@"quantity_sample", v5.receiver, v5.super_class}];
}

@end