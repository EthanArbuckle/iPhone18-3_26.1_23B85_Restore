@interface MPSImageSpatioTemporalGuidedFilterDescriptor
+ (id)filterDescriptorWithWidth:(unint64_t)a3 height:(unint64_t)a4 arrayLength:(unint64_t)a5 kernelSpatialDiameter:(unint64_t)a6 kernelTemporalDiameter:(unint64_t)a7 epsilon:(float)a8 sourceChannels:(unint64_t)a9 guideChannels:(unint64_t)a10 preallocateIntermediates:(BOOL)a11;
- (MPSImageSpatioTemporalGuidedFilterDescriptor)init;
@end

@implementation MPSImageSpatioTemporalGuidedFilterDescriptor

- (MPSImageSpatioTemporalGuidedFilterDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSImageSpatioTemporalGuidedFilterDescriptor;
  return [(MPSImageSpatioTemporalGuidedFilterDescriptor *)&v3 init];
}

+ (id)filterDescriptorWithWidth:(unint64_t)a3 height:(unint64_t)a4 arrayLength:(unint64_t)a5 kernelSpatialDiameter:(unint64_t)a6 kernelTemporalDiameter:(unint64_t)a7 epsilon:(float)a8 sourceChannels:(unint64_t)a9 guideChannels:(unint64_t)a10 preallocateIntermediates:(BOOL)a11
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 2) = a3;
    *(result + 3) = a4;
    *(result + 4) = a5;
    *(result + 5) = a6;
    *(result + 3) = a8;
    *(result + 6) = a7;
    *(result + 7) = a9;
    *(result + 8) = a10;
    *(result + 4) = a11;
  }

  return result;
}

@end