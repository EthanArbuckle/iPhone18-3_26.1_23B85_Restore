@interface MPSParallelRandomDistributionDescriptor
+ (id)defaultDistributionDescriptor;
+ (id)normalDistributionDescriptorWithMean:(float)a3 standardDeviation:(float)a4;
+ (id)normalDistributionDescriptorWithMean:(float)a3 standardDeviation:(float)a4 minimum:(float)a5 maximum:(float)a6;
+ (id)uniformDistributionDescriptorWithMinimum:(float)a3 maximum:(float)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSParallelRandomDistributionDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
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

+ (id)uniformDistributionDescriptorWithMinimum:(float)a3 maximum:(float)a4
{
  result = [MPSParallelRandomDistributionDescriptor alloc];
  if (result)
  {
    *(result + 3) = 2;
    *(result + 2) = a3;
    *(result + 3) = a4;
    *(result + 4) = (a3 + a4) * 0.5;
    *(result + 5) = (a4 - a3) / 3.4641;
  }

  return result;
}

+ (id)normalDistributionDescriptorWithMean:(float)a3 standardDeviation:(float)a4
{
  result = [MPSParallelRandomDistributionDescriptor alloc];
  if (result)
  {
    *(result + 3) = 3;
    *(result + 1) = -COERCE_DOUBLE(0x7F0000007FLL);
    *(result + 4) = a3;
    *(result + 5) = a4;
  }

  return result;
}

+ (id)normalDistributionDescriptorWithMean:(float)a3 standardDeviation:(float)a4 minimum:(float)a5 maximum:(float)a6
{
  result = [MPSParallelRandomDistributionDescriptor alloc];
  if (result)
  {
    *(result + 3) = 3;
    *(result + 2) = a5;
    *(result + 3) = a6;
    *(result + 4) = a3;
    *(result + 5) = a4;
  }

  return result;
}

+ (id)defaultDistributionDescriptor
{
  result = [MPSParallelRandomDistributionDescriptor alloc];
  if (result)
  {
    *(result + 3) = 1;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  v5 = objc_opt_class();
  return v5 == objc_opt_class() && self->_distributionType == *(a3 + 3) && self->_minimum == *(a3 + 2) && self->_maximum == *(a3 + 3) && self->_mean == *(a3 + 4) && self->_standardDeviation == *(a3 + 5);
}

@end