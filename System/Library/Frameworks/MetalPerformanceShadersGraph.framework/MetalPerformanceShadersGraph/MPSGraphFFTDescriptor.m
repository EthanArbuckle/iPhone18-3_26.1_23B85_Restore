@interface MPSGraphFFTDescriptor
+ (MPSGraphFFTDescriptor)descriptor;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSGraphFFTDescriptor

+ (MPSGraphFFTDescriptor)descriptor
{
  v2 = objc_alloc_init(MPSGraphFFTDescriptor);
  v2->_inverse = 0;
  v2->_scalingMode = 0;
  v2->_roundToOddHermitean = 0;

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [MPSGraphFFTDescriptor alloc];
  *(result + 8) = self->_inverse;
  *(result + 2) = self->_scalingMode;
  *(result + 9) = self->_roundToOddHermitean;
  return result;
}

@end