@interface MPSImageSpatioTemporalGuidedFilterDescriptor
+ (id)filterDescriptorWithWidth:(unint64_t)width height:(unint64_t)height arrayLength:(unint64_t)length kernelSpatialDiameter:(unint64_t)diameter kernelTemporalDiameter:(unint64_t)temporalDiameter epsilon:(float)epsilon sourceChannels:(unint64_t)channels guideChannels:(unint64_t)self0 preallocateIntermediates:(BOOL)self1;
- (MPSImageSpatioTemporalGuidedFilterDescriptor)init;
@end

@implementation MPSImageSpatioTemporalGuidedFilterDescriptor

- (MPSImageSpatioTemporalGuidedFilterDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSImageSpatioTemporalGuidedFilterDescriptor;
  return [(MPSImageSpatioTemporalGuidedFilterDescriptor *)&v3 init];
}

+ (id)filterDescriptorWithWidth:(unint64_t)width height:(unint64_t)height arrayLength:(unint64_t)length kernelSpatialDiameter:(unint64_t)diameter kernelTemporalDiameter:(unint64_t)temporalDiameter epsilon:(float)epsilon sourceChannels:(unint64_t)channels guideChannels:(unint64_t)self0 preallocateIntermediates:(BOOL)self1
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 2) = width;
    *(result + 3) = height;
    *(result + 4) = length;
    *(result + 5) = diameter;
    *(result + 3) = epsilon;
    *(result + 6) = temporalDiameter;
    *(result + 7) = channels;
    *(result + 8) = guideChannels;
    *(result + 4) = intermediates;
  }

  return result;
}

@end