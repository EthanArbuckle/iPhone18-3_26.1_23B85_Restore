@interface ABPK2DPoseEstimation
- (int)runWithMLImageData:(id)a3 rotationOfResultTensor:(int64_t)a4;
@end

@implementation ABPK2DPoseEstimation

- (int)runWithMLImageData:(id)a3 rotationOfResultTensor:(int64_t)a4
{
  v6 = a3;
  detection2dAlgorithm = self->_detection2dAlgorithm;
  v8 = [v6 pixelBuffer];
  v9 = [v6 abpkDeviceOrientation];
  [v6 timestamp];
  v10 = [(ABPK2DDetection *)detection2dAlgorithm runWithImage:v8 abpkOrientation:v9 atTimestamp:a4 rotationOfResultTensor:?];
  if (v10)
  {
    v11 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", v16, 2u);
    }

    postprocess2d = self->_postprocess2d;
    v13 = [v6 preprocessingParams];
    [v6 timestamp];
    LODWORD(postprocess2d) = [(ABPK2DDetectionPostprocess *)postprocess2d extract2DSkeletonfromBuffers:v10 withImagePreProcessingParams:v13 atTimestamp:0 previousSkeleton3D:?];

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