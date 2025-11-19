@interface ABPKResultRegistration
- (CGSize)imageSize;
- (__n128)cameraFromBodyPose;
- (__n128)intrinsics;
- (__n128)setCameraFromBodyPose:(__n128)a3;
- (__n128)setIntrinsics:(__n128)a3;
@end

@implementation ABPKResultRegistration

- (__n128)intrinsics
{
  result = *(a1 + 80);
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  return result;
}

- (__n128)setIntrinsics:(__n128)a3
{
  result[5] = a2;
  result[6] = a3;
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
  result = *(a1 + 128);
  v2 = *(a1 + 144);
  v3 = *(a1 + 160);
  v4 = *(a1 + 176);
  return result;
}

- (__n128)setCameraFromBodyPose:(__n128)a3
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

@end