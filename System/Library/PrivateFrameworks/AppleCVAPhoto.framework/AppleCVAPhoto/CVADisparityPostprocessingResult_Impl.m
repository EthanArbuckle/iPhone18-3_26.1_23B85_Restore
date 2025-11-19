@interface CVADisparityPostprocessingResult_Impl
- (CVADisparityPostprocessingResult_Impl)initWithPostprocessedDisparityBuffer:(__CVBuffer *)a3 canonicalDisparityPixelBuffer:(__CVBuffer *)a4 focusCanonicalDisparity:(float)a5 backgroundDisparitySum:(float)a6 backgroundDisparitySumVariance:(float)a7 backgroundDisparityRatio:(float)a8 invalidDisparityRatio:(float)a9 invalidDisparityRatioVariance:(float)a10 deltaCanonicalDisparity:(float)a11 backgroundSeparationLikelihood:(float)a12 closeCanonicalDisparityAverage:(float)a13 faceCanonicalDisparityAverage:(id)a14 faceInvalidDisparityRatio:(id)a15 foregroundRatio:(float)a16 erodedForegroundRatio:(float)a17 personSegmentationRatio:(float)a18;
- (void)dealloc;
@end

@implementation CVADisparityPostprocessingResult_Impl

- (void)dealloc
{
  CVPixelBufferRelease(self->_postprocessedDisparityPixelBuffer);
  CVPixelBufferRelease(self->_canonicalDisparityPixelBuffer);
  v3.receiver = self;
  v3.super_class = CVADisparityPostprocessingResult_Impl;
  [(CVADisparityPostprocessingResult_Impl *)&v3 dealloc];
}

- (CVADisparityPostprocessingResult_Impl)initWithPostprocessedDisparityBuffer:(__CVBuffer *)a3 canonicalDisparityPixelBuffer:(__CVBuffer *)a4 focusCanonicalDisparity:(float)a5 backgroundDisparitySum:(float)a6 backgroundDisparitySumVariance:(float)a7 backgroundDisparityRatio:(float)a8 invalidDisparityRatio:(float)a9 invalidDisparityRatioVariance:(float)a10 deltaCanonicalDisparity:(float)a11 backgroundSeparationLikelihood:(float)a12 closeCanonicalDisparityAverage:(float)a13 faceCanonicalDisparityAverage:(id)a14 faceInvalidDisparityRatio:(id)a15 foregroundRatio:(float)a16 erodedForegroundRatio:(float)a17 personSegmentationRatio:(float)a18
{
  v27 = a14;
  v28 = a15;
  v37.receiver = self;
  v37.super_class = CVADisparityPostprocessingResult_Impl;
  v29 = [(CVADisparityPostprocessingResult_Impl *)&v37 init];
  v29->_postprocessedDisparityPixelBuffer = a3;
  CVPixelBufferRetain(a3);
  v29->_canonicalDisparityPixelBuffer = a4;
  CVPixelBufferRetain(a4);
  v29->_backgroundDisparitySum = a6;
  v29->_backgroundDisparitySumVariance = a7;
  v29->_backgroundDisparityRatio = a8;
  v29->_invalidDisparityRatio = a9;
  v29->_invalidDisparityRatioVariance = a10;
  v29->_backgroundSeparationLikelihood = a12;
  v29->_focusDisparity = a5;
  v29->_deltaCanonicalDisparity = a11;
  v29->_closeCanonicalDisparityAverage = a13;
  faceCanonicalDisparityAverage = v29->_faceCanonicalDisparityAverage;
  v29->_faceCanonicalDisparityAverage = v27;
  v31 = v27;

  faceInvalidDisparityRatio = v29->_faceInvalidDisparityRatio;
  v29->_faceInvalidDisparityRatio = v28;

  v29->_foregroundRatio = a16;
  v29->_erodedForegroundRatio = a17;
  v29->_personSegmentationRatio = a18;
  return v29;
}

@end