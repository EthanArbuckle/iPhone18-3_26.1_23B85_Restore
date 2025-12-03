@interface CVAVideoPipelineProperties_Impl
- (BOOL)validateWithError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForVideoPipelineDevice:(unint64_t)device;
@end

@implementation CVAVideoPipelineProperties_Impl

- (BOOL)validateWithError:(id *)error
{
  centerDeltaCanonicalDisparity = self->_centerDeltaCanonicalDisparity;
  v6 = self->_minDeltaCanonicalDisparity > centerDeltaCanonicalDisparity || centerDeltaCanonicalDisparity > self->_maxDeltaCanonicalDisparity;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected centerDeltaCanonicalDisparity <= centerDeltaCanonicalDisparity <= maxDeltaCanonicalDisparity"];
  v9 = [v7 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAVideoPipelineProperties_Impl validateWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineProperties.mm", 1584, v8];
  sub_1DED25D64(v6, error, 4294944393, v9);

  if (v6)
  {
    return 0;
  }

  outputDisparityPixelBufferHeight = self->_outputDisparityPixelBufferHeight;
  v11 = 400;
  if ((self->_inputToOutputDisparityPixelBufferRotation & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v12 = 408;
  }

  else
  {
    v12 = 400;
  }

  v13 = *(&self->super.isa + v12);
  if ((self->_inputToOutputDisparityPixelBufferRotation & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v11 = 408;
  }

  v14 = *(&self->super.isa + v11);
  outputDisparityPixelBufferWidth = self->_outputDisparityPixelBufferWidth;
  v16 = MEMORY[0x1E696AEC0];
  outputDisparityPixelBufferWidth = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input/output disparity pixel buffers must have the same aspect ratio: %zu x %zu != %zu x %zu", v13, outputDisparityPixelBufferHeight, v14, outputDisparityPixelBufferWidth];
  v18 = [v16 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAVideoPipelineProperties_Impl validateWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineProperties.mm", 1602, outputDisparityPixelBufferWidth];
  v19 = outputDisparityPixelBufferHeight * v13;
  v20 = outputDisparityPixelBufferWidth * v14;
  sub_1DED25D64(v19 != v20, error, 4294944393, v18);

  if (v19 != v20)
  {
    return 0;
  }

  depthPixelBufferXReplication = self->_depthPixelBufferXReplication;
  v22 = self->_outputDisparityPixelBufferWidth;
  v23 = MEMORY[0x1E696AEC0];
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outputDisparityPixelBufferWidth not in [2 + depthPixelBufferXReplication, inf"]);
  v25 = [v23 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAVideoPipelineProperties_Impl validateWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineProperties.mm", 1616, v24];
  depthPixelBufferXReplication += 2;
  sub_1DED25D64(v22 < depthPixelBufferXReplication, error, 4294944393, v25);

  if (v22 < depthPixelBufferXReplication)
  {
    return 0;
  }

  depthPixelBufferYReplication = self->_depthPixelBufferYReplication;
  v27 = self->_outputDisparityPixelBufferHeight;
  v28 = MEMORY[0x1E696AEC0];
  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outputDisparityPixelBufferHeight not in [2 + depthPixelBufferYReplication, inf"]);
  v30 = [v28 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAVideoPipelineProperties_Impl validateWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineProperties.mm", 1630, v29];
  depthPixelBufferYReplication += 2;
  sub_1DED25D64(v27 < depthPixelBufferYReplication, error, 4294944393, v30);

  if (v27 < depthPixelBufferYReplication)
  {
    return 0;
  }

  if (sub_1DED2E328(self->_videoPipelineDevice) == 2)
  {
    return 1;
  }

  depthPixelBufferXPadding = self->_depthPixelBufferXPadding;
  v33 = (depthPixelBufferXPadding & 0x80000000) != 0 || (self->_inputDisparityPixelBufferWidth <= depthPixelBufferXPadding);
  v34 = MEMORY[0x1E696AEC0];
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"depthPixelBufferXPadding not in [0, inputDisparityPixelBufferWidth"]);
  v36 = [v34 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAVideoPipelineProperties_Impl validateWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineProperties.mm", 1643, v35];
  sub_1DED25D64(v33, error, 4294944393, v36);

  if (v33)
  {
    return 0;
  }

  depthPixelBufferYPadding = self->_depthPixelBufferYPadding;
  v38 = (depthPixelBufferYPadding & 0x80000000) != 0 || (self->_inputDisparityPixelBufferHeight <= depthPixelBufferYPadding);
  v39 = MEMORY[0x1E696AEC0];
  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"depthPixelBufferYPadding not in [0, inputDisparityPixelBufferHeight"]);
  v41 = [v39 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAVideoPipelineProperties_Impl validateWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineProperties.mm", 1654, v40];
  sub_1DED25D64(v38, error, 4294944393, v41);

  return !v38;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 360) = self->_colorPixelBufferWidth;
  *(v4 + 368) = self->_colorPixelBufferHeight;
  objc_storeStrong((v4 + 376), self->_supportedColorPixelBufferPixelFormats);
  *(v4 + 12) = self->_colorPixelBufferFocalLength_mm;
  *(v4 + 16) = self->_colorPixelBufferPixelSize_um;
  *(v4 + 20) = self->_colorPixelBufferFocalRatio;
  *(v4 + 384) = self->_alphaMattePixelBufferWidth;
  *(v4 + 392) = self->_alphaMattePixelBufferHeight;
  *(v4 + 24) = self->_alphaMattePixelBufferPixelFormat;
  *(v4 + 400) = self->_inputDisparityPixelBufferWidth;
  *(v4 + 408) = self->_inputDisparityPixelBufferHeight;
  *(v4 + 416) = self->_outputDisparityPixelBufferWidth;
  *(v4 + 28) = self->_outputDisparityOffset;
  inputToOutputDisparityPixelBufferRotation = self->_inputToOutputDisparityPixelBufferRotation;
  *(v4 + 424) = self->_outputDisparityPixelBufferHeight;
  *(v4 + 432) = inputToOutputDisparityPixelBufferRotation;
  *(v4 + 8) = self->_sceneMonitorUsesDisparityStatistics;
  *(v4 + 32) = self->_inputDisparityPixelBufferPixelFormat;
  *(v4 + 36) = self->_outputDisparityPixelBufferPixelFormat;
  objc_storeStrong((v4 + 440), self->_supportedInputSegmentationPixelBufferPixelFormats);
  *(v4 + 448) = self->_videoPipelineDevice;
  *(v4 + 40) = self->_depthPixelBufferXPadding;
  *(v4 + 44) = self->_depthPixelBufferYPadding;
  *(v4 + 48) = self->_depthPixelBufferXReplication;
  *(v4 + 52) = self->_depthPixelBufferYReplication;
  *(v4 + 56) = self->_depthPixelBufferScale;
  *(v4 + 60) = self->_depthPixelBufferOffset;
  *(v4 + 64) = self->_disparityStereoFocalLengthPixels;
  *(v4 + 68) = self->_disparityStereoBaselineMeters;
  *(v4 + 9) = self->_canSkipDisparityHoleFillingAndTemporalRejection;
  *(v4 + 10) = self->_supportsForegroundBlur;
  *(v4 + 72) = self->_depthPixelBufferMaxLeftOcclusionDisparityChange;
  *(v4 + 76) = self->_depthPixelBufferMaxRightOcclusionDisparityChange;
  *(v4 + 80) = self->_backgroundDisparityUpdateRate;
  *(v4 + 84) = self->_invalidDisparityRatioUpdateRate;
  *(v4 + 88) = self->_backgroundDisparityStatsWindowSize;
  *(v4 + 92) = self->_invalidDisparityRatioStatsWindowSize;
  *(v4 + 96) = self->_minDeltaCanonicalDisparity;
  *(v4 + 100) = self->_maxDeltaCanonicalDisparity;
  *(v4 + 104) = self->_centerDeltaCanonicalDisparity;
  *(v4 + 108) = self->_dsCanonicalLowThld;
  *(v4 + 112) = self->_dsCanonicalLowScale;
  *(v4 + 116) = self->_dsCanonicalHighThld;
  *(v4 + 120) = self->_linearDeltaDepthMultiplier;
  *(v4 + 124) = self->_linearDeltaDepthOffset;
  *(v4 + 128) = self->_dsCanonicalHighScale;
  *(v4 + 132) = self->_foregroundPercentile;
  *(v4 + 136) = self->_closeDisparityPercentile;
  *(v4 + 140) = self->_deltaDepth;
  *(v4 + 144) = self->_mattingUpdateRate;
  *(v4 + 148) = self->_mattingUpdateRateFast;
  *(v4 + 152) = self->_guidedFilterUnconfidentWeight;
  *(v4 + 156) = self->_guidedFilterMinDistToDeweight;
  *(v4 + 272) = self->_foregroundMaskDilationRadius;
  *(v4 + 276) = self->_infConvolutionDownsampling;
  *(v4 + 280) = self->_laplacianLimitingDownsampling;
  *(v4 + 284) = self->_laplacianLimitingBlurSize;
  *(v4 + 160) = self->_referenceDisparity;
  *(v4 + 164) = self->_deltaCanonicalDisparity;
  *(v4 + 168) = self->_alphaCoeffFilterColorStd;
  *(v4 + 172) = self->_alphaCoeffFilterColorStdFast;
  *(v4 + 176) = self->_alphaMaxLaplacian;
  *(v4 + 180) = self->_alphaContrastExponent;
  *(v4 + 184) = self->_alphaGammaExponent;
  *(v4 + 188) = self->_disparityFilterColorStd;
  *(v4 + 192) = self->_disparityFilterUpdateRate;
  *(v4 + 196) = self->_minimumConfidenceToKeepDisparity;
  *(v4 + 200) = self->_maximumSimilarityToKeepDisparity;
  *(v4 + 204) = self->_maxDisparityFillingInconsistency;
  *(v4 + 208) = self->_maxDisparityFillingDistFromForeground;
  *(v4 + 212) = self->_maxDistToPushDisparityEdgesFwd;
  *(v4 + 216) = self->_maxDistToPushDisparityEdgesRev;
  *(v4 + 220) = self->_disparityPushingBackgroundToForegroundDisparityDifference;
  *(v4 + 224) = self->_renderingDisparityUpdateRate;
  *(v4 + 228) = self->_renderingDisparityBlurRadius;
  *(v4 + 232) = self->_offsetNoiseBitCalculation;
  *(v4 + 236) = self->_gainMultiplierNoiseBitCalculation;
  *(v4 + 240) = self->_luxMultiplierNoiseBitCalculation;
  *(v4 + 244) = self->_renderingLensFocalLength;
  *(v4 + 248) = self->_fNumberMultiplier;
  *(v4 + 252) = self->_focusThresholdHardness;
  *(v4 + 256) = self->_focusUpdateRateSlow;
  *(v4 + 260) = self->_focusUpdateRateFast;
  *(v4 + 264) = self->_maxFramesWithoutFace;
  *(v4 + 268) = self->_faceSizeRatioInFocus;
  *(v4 + 288) = self->_relightDisplayMode;
  objc_storeStrong((v4 + 456), self->_faceKitProcessOutputOverride);
  *(v4 + 292) = self->_relightEffectStrength;
  *(v4 + 296) = self->_portraitStyleStrengthOverride;
  *(v4 + 300) = self->_focusDistanceOverride;
  *(v4 + 304) = self->_stageLightStateMachineIntensityIncrement;
  *(v4 + 464) = self->_stageLightStageMachineMaxOrientationDifference;
  *(v4 + 308) = self->_sdofStateMachineIntensityIncrement;
  *(v4 + 472) = self->_sdofStateMachineMaxOrientationDifference;
  *(v4 + 11) = self->_modulateFocalRatio;
  *(v4 + 312) = self->_stableBackgroundDisparitySumVariance;
  *(v4 + 316) = self->_unstableBackgroundDisparitySumVariance;
  *(v4 + 320) = self->_stableInvalidDisparityRatio;
  *(v4 + 324) = self->_unstableInvalidDisparityRatio;
  *(v4 + 332) = self->_backgroundSeparationLikelihoodLow;
  *(v4 + 328) = self->_backgroundSeparationLikelihoodHigh;
  *(v4 + 336) = self->_depthQualityMetricFocalPlaneOffsetMeters;
  *(v4 + 480) = self->_focusStatisticsXTileCount;
  *(v4 + 488) = self->_focusStatisticsYTileCount;
  *(v4 + 348) = self->_guidedFilterWidth;
  *(v4 + 352) = self->_guidedFilterHeight;
  *(v4 + 496) = self->_proxyToFaceEffectLerpNumFrames;
  *(v4 + 356) = self->_rawShiftInvalidThreshold;
  *(v4 + 340) = self->_segmentationBinarizationThreshold;
  *(v4 + 344) = self->_depthErosionRadius;
  return v4;
}

- (id)initForVideoPipelineDevice:(unint64_t)device
{
  MEMORY[0x1EEE9AC00](self, a2, device);
  v7 = *MEMORY[0x1E69E9840];
  v6[2] = v3;
  v6[1] = 0;
  v6[0] = 0;
  v5 = v6;
  operator new();
}

@end