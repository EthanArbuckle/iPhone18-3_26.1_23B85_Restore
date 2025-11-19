@interface ABPKAlgInput
- (ABPKAlgInput)init;
- (CGSize)imageResolution;
- (__n128)imageCameraIntrinsics;
- (__n128)setImageCameraIntrinsics:(__n128)a3;
@end

@implementation ABPKAlgInput

- (ABPKAlgInput)init
{
  v3.receiver = self;
  v3.super_class = ABPKAlgInput;
  result = [(ABPKAlgInput *)&v3 init];
  if (result)
  {
    result->_isDepthDataValid = 0;
    result->_depthMap = 0;
    result->_depthConfidenceBuffer = 0;
  }

  return result;
}

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__n128)imageCameraIntrinsics
{
  result = *(a1 + 80);
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  return result;
}

- (__n128)setImageCameraIntrinsics:(__n128)a3
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  return result;
}

@end