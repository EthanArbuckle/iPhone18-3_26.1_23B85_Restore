@interface ABPK2DPoseEstimation
- (int)runWithMLImageData:(id)data rotationOfResultTensor:(int64_t)tensor;
@end

@implementation ABPK2DPoseEstimation

- (int)runWithMLImageData:(id)data rotationOfResultTensor:(int64_t)tensor
{
  dataCopy = data;
  detection2dAlgorithm = self->_detection2dAlgorithm;
  pixelBuffer = [dataCopy pixelBuffer];
  abpkDeviceOrientation = [dataCopy abpkDeviceOrientation];
  [dataCopy timestamp];
  v10 = [(ABPK2DDetection *)detection2dAlgorithm runWithImage:pixelBuffer abpkOrientation:abpkDeviceOrientation atTimestamp:tensor rotationOfResultTensor:?];
  if (v10)
  {
    v11 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", v16, 2u);
    }

    postprocess2d = self->_postprocess2d;
    preprocessingParams = [dataCopy preprocessingParams];
    [dataCopy timestamp];
    LODWORD(postprocess2d) = [(ABPK2DDetectionPostprocess *)postprocess2d extract2DSkeletonfromBuffers:v10 withImagePreProcessingParams:preprocessingParams atTimestamp:0 previousSkeleton3D:?];

    if (postprocess2d)
    {
      v14 = -6661;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = -6661;
  }

  return v14;
}

@end