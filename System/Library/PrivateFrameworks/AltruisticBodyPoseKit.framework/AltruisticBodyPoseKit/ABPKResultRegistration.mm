@interface ABPKResultRegistration
- (CGSize)imageSize;
- (__n128)cameraFromBodyPose;
- (__n128)intrinsics;
- (__n128)setCameraFromBodyPose:(__n128)pose;
- (__n128)setIntrinsics:(__n128)intrinsics;
@end

@implementation ABPKResultRegistration

- (__n128)intrinsics
{
  result = *(self + 80);
  v2 = *(self + 96);
  v3 = *(self + 112);
  return result;
}

- (__n128)setIntrinsics:(__n128)intrinsics
{
  result[5] = a2;
  result[6] = intrinsics;
  result[7] = a4;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__n128)cameraFromBodyPose
{
  result = *(self + 128);
  v2 = *(self + 144);
  v3 = *(self + 160);
  v4 = *(self + 176);
  return result;
}

- (__n128)setCameraFromBodyPose:(__n128)pose
{
  result[8] = a2;
  result[9] = pose;
  result[10] = a4;
  result[11] = a5;
  return result;
}

@end