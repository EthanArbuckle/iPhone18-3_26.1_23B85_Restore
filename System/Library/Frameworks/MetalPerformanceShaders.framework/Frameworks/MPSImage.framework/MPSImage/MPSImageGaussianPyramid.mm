@interface MPSImageGaussianPyramid
- (MPSImageGaussianPyramid)initWithCoder:(id)coder device:(id)device;
- (MPSImageGaussianPyramid)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
@end

@implementation MPSImageGaussianPyramid

- (MPSImageGaussianPyramid)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights
{
  v7.receiver = self;
  v7.super_class = MPSImageGaussianPyramid;
  result = [(MPSImagePyramid *)&v7 initWithDevice:device kernelWidth:width kernelHeight:height weights:weights];
  if (result)
  {
    result->super.super._encode = sub_23997D4A0;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSImageGaussianPyramid)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSImageGaussianPyramid;
  result = [(MPSImagePyramid *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = sub_23997D4A0;
  }

  return result;
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v12 = *a4;
  v11.receiver = self;
  v11.super_class = MPSImageGaussianPyramid;
  [(MPSRegion *)&v11 sourceRegionForDestinationSize:&v12];
  v10.receiver = self;
  v10.super_class = MPSImageGaussianPyramid;
  retstr->origin.x = retstr->origin.x - ([(MPSRegion *)&v10 kernelWidth]>> 1);
  v9.receiver = self;
  v9.super_class = MPSImageGaussianPyramid;
  retstr->origin.y = retstr->origin.y - ([(MPSRegion *)&v9 kernelHeight]>> 1);
  v8.receiver = self;
  v8.super_class = MPSImageGaussianPyramid;
  retstr->size.width = retstr->size.width + ([(MPSRegion *)&v8 kernelWidth]- 1);
  v7.receiver = self;
  v7.super_class = MPSImageGaussianPyramid;
  result = [(MPSRegion *)&v7 kernelHeight];
  retstr->size.height = retstr->size.height + (&result[-1].size.depth + 7);
  return result;
}

@end