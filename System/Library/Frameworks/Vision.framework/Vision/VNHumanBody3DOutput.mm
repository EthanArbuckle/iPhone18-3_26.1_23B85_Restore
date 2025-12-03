@interface VNHumanBody3DOutput
- (CGSize)inputSize;
- (__n128)initWithSkeleton:(__n128)skeleton intrinsics:(__n128)intrinsics inputSize:(double)size;
@end

@implementation VNHumanBody3DOutput

- (CGSize)inputSize
{
  width = self->_inputSize.width;
  height = self->_inputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__n128)initWithSkeleton:(__n128)skeleton intrinsics:(__n128)intrinsics inputSize:(double)size
{
  v12 = a8;
  v20.receiver = self;
  v20.super_class = VNHumanBody3DOutput;
  v13 = [(VNHumanBody3DOutput *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_liftedSkeleton, a8);
    v14[2] = a2;
    v14[3] = skeleton;
    v14[4] = intrinsics;
    v14[1].n128_f64[0] = size;
    v14[1].n128_f64[1] = a6;
    v15 = v14;
  }

  return v14;
}

@end