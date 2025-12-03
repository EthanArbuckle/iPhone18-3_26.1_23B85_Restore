@interface MPSMatrixRandomDistributionDescriptor
+ (MPSMatrixRandomDistributionDescriptor)defaultDistributionDescriptor;
+ (MPSMatrixRandomDistributionDescriptor)normalDistributionDescriptorWithMean:(float)mean standardDeviation:(float)standardDeviation;
+ (MPSMatrixRandomDistributionDescriptor)normalDistributionDescriptorWithMean:(float)mean standardDeviation:(float)standardDeviation minimum:(float)minimum maximum:(float)maximum;
+ (MPSMatrixRandomDistributionDescriptor)uniformDistributionDescriptorWithMinimum:(float)minimum maximum:(float)maximum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSMatrixRandomDistributionDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9, v10, v11);
  if (result)
  {
    *(result + 3) = self->_distributionType;
    *(result + 2) = LODWORD(self->_minimum);
    *(result + 3) = LODWORD(self->_maximum);
    *(result + 4) = LODWORD(self->_mean);
    *(result + 5) = LODWORD(self->_standardDeviation);
  }

  return result;
}

+ (MPSMatrixRandomDistributionDescriptor)uniformDistributionDescriptorWithMinimum:(float)minimum maximum:(float)maximum
{
  result = [MPSMatrixRandomDistributionDescriptor alloc];
  if (result)
  {
    result->_distributionType = 2;
    result->_minimum = minimum;
    result->_maximum = maximum;
    result->_mean = (minimum + maximum) * 0.5;
    result->_standardDeviation = (maximum - minimum) / 3.4641;
  }

  return result;
}

+ (MPSMatrixRandomDistributionDescriptor)normalDistributionDescriptorWithMean:(float)mean standardDeviation:(float)standardDeviation
{
  result = [MPSMatrixRandomDistributionDescriptor alloc];
  if (result)
  {
    result->_distributionType = 3;
    *&result->_minimum = -COERCE_DOUBLE(0x7F0000007FLL);
    result->_mean = mean;
    result->_standardDeviation = standardDeviation;
  }

  return result;
}

+ (MPSMatrixRandomDistributionDescriptor)normalDistributionDescriptorWithMean:(float)mean standardDeviation:(float)standardDeviation minimum:(float)minimum maximum:(float)maximum
{
  result = [MPSMatrixRandomDistributionDescriptor alloc];
  if (result)
  {
    result->_distributionType = 3;
    result->_minimum = minimum;
    result->_maximum = maximum;
    result->_mean = mean;
    result->_standardDeviation = standardDeviation;
  }

  return result;
}

+ (MPSMatrixRandomDistributionDescriptor)defaultDistributionDescriptor
{
  result = [MPSMatrixRandomDistributionDescriptor alloc];
  if (result)
  {
    result->_distributionType = 1;
  }

  return result;
}

@end