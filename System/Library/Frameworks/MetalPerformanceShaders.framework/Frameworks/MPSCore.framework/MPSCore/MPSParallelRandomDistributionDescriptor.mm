@interface MPSParallelRandomDistributionDescriptor
+ (id)defaultDistributionDescriptor;
+ (id)normalDistributionDescriptorWithMean:(float)mean standardDeviation:(float)deviation;
+ (id)normalDistributionDescriptorWithMean:(float)mean standardDeviation:(float)deviation minimum:(float)minimum maximum:(float)maximum;
+ (id)uniformDistributionDescriptorWithMinimum:(float)minimum maximum:(float)maximum;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSParallelRandomDistributionDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
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

+ (id)uniformDistributionDescriptorWithMinimum:(float)minimum maximum:(float)maximum
{
  result = [MPSParallelRandomDistributionDescriptor alloc];
  if (result)
  {
    *(result + 3) = 2;
    *(result + 2) = minimum;
    *(result + 3) = maximum;
    *(result + 4) = (minimum + maximum) * 0.5;
    *(result + 5) = (maximum - minimum) / 3.4641;
  }

  return result;
}

+ (id)normalDistributionDescriptorWithMean:(float)mean standardDeviation:(float)deviation
{
  result = [MPSParallelRandomDistributionDescriptor alloc];
  if (result)
  {
    *(result + 3) = 3;
    *(result + 1) = -COERCE_DOUBLE(0x7F0000007FLL);
    *(result + 4) = mean;
    *(result + 5) = deviation;
  }

  return result;
}

+ (id)normalDistributionDescriptorWithMean:(float)mean standardDeviation:(float)deviation minimum:(float)minimum maximum:(float)maximum
{
  result = [MPSParallelRandomDistributionDescriptor alloc];
  if (result)
  {
    *(result + 3) = 3;
    *(result + 2) = minimum;
    *(result + 3) = maximum;
    *(result + 4) = mean;
    *(result + 5) = deviation;
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

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  v5 = objc_opt_class();
  return v5 == objc_opt_class() && self->_distributionType == *(equal + 3) && self->_minimum == *(equal + 2) && self->_maximum == *(equal + 3) && self->_mean == *(equal + 4) && self->_standardDeviation == *(equal + 5);
}

@end