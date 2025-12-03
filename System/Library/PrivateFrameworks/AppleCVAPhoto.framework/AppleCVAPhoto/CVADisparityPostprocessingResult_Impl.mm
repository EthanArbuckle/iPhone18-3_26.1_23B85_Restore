@interface CVADisparityPostprocessingResult_Impl
- (CVADisparityPostprocessingResult_Impl)initWithPostprocessedDisparityBuffer:(__CVBuffer *)buffer canonicalDisparityPixelBuffer:(__CVBuffer *)pixelBuffer focusCanonicalDisparity:(float)disparity backgroundDisparitySum:(float)sum backgroundDisparitySumVariance:(float)variance backgroundDisparityRatio:(float)ratio invalidDisparityRatio:(float)disparityRatio invalidDisparityRatioVariance:(float)self0 deltaCanonicalDisparity:(float)self1 backgroundSeparationLikelihood:(float)self2 closeCanonicalDisparityAverage:(float)self3 faceCanonicalDisparityAverage:(id)self4 faceInvalidDisparityRatio:(id)self5 foregroundRatio:(float)self6 erodedForegroundRatio:(float)self7 personSegmentationRatio:(float)self8;
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

- (CVADisparityPostprocessingResult_Impl)initWithPostprocessedDisparityBuffer:(__CVBuffer *)buffer canonicalDisparityPixelBuffer:(__CVBuffer *)pixelBuffer focusCanonicalDisparity:(float)disparity backgroundDisparitySum:(float)sum backgroundDisparitySumVariance:(float)variance backgroundDisparityRatio:(float)ratio invalidDisparityRatio:(float)disparityRatio invalidDisparityRatioVariance:(float)self0 deltaCanonicalDisparity:(float)self1 backgroundSeparationLikelihood:(float)self2 closeCanonicalDisparityAverage:(float)self3 faceCanonicalDisparityAverage:(id)self4 faceInvalidDisparityRatio:(id)self5 foregroundRatio:(float)self6 erodedForegroundRatio:(float)self7 personSegmentationRatio:(float)self8
{
  disparityAverageCopy = disparityAverage;
  invalidDisparityRatioCopy = invalidDisparityRatio;
  v37.receiver = self;
  v37.super_class = CVADisparityPostprocessingResult_Impl;
  v29 = [(CVADisparityPostprocessingResult_Impl *)&v37 init];
  v29->_postprocessedDisparityPixelBuffer = buffer;
  CVPixelBufferRetain(buffer);
  v29->_canonicalDisparityPixelBuffer = pixelBuffer;
  CVPixelBufferRetain(pixelBuffer);
  v29->_backgroundDisparitySum = sum;
  v29->_backgroundDisparitySumVariance = variance;
  v29->_backgroundDisparityRatio = ratio;
  v29->_invalidDisparityRatio = disparityRatio;
  v29->_invalidDisparityRatioVariance = ratioVariance;
  v29->_backgroundSeparationLikelihood = likelihood;
  v29->_focusDisparity = disparity;
  v29->_deltaCanonicalDisparity = canonicalDisparity;
  v29->_closeCanonicalDisparityAverage = average;
  faceCanonicalDisparityAverage = v29->_faceCanonicalDisparityAverage;
  v29->_faceCanonicalDisparityAverage = disparityAverageCopy;
  v31 = disparityAverageCopy;

  faceInvalidDisparityRatio = v29->_faceInvalidDisparityRatio;
  v29->_faceInvalidDisparityRatio = invalidDisparityRatioCopy;

  v29->_foregroundRatio = foregroundRatio;
  v29->_erodedForegroundRatio = erodedForegroundRatio;
  v29->_personSegmentationRatio = segmentationRatio;
  return v29;
}

@end