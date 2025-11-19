@interface AVCaptureDeviceFormat
- ($2825F4736939C4A6D3AD43837233062D)_defaultPhotoDimensionsInNativeSensorOrientationWithHighResolutionCaptureEnabled:(BOOL)a3;
- ($2825F4736939C4A6D3AD43837233062D)defaultPhotoDimensionsWithHighResolutionCaptureEnabled:(BOOL)a3;
- ($2825F4736939C4A6D3AD43837233062D)previewDimensions;
- ($2825F4736939C4A6D3AD43837233062D)sensorDimensions;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)defaultActiveMaxFrameDurationForSessionPreset:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)defaultActiveMinFrameDurationForSessionPreset:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)highestSupportedVideoFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lowestSupportedVideoFrameDuration;
- (AVCaptureDeviceFormat)initWithFigCaptureSourceFormat:(id)a3 fcSourceAttributes:(id)a4;
- (AVExposureBiasRange)systemRecommendedExposureBiasRange;
- (AVFrameRateRange)videoFrameRateRangeForCenterStage;
- (AVFrameRateRange)videoFrameRateRangeForPortraitEffect;
- (AVFrameRateRange)videoFrameRateRangeForReactionEffectsInProgress;
- (AVFrameRateRange)videoFrameRateRangeForStudioLight;
- (AVMediaType)mediaType;
- (AVZoomRange)systemRecommendedVideoZoomRange;
- (BOOL)isApplyStandardSmartStyleForStillsWhenNoStyleRequestedSupported;
- (BOOL)isAutoVideoFrameRateSupported;
- (BOOL)isCameraCalibrationDataDeliverySupported;
- (BOOL)isCameraLensSmudgeDetectionSupported;
- (BOOL)isContentAwareDistortionCorrectionSupported;
- (BOOL)isDCProcessingWithDepthSupported;
- (BOOL)isDeepFusionSupported;
- (BOOL)isDeferredPhotoProcessingSupported;
- (BOOL)isDemosaicedRawConfigurationWithDepthSupported;
- (BOOL)isDemosaicedRawSupported;
- (BOOL)isDigitalFlashSupported;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFastCapturePrioritizationSupported;
- (BOOL)isGlobalToneMappingSupported;
- (BOOL)isHDRSupported;
- (BOOL)isHighPhotoQualitySupported;
- (BOOL)isHighestPhotoQualitySupported;
- (BOOL)isIrisSupported;
- (BOOL)isIrisVideoStabilizationSupported;
- (BOOL)isLowLightVideoCaptureSupported;
- (BOOL)isManualFramingSupported;
- (BOOL)isMomentCaptureMovieRecordingSupported;
- (BOOL)isMultiCamSupported;
- (BOOL)isNonDestructiveCropSupported;
- (BOOL)isPhotoFormat;
- (BOOL)isPortraitAutoSuggestSupported;
- (BOOL)isPortraitEffectsMatteStillImageDeliverySupported;
- (BOOL)isSISSupported;
- (BOOL)isSemanticStyleRenderingSupported;
- (BOOL)isSmartFramingSupported;
- (BOOL)isSmartStyleRenderingSupported;
- (BOOL)isSpatialOverCaptureSupported;
- (BOOL)isSpatialVideoCaptureSupported;
- (BOOL)isStereoFusionSupported;
- (BOOL)isStillImageDepthSupported;
- (BOOL)isStillImageDisparitySupported;
- (BOOL)isStreamingDepthSupported;
- (BOOL)isStreamingDisparitySupported;
- (BOOL)isUltraHighResolutionZeroShutterLagSupported;
- (BOOL)isVariableFrameRateVideoCaptureSupported;
- (BOOL)isVideoBinned;
- (BOOL)isVideoGreenGhostMitigationSupported;
- (BOOL)isVideoHDRSupported;
- (BOOL)isVideoHDRSuspensionSupported;
- (BOOL)isVideoStabilizationModeSupported:(AVCaptureVideoStabilizationMode)videoStabilizationMode;
- (BOOL)isVideoStabilizationStrengthSupported:(int64_t)a3;
- (BOOL)isVideoStabilizationSupported;
- (BOOL)isVisionDataDeliverySupported;
- (BOOL)isWideColorSupported;
- (BOOL)isZeroShutterLagSupported;
- (BOOL)isZeroShutterLagWithDepthSupported;
- (BOOL)maxPhotoDimensionsAreUltraHighResolution:(id)a3 privateDimensionsEnabled:(BOOL)a4;
- (BOOL)prefersVideoHDREnabledForSessionPreset:(id)a3;
- (BOOL)supportsHighResolutionStillImageOutput;
- (BOOL)supportsRedEyeReduction;
- (BOOL)validateMaxPhotoDimensions:(id)a3 privateDimensionsEnabled:(BOOL)a4;
- (CGFloat)videoMaxZoomFactor;
- (CGFloat)videoMaxZoomFactorForCenterStage;
- (CGFloat)videoMaxZoomFactorForDepthDataDelivery;
- (CGFloat)videoMinZoomFactorForDepthDataDelivery;
- (CGFloat)videoZoomFactorUpscaleThreshold;
- (CMFormatDescriptionRef)formatDescription;
- (CMTime)maxExposureDuration;
- (CMTime)minExposureDuration;
- (NSArray)secondaryNativeResolutionZoomFactors;
- (NSArray)supportedColorSpaces;
- (NSArray)supportedDepthDataFormats;
- (NSArray)supportedVideoZoomFactorsForDepthDataDelivery;
- (NSArray)supportedVideoZoomRangesForDepthDataDelivery;
- (NSArray)unsupportedCaptureOutputClasses;
- (NSArray)videoSupportedFrameRateRanges;
- (double)focalLengthIn35mmFilmWithGeometricDistortionCorrection:(BOOL)a3;
- (double)videoMaxZoomFactorForCinematicVideo;
- (double)videoMinZoomFactorForCinematicVideo;
- (float)defaultPortraitLightingEffectStrength;
- (float)defaultSimulatedAperture;
- (float)geometricDistortionCorrectedVideoFieldOfView;
- (float)hardwareCost;
- (float)maxISO;
- (float)maxPortraitLightingEffectStrength;
- (float)maxSimulatedAperture;
- (float)minISO;
- (float)minPortraitLightingEffectStrength;
- (float)minSimulatedAperture;
- (float)spatialOverCapturePercentage;
- (float)videoFieldOfView;
- (float)videoFieldOfViewForAspectRatio:(id)a3 geometricDistortionCorrected:(BOOL)a4;
- (id)AVCaptureSessionPresets;
- (id)_stringForMediaType:(unsigned int)a3 formatDescription:(opaqueCMFormatDescription *)a4 frameRateRanges:(id)a5;
- (id)_supportedMaxPhotoDimensionsPrivateDimensionsEnabled:(BOOL)a3;
- (id)debugDescription;
- (id)description;
- (id)figCaptureSourceDepthDataFormat;
- (id)figCaptureSourceVideoFormat;
- (id)optimizedVideoPreviewFilterNames;
- (id)supportedDynamicAspectRatios;
- (id)supportedSemanticSegmentationMatteTypes;
- (id)supportedZoomRangesForCinematicVideo;
- (id)videoFrameRateRangeForBackgroundReplacement;
- (id)videoFrameRateRangeForCenterStageForContinuityCamera;
- (id)videoFrameRateRangeForCinematicVideo;
- (int)baseSensorPowerConsumption;
- (int)ispPowerConsumption;
- (int)supportedStabilizationMethod;
- (int)variableSensorPowerConsumption;
- (int64_t)videoHDRFlavor;
- (unsigned)internalDemosaicedRawPixelFormat;
- (unsigned)supportedDemosaicedRawPixelFormat;
- (unsigned)supportedRawPixelFormat;
- (void)_initializeSupportedMaxPhotoDimensions;
- (void)dealloc;
- (void)setContinuousZoomWithDepthEnabled:(BOOL)a3;
@end

@implementation AVCaptureDeviceFormat

- (id)figCaptureSourceVideoFormat
{
  if ([(FigCaptureSourceFormat *)self->_internal->sourceFormat mediaType]== 1986618469 || [(FigCaptureSourceFormat *)self->_internal->sourceFormat mediaType]== 1885564004)
  {
    return self->_internal->sourceFormat;
  }

  else
  {
    return 0;
  }
}

- (NSArray)videoSupportedFrameRateRanges
{
  if (!self->_internal->videoSupportedFrameRateRanges)
  {
    if ([(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat])
    {
      [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
      v4 = v3;
      v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
    }

    else
    {
      if (![(AVCaptureDeviceFormat *)self figCaptureSourceDepthDataFormat])
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
        goto LABEL_7;
      }

      [-[AVCaptureDeviceFormat figCaptureSourceDepthDataFormat](self "figCaptureSourceDepthDataFormat")];
      v4 = v6;
      v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceDepthDataFormat];
    }

    [v5 maxSupportedFrameRate];
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{+[AVFrameRateRange frameRateRangeWithMinRate:maxFrameRate:](AVFrameRateRange, "frameRateRangeWithMinRate:maxFrameRate:", v4, v7), 0}];
LABEL_7:
    self->_internal->videoSupportedFrameRateRanges = v8;
  }

  return self->_internal->videoSupportedFrameRateRanges;
}

- (BOOL)isPhotoFormat
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isPhotoFormat];
}

- (void)_initializeSupportedMaxPhotoDimensions
{
  v2 = self;
  v3 = [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  v4 = [(AVCaptureDeviceFormat *)v2 figCaptureSourceVideoFormat];
  if (v3)
  {
    v5 = [v4 geometricDistortionCorrectionFormat];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = [(AVCaptureDeviceFormat *)v2 figCaptureSourceVideoFormat];
    goto LABEL_7;
  }

  if ([(AVCaptureDeviceFormat *)v2 figCaptureSourceDepthDataFormat])
  {
    v5 = [(AVCaptureDeviceFormat *)v2 figCaptureSourceDepthDataFormat];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(AVCaptureDeviceFormat *)v2 defaultPhotoDimensionsWithHighResolutionCaptureEnabled:0];
  v25 = v7;
  [v7 addObject:{objc_msgSend(objc_alloc(MEMORY[0x1E698F7F0]), "initWithDimensions:deferredPhotoProxyDimensions:isPrivate:flavor:maxUpscalingDimensions:", v8, 0, 0, 0, 0)}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [v6 highResStillImageDimensions];
  v9 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v24 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        if (v2->_internal->mountedInPortraitOrientation)
        {
          v14 = v2;
          v15 = objc_alloc(MEMORY[0x1E698F7F0]);
          v16 = AVCaptureFlippedDimensions([v13 dimensions]);
          v17 = AVCaptureFlippedDimensions([v13 deferredPhotoProxyDimensions]);
          v18 = [v13 isPrivate];
          v19 = v8;
          v20 = [v13 flavor];
          v21 = AVCaptureFlippedDimensions([v13 maxUpscalingDimensions]);
          v22 = v15;
          v2 = v14;
          v11 = v24;
          v23 = v20;
          v8 = v19;
          v13 = [v22 initWithDimensions:v16 deferredPhotoProxyDimensions:v17 isPrivate:v18 flavor:v23 maxUpscalingDimensions:v21];
        }

        if (([v13 dimensionsAreEqualToDimensions:v8] & 1) == 0)
        {
          [v25 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v10);
  }

  v2->_internal->supportedMaxPhotoDimensions = [v25 copy];
}

- (BOOL)isSmartFramingSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isSmartFramingSupported];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lowestSupportedVideoFrameDuration
{
  *retstr = **&MEMORY[0x1E6960C88];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(AVCaptureDeviceFormat *)self videoSupportedFrameRateRanges];
  result = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          [v9 minFrameDuration];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        v10 = *retstr;
        if (CMTimeCompare(&time1, &v10) < 0)
        {
          if (v9)
          {
            [v9 minFrameDuration];
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          *retstr = time1;
        }

        v8 = (v8 + 1);
      }

      while (v6 != v8);
      result = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)highestSupportedVideoFrameDuration
{
  *retstr = **&MEMORY[0x1E6960C80];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(AVCaptureDeviceFormat *)self videoSupportedFrameRateRanges];
  result = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          [v9 maxFrameDuration];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        v10 = *retstr;
        if (CMTimeCompare(&time1, &v10) >= 1)
        {
          if (v9)
          {
            [v9 maxFrameDuration];
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          *retstr = time1;
        }

        v8 = (v8 + 1);
      }

      while (v6 != v8);
      result = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (CGFloat)videoMaxZoomFactor
{
  if (![(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat])
  {
    return 1.0;
  }

  [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  return v3;
}

- (NSArray)supportedDepthDataFormats
{
  internal = self->_internal;
  if (!internal->supportedDepthDataFormats)
  {
    if (internal->depthDataFormatsDisabled)
    {
      v4 = 0;
    }

    else
    {
      v4 = [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
    }

    if ([v4 count])
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            if (([v10 isPrivate] & 1) == 0)
            {
              v11 = [[AVCaptureDeviceFormat alloc] initWithFigCaptureSourceFormat:v10 fcSourceAttributes:self->_internal->fcSourceAttributes];
              [v5 addObject:v11];
            }
          }

          v7 = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
        }

        while (v7);
      }

      self->_internal->supportedDepthDataFormats = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];
    }

    else
    {
      self->_internal->supportedDepthDataFormats = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }
  }

  return self->_internal->supportedDepthDataFormats;
}

- ($2825F4736939C4A6D3AD43837233062D)sensorDimensions
{
  v3 = [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  if (self->_internal->mountedInPortraitOrientation)
  {

    return AVCaptureFlippedDimensions(v3);
  }

  return v3;
}

- (CMFormatDescriptionRef)formatDescription
{
  internal = self->_internal;
  if (!internal->formatDescription)
  {
    if (internal->mountedInPortraitOrientation)
    {
      CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], [(FigCaptureSourceFormat *)internal->sourceFormat format], [(FigCaptureSourceFormat *)self->_internal->sourceFormat dimensions]>> 32, [(FigCaptureSourceFormat *)self->_internal->sourceFormat dimensions], 0, &self->_internal->formatDescription);
    }

    else
    {
      v4 = [(FigCaptureSourceFormat *)internal->sourceFormat formatDescription];
      if (v4)
      {
        v4 = CFRetain(v4);
      }

      self->_internal->formatDescription = v4;
    }
  }

  return self->_internal->formatDescription;
}

- (id)figCaptureSourceDepthDataFormat
{
  if ([(FigCaptureSourceFormat *)self->_internal->sourceFormat mediaType]== 1685091432)
  {
    return self->_internal->sourceFormat;
  }

  else
  {
    return 0;
  }
}

- (float)defaultSimulatedAperture
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  [v2 defaultSimulatedAperture];
  return result;
}

- (BOOL)isStillImageDisparitySupported
{
  if (self->_internal->depthDataFormatsDisabled)
  {
    return 0;
  }

  v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v5 isStillImageDisparitySupported];
}

- (BOOL)isStillImageDepthSupported
{
  if (self->_internal->depthDataFormatsDisabled)
  {
    return 0;
  }

  v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v5 isStillImageDepthSupported];
}

- (id)AVCaptureSessionPresets
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 AVCaptureSessionPresets];
}

- (BOOL)isStreamingDisparitySupported
{
  if (self->_internal->depthDataFormatsDisabled)
  {
    return 0;
  }

  v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v5 isStreamingDisparitySupported];
}

- (BOOL)isStreamingDepthSupported
{
  if (self->_internal->depthDataFormatsDisabled)
  {
    return 0;
  }

  v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v5 isStreamingDepthSupported];
}

- (BOOL)isVideoGreenGhostMitigationSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isVideoGreenGhostMitigationSupported];
}

- (float)defaultPortraitLightingEffectStrength
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  if (!v2)
  {
    return NAN;
  }

  [v2 defaultPortraitLightingEffectStrength];
  return result;
}

- (BOOL)isPortraitAutoSuggestSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isPortraitAutoSuggestSupported];
}

- (NSArray)supportedColorSpaces
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 supportedColorSpaces];
}

- (BOOL)isSemanticStyleRenderingSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isSemanticStyleRenderingSupported];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureDeviceFormat debugDescription](self, "debugDescription")];
}

- (id)debugDescription
{
  [(AVCaptureDeviceFormat *)self mediaType];
  v3 = AVOSTypeForString();
  v4 = [(AVCaptureDeviceFormat *)self formatDescription];
  v5 = [(AVCaptureDeviceFormat *)self videoSupportedFrameRateRanges];

  return [(AVCaptureDeviceFormat *)self _stringForMediaType:v3 formatDescription:v4 frameRateRanges:v5];
}

- (AVMediaType)mediaType
{
  [(FigCaptureSourceFormat *)self->_internal->sourceFormat mediaType];

  return AVStringForOSType();
}

- (float)videoFieldOfView
{
  if ([(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat])
  {
    mountedInPortraitOrientation = self->_internal->mountedInPortraitOrientation;
    v4 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
    if (mountedInPortraitOrientation)
    {

      [v4 verticalFieldOfViewForAspectRatio:0];
      return result;
    }
  }

  else
  {
    if (![(AVCaptureDeviceFormat *)self figCaptureSourceDepthDataFormat])
    {
      return 0.0;
    }

    v4 = [(AVCaptureDeviceFormat *)self figCaptureSourceDepthDataFormat];
  }

  [v4 fieldOfView];
  return result;
}

- (float)geometricDistortionCorrectedVideoFieldOfView
{
  if ([-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")])
  {
    v3 = [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
LABEL_7:

    [v3 geometricDistortionCorrectedFieldOfView];
    return result;
  }

  mountedInPortraitOrientation = self->_internal->mountedInPortraitOrientation;
  v3 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  if (!mountedInPortraitOrientation)
  {
    goto LABEL_7;
  }

  [v3 verticalGeometricDistortionCorrectedFieldOfViewForAspectRatio:0];
  return result;
}

- (BOOL)isVideoBinned
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isBinned];
}

- (int)supportedStabilizationMethod
{
  if ([(AVCaptureDeviceFormat *)self isVideoStabilizationModeSupported:1])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (CGFloat)videoZoomFactorUpscaleThreshold
{
  if (![(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat])
  {
    return 1.0;
  }

  [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  return v3;
}

- (NSArray)secondaryNativeResolutionZoomFactors
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 secondaryNativeResolutionZoomFactors];
}

- (AVZoomRange)systemRecommendedVideoZoomRange
{
  if ([(FigCaptureSourceFormat *)self->_internal->sourceFormat mediaType]!= 1986618469)
  {
    return 0;
  }

  [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  if (v3 <= 1.0)
  {
    return 0;
  }

  v4 = [-[NSDictionary objectForKeyedSubscript:](self->_internal->fcSourceAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990138]), "intValue"}];
  if (v4 == 15)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(AVCaptureDeviceFormat *)self isHighestPhotoQualitySupported]? 5.0 : 3.0;
  if ([-[NSDictionary objectForKeyedSubscript:](self->_internal->fcSourceAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990220]), "intValue"}] != 1)
  {
    return 0;
  }

  v7 = [(NSDictionary *)self->_internal->fcSourceAttributes objectForKeyedSubscript:*MEMORY[0x1E69900D0]];
  if (v7)
  {
    [objc_msgSend(v7 "lastObject")];
    v6 = v6 * v8;
  }

  if (AVGestaltGetBoolAnswer(@"AVGQQ4PFVIJ6WPTAHHYTAR5J5O7YNA"))
  {
    if (v5 == 8 || v5 == 2)
    {
      v6 = v6 + v6;
    }
  }

  if (v6 == -1.0)
  {
    return 0;
  }

  return [AVZoomRange zoomRangeWithMinZoomFactor:1.0 maxZoomFactor:v6];
}

- (BOOL)isHighestPhotoQualitySupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isStillImageStabilizationSupported];
}

- (AVExposureBiasRange)systemRecommendedExposureBiasRange
{
  if ([(FigCaptureSourceFormat *)self->_internal->sourceFormat mediaType]!= 1986618469)
  {
    return 0;
  }

  LODWORD(v2) = -2.0;
  LODWORD(v3) = 2.0;

  return [AVExposureBiasRange exposureBiasRangeWithMinExposureBias:v2 maxExposureBias:v3];
}

- (float)minISO
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  [v2 minISO];
  return result;
}

- (float)maxISO
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  [v2 maxISO];
  return result;
}

- (CMTime)minExposureDuration
{
  result = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  if (result)
  {

    return [(CMTime *)result minExposureDuration];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (CMTime)maxExposureDuration
{
  result = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  if (result)
  {

    return [(CMTime *)result maxExposureDuration];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (BOOL)isVideoHDRSupported
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(AVCaptureDeviceFormat *)self supportedColorSpaces];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (!AVCaptureColorSpaceIsHDR([*(*(&v11 + 1) + 8 * i) integerValue]))
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:
  if (([-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")] & 1) == 0 && !objc_msgSend(-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self, "figCaptureSourceVideoFormat"), "isSIFRSupported"))
  {
    return 0;
  }

  return v8;
}

- (BOOL)isWideColorSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isWideColorSupported];
}

- (BOOL)isDeferredPhotoProcessingSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isDeferredPhotoProcessingSupported];
}

- (BOOL)isDeepFusionSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isDeepFusionSupported];
}

- (BOOL)isMultiCamSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isMultiCamSupported];
}

- (BOOL)isSpatialVideoCaptureSupported
{
  BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQBWQSOG5QWWG276TG2HH4RGJZDA");
  if (BoolAnswer)
  {
    v4 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

    LOBYTE(BoolAnswer) = [v4 isStereoVideoCaptureSupported];
  }

  return BoolAnswer;
}

- (BOOL)isVisionDataDeliverySupported
{
  if (self->_internal->isDepthDataFormat)
  {
    return 0;
  }

  [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  if (FigCapturePixelFormatIsPackedBayerRaw())
  {
    return 0;
  }

  v4 = [(NSDictionary *)self->_internal->fcSourceAttributes objectForKeyedSubscript:*MEMORY[0x1E69902C8]];

  return [v4 BOOLValue];
}

- (BOOL)isCameraCalibrationDataDeliverySupported
{
  v2 = [(NSDictionary *)self->_internal->fcSourceAttributes objectForKeyedSubscript:*MEMORY[0x1E69900E0]];

  return [v2 BOOLValue];
}

- (float)minSimulatedAperture
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  [v2 minSimulatedAperture];
  return result;
}

- (float)maxSimulatedAperture
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  [v2 maxSimulatedAperture];
  return result;
}

- (float)minPortraitLightingEffectStrength
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  if (!v2)
  {
    return NAN;
  }

  [v2 minPortraitLightingEffectStrength];
  return result;
}

- (float)maxPortraitLightingEffectStrength
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  if (!v2)
  {
    return NAN;
  }

  [v2 maxPortraitLightingEffectStrength];
  return result;
}

- (BOOL)isFastCapturePrioritizationSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isResponsiveShutterSupported];
}

- (BOOL)isZeroShutterLagSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isZeroShutterLagSupported];
}

- (BOOL)isZeroShutterLagWithDepthSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isZeroShutterLagWithDepthSupported];
}

- (BOOL)isHighPhotoQualitySupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isHighPhotoQualitySupported];
}

- (BOOL)isSmartStyleRenderingSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isSmartStyleRenderingSupported];
}

- (BOOL)isCameraLensSmudgeDetectionSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isLensSmudgeDetectionSupported];
}

- (BOOL)isSpatialOverCaptureSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isSpatialOverCaptureSupported];
}

- (id)supportedZoomRangesForCinematicVideo
{
  [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  if (v2 <= 0.0)
  {
    return MEMORY[0x1E695E0F0];
  }

  v4 = [AVZoomRange zoomRangeWithMinZoomFactor:2.0 maxZoomFactor:v2];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:1];
}

- (BOOL)isIrisVideoStabilizationSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isIrisVideoStabilizationSupported];
}

- (unsigned)supportedRawPixelFormat
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 supportedRawPixelFormat];
}

- (BOOL)supportsRedEyeReduction
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isRedEyeReductionSupported];
}

- (BOOL)isSISSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isStillImageStabilizationSupported];
}

- (BOOL)isStereoFusionSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isStereoFusionSupported];
}

- (int64_t)videoHDRFlavor
{
  if ([-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")])
  {
    return 2;
  }

  else
  {
    return [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  }
}

- (BOOL)isHDRSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isHDRSupported];
}

- (BOOL)isDigitalFlashSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isDigitalFlashSupported];
}

- (BOOL)isIrisSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isIrisSupported];
}

- (BOOL)isPortraitEffectsMatteStillImageDeliverySupported
{
  internal = self->_internal;
  if (!internal->isDepthDataFormat)
  {
    return 0;
  }

  [-[NSDictionary objectForKeyedSubscript:](internal->fcSourceAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990218], v2, v3), "floatValue"}];
  return v5 > 0.0;
}

- (id)supportedSemanticSegmentationMatteTypes
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(NSDictionary *)self->_internal->fcSourceAttributes objectForKeyedSubscript:*MEMORY[0x1E6990270]];
  if ([v4 count])
  {
    v5 = *MEMORY[0x1E69917E8];
    v19[0] = *MEMORY[0x1E69917E0];
    v19[1] = v5;
    v20[0] = @"AVSemanticSegmentationMatteTypeHair";
    v20[1] = @"AVSemanticSegmentationMatteTypeSkin";
    v6 = *MEMORY[0x1E69917D8];
    v19[2] = *MEMORY[0x1E69917F8];
    v19[3] = v6;
    v20[2] = @"AVSemanticSegmentationMatteTypeTeeth";
    v20[3] = @"AVSemanticSegmentationMatteTypeGlasses";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = [v7 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11)];
          if (v12)
          {
            [v3 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v9);
    }
  }

  return [MEMORY[0x1E695DEC8] arrayWithArray:v3];
}

- (BOOL)isMomentCaptureMovieRecordingSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isMomentCaptureMovieRecordingSupported];
}

- (BOOL)isContentAwareDistortionCorrectionSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 intelligentDistortionCorrectionSupported];
}

- (BOOL)isDemosaicedRawSupported
{
  v3 = [(AVCaptureDeviceFormat *)self internalDemosaicedRawPixelFormat];
  if (v3)
  {
    LOBYTE(v3) = [(AVCaptureDeviceFormat *)self supportedDemosaicedRawPixelFormat]!= 0;
  }

  return v3;
}

- (unsigned)internalDemosaicedRawPixelFormat
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 internalDemosaicedRawPixelFormat];
}

- (unsigned)supportedDemosaicedRawPixelFormat
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 supportedDemosaicedRawPixelFormat];
}

- (BOOL)isUltraHighResolutionZeroShutterLagSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isUltraHighResolutionZeroShutterLagSupported];
}

- (BOOL)isVariableFrameRateVideoCaptureSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isVariableFrameRateVideoCaptureSupported];
}

- (BOOL)isLowLightVideoCaptureSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isLowLightVideoCaptureSupported];
}

- (BOOL)isVideoHDRSuspensionSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isSIFRSupported];
}

- (NSArray)supportedVideoZoomRangesForDepthDataDelivery
{
  if (!-[NSArray count](-[AVCaptureDeviceFormat supportedDepthDataFormats](self, "supportedDepthDataFormats"), "count") && ![-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")])
  {
    return MEMORY[0x1E695E0F0];
  }

  [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  internal = self->_internal;
  if (internal->continuousZoomWithDepthEnabled && (v5 = v3, v3 > 0.0))
  {
    [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](internal->fcSourceAttributes objectForKeyedSubscript:{*MEMORY[0x1E69902B0]), "firstObject"), "floatValue"}];
    if (v6 == 0.0)
    {
      v6 = 1.0;
    }

    v23 = [AVZoomRange zoomRangeWithMinZoomFactor:v6 maxZoomFactor:v5];
    return [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [(NSDictionary *)self->_internal->fcSourceAttributes objectForKeyedSubscript:*MEMORY[0x1E69902B0]];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          [v14 floatValue];
          v16 = v15;
          [v14 floatValue];
          [v8 addObject:{+[AVZoomRange zoomRangeWithMinZoomFactor:maxZoomFactor:](AVZoomRange, "zoomRangeWithMinZoomFactor:maxZoomFactor:", v16, v17)}];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v11);
    }

    return [v8 copy];
  }
}

- (BOOL)isDCProcessingWithDepthSupported
{
  v2 = [(NSDictionary *)self->_internal->fcSourceAttributes objectForKeyedSubscript:*MEMORY[0x1E6990130]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E698FA20]];

  return [v3 BOOLValue];
}

- (BOOL)isDemosaicedRawConfigurationWithDepthSupported
{
  v2 = [(NSDictionary *)self->_internal->fcSourceAttributes objectForKeyedSubscript:*MEMORY[0x1E6990130]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E698FA28]];

  return [v3 BOOLValue];
}

- (BOOL)supportsHighResolutionStillImageOutput
{
  v3 = [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  v4 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  if (v3)
  {
    v5 = [v4 geometricDistortionCorrectionFormat];
  }

  else
  {
    if (!v4)
    {
      return [(AVCaptureDeviceFormat *)self figCaptureSourceDepthDataFormat]!= 0;
    }

    v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  }

  return [v5 isHighResStillImageSupported];
}

- (BOOL)isNonDestructiveCropSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isNonDestructiveCropSupported];
}

- (BOOL)isApplyStandardSmartStyleForStillsWhenNoStyleRequestedSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isApplyStandardSmartStyleForStillsWhenNoStyleRequestedSupported];
}

- (id)_stringForMediaType:(unsigned int)a3 formatDescription:(opaqueCMFormatDescription *)a4 frameRateRanges:(id)a5
{
  CMFormatDescriptionGetMediaSubType(a4);
  v9 = MEMORY[0x1E696AD60];
  v10 = AVStringForOSType();
  v11 = [v9 stringWithFormat:@"'%@'/'%@' ", v10, AVStringForOSType()];
  if (a3 > 1936684397)
  {
    if (a3 == 1936684398)
    {
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(a4);
      [v11 appendFormat:@"SR=%0.0f, FF=%u, BPP=%u, FPP=%u, BPF=%u, CH=%u, BPC=%u", *&StreamBasicDescription->mSampleRate, StreamBasicDescription->mFormatFlags, StreamBasicDescription->mBytesPerPacket, StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mBytesPerFrame, StreamBasicDescription->mChannelsPerFrame, StreamBasicDescription->mBitsPerChannel, time.value, *&time.timescale, time.epoch];
      return v11;
    }

    v12 = 1986618469;
LABEL_6:
    if (a3 != v12)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (a3 != 1685091432)
  {
    v12 = 1885564004;
    goto LABEL_6;
  }

LABEL_7:
  if ([a5 count])
  {
    [objc_msgSend(a5 "firstObject")];
    v14 = v13;
    [objc_msgSend(a5 "firstObject")];
    v16 = v15;
  }

  else
  {
    v16 = 0;
    v14 = 0;
  }

  if (a3 == 1885564004)
  {
    [v11 appendFormat:@"max points: %d, {%2d-%3d fps} ", CMPointCloudFormatDescriptionGetNumberOfPoints(), v14, v16, v59];
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(a4);
    [v11 appendFormat:@"%4dx%4d, {%2d-%3d fps}", Dimensions, HIDWORD(*&Dimensions), v14, v16];
  }

  [v11 appendString:{@", photo dims:{"}];
  if ([(NSArray *)[(AVCaptureDeviceFormat *)self supportedMaxPhotoDimensions] count])
  {
    v17 = 0;
    do
    {
      if (v17)
      {
        [v11 appendString:{@", "}];
      }

      v18 = [(NSArray *)[(AVCaptureDeviceFormat *)self supportedMaxPhotoDimensions] objectAtIndexedSubscript:v17];
      time.value = 0;
      [v18 getValue:&time];
      [v11 appendFormat:@"%dx%d", time.value, HIDWORD(time.value)];
      ++v17;
    }

    while ([(NSArray *)[(AVCaptureDeviceFormat *)self supportedMaxPhotoDimensions] count]> v17);
  }

  [v11 appendString:@"}"];
  [(AVCaptureDeviceFormat *)self videoFieldOfView];
  if (v19 > 0.0)
  {
    [(AVCaptureDeviceFormat *)self videoFieldOfView];
    [v11 appendFormat:@", fov:%2.3f", v20];
  }

  [(AVCaptureDeviceFormat *)self geometricDistortionCorrectedVideoFieldOfView];
  if (v21 > 0.0)
  {
    [(AVCaptureDeviceFormat *)self geometricDistortionCorrectedVideoFieldOfView];
    v23 = v22;
    [(AVCaptureDeviceFormat *)self videoFieldOfView];
    if (v23 != v24)
    {
      [(AVCaptureDeviceFormat *)self geometricDistortionCorrectedVideoFieldOfView];
      [v11 appendFormat:@", gdc fov:%2.3f", v25];
    }
  }

  if ([(AVCaptureDeviceFormat *)self isVideoBinned])
  {
    [v11 appendFormat:@", binned"];
  }

  if ([(AVCaptureDeviceFormat *)self supportedStabilizationMethod]>= 1)
  {
    [v11 appendFormat:@", supports vis"];
    objc_msgSend(v11, "appendFormat:", @" (modes:");
    if ([(AVCaptureDeviceFormat *)self isVideoStabilizationModeSupported:1])
    {
      [v11 appendString:@" standard"];
    }

    if ([(AVCaptureDeviceFormat *)self isVideoStabilizationModeSupported:2])
    {
      [v11 appendString:{@", cinematic"}];
    }

    if ([(AVCaptureDeviceFormat *)self isVideoStabilizationModeSupported:3])
    {
      [v11 appendString:{@", extended"}];
    }

    if ([(AVCaptureDeviceFormat *)self isVideoStabilizationModeSupported:5])
    {
      [v11 appendString:{@", enhanced"}];
    }

    if ([(AVCaptureDeviceFormat *)self isVideoStabilizationModeSupported:4])
    {
      [v11 appendString:{@", preview"}];
    }

    if ([(AVCaptureDeviceFormat *)self isVideoStabilizationModeSupported:6])
    {
      [v11 appendString:{@", lowlatency"}];
    }

    [v11 appendString:@""]);
    objc_msgSend(v11, "appendString:", @" (max strength:");
    if ([(AVCaptureDeviceFormat *)self isVideoStabilizationStrengthSupported:4]|| [(AVCaptureDeviceFormat *)self isVideoStabilizationStrengthSupported:3]|| [(AVCaptureDeviceFormat *)self isVideoStabilizationStrengthSupported:2]|| [(AVCaptureDeviceFormat *)self isVideoStabilizationStrengthSupported:1])
    {
      v27 = FigCaptureVideoStabilizationStrengthToString();
    }

    else
    {
      v27 = @"Unknown";
    }

    [v11 appendString:v27];
    [v11 appendString:@""]);
  }

  [(AVCaptureDeviceFormat *)self videoMaxZoomFactor];
  v29 = v28;
  if (v28 > 1.0)
  {
    [(AVCaptureDeviceFormat *)self videoZoomFactorUpscaleThreshold];
    [v11 appendFormat:@", max zoom:%2.2f (upscales @%2.2f)", *&v29, v30];
  }

  v31 = [(NSArray *)[(AVCaptureDeviceFormat *)self secondaryNativeResolutionZoomFactors] count];
  v32 = [(AVCaptureDeviceFormat *)self secondaryNativeResolutionZoomFactors];
  if (v31 == 1)
  {
    [-[NSArray firstObject](v32 "firstObject")];
    [v11 appendFormat:@", secondary:%.2f", v33];
  }

  else if ([(NSArray *)v32 count]>= 2)
  {
    [-[NSArray firstObject](-[AVCaptureDeviceFormat secondaryNativeResolutionZoomFactors](self "secondaryNativeResolutionZoomFactors")];
    [v11 appendFormat:@", secondaries:{%.2f", v34];
    if ([(NSArray *)[(AVCaptureDeviceFormat *)self secondaryNativeResolutionZoomFactors] count]>= 2)
    {
      v35 = 1;
      do
      {
        [-[NSArray objectAtIndexedSubscript:](-[AVCaptureDeviceFormat secondaryNativeResolutionZoomFactors](self "secondaryNativeResolutionZoomFactors")];
        [v11 appendFormat:@", %.2f", v36];
        ++v35;
      }

      while ([(NSArray *)[(AVCaptureDeviceFormat *)self secondaryNativeResolutionZoomFactors] count]> v35);
    }

    [v11 appendString:@"}"];
  }

  if ([(AVCaptureDeviceFormat *)self systemRecommendedVideoZoomRange])
  {
    [(AVZoomRange *)[(AVCaptureDeviceFormat *)self systemRecommendedVideoZoomRange] minZoomFactor];
    v38 = v37;
    [(AVZoomRange *)[(AVCaptureDeviceFormat *)self systemRecommendedVideoZoomRange] maxZoomFactor];
    [v11 appendFormat:@", system zoom range:%.1f-%.1f", v38, v39];
  }

  if ([(AVCaptureDeviceFormat *)self autoFocusSystem])
  {
    [v11 appendFormat:@", AF System:%d", -[AVCaptureDeviceFormat autoFocusSystem](self, "autoFocusSystem")];
  }

  [(AVCaptureDeviceFormat *)self minISO];
  if (v40 > 0.0)
  {
    [(AVCaptureDeviceFormat *)self maxISO];
    if (v41 > 0.0)
    {
      [(AVCaptureDeviceFormat *)self minISO];
      v43 = v42;
      [(AVCaptureDeviceFormat *)self maxISO];
      [v11 appendFormat:@", ISO:%.1f-%.1f", *&v43, v44];
    }
  }

  if (self)
  {
    [(AVCaptureDeviceFormat *)self minExposureDuration];
    Seconds = CMTimeGetSeconds(&time);
    [(AVCaptureDeviceFormat *)self maxExposureDuration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
    Seconds = CMTimeGetSeconds(&time);
    memset(&time, 0, sizeof(time));
  }

  v46 = CMTimeGetSeconds(&time);
  if (Seconds > 0.0 && v46 > 0.0)
  {
    [v11 appendFormat:@", SS:%f-%f", *&Seconds, *&v46];
  }

  if ([(AVCaptureDeviceFormat *)self systemRecommendedExposureBiasRange])
  {
    [(AVExposureBiasRange *)[(AVCaptureDeviceFormat *)self systemRecommendedExposureBiasRange] minExposureBias];
    v48 = v47;
    [(AVExposureBiasRange *)[(AVCaptureDeviceFormat *)self systemRecommendedExposureBiasRange] maxExposureBias];
    [v11 appendFormat:@", system exposure bias range:%.1f-%.1f", *&v48, v49];
  }

  if ([(AVCaptureDeviceFormat *)self isVideoHDRSupported])
  {
    [v11 appendString:{@", supports HDR"}];
  }

  if ([(AVCaptureDeviceFormat *)self isWideColorSupported])
  {
    [v11 appendString:{@", supports wide color"}];
  }

  if ([(AVCaptureDeviceFormat *)self isExperimental])
  {
    [v11 appendString:{@", *EXPERIMENTAL*"}];
  }

  v50 = [(AVCaptureDeviceFormat *)self isStillImageDisparitySupported]|| [(AVCaptureDeviceFormat *)self isStillImageDepthSupported];
  v51 = [(AVCaptureDeviceFormat *)self isStreamingDisparitySupported]|| [(AVCaptureDeviceFormat *)self isStreamingDepthSupported];
  if (v50 || v51)
  {
    v52 = @", supports still image only depth";
    if (v50 && v51)
    {
      v52 = @", supports depth";
    }

    if (v50)
    {
      v53 = v52;
    }

    else
    {
      v53 = @", supports streaming only depth";
    }

    [v11 appendString:v53];
  }

  if ([(AVCaptureDeviceFormat *)self isMultiCamSupported])
  {
    [v11 appendString:{@", supports multicam"}];
  }

  if ([(AVCaptureDeviceFormat *)self isSpatialVideoCaptureSupported])
  {
    [v11 appendString:{@", supports spatial video capture"}];
  }

  if ([(AVCaptureDeviceFormat *)self isFastCapturePrioritizationSupported])
  {
    [v11 appendString:{@", supports responsive capture"}];
  }

  if ([(AVCaptureDeviceFormat *)self isZeroShutterLagSupported])
  {
    [v11 appendString:{@", supports zero shutter lag"}];
    if ([(AVCaptureDeviceFormat *)self isZeroShutterLagWithDepthSupported])
    {
      [v11 appendString:@" (with depth)"];
    }
  }

  if ([(AVCaptureDeviceFormat *)self isHighPhotoQualitySupported])
  {
    [v11 appendString:{@", supports high photo quality"}];
  }

  if ([(AVCaptureDeviceFormat *)self isHighestPhotoQualitySupported])
  {
    [v11 appendString:{@", supports highest photo quality"}];
  }

  if ([(AVCaptureDeviceFormat *)self isCenterStageSupported])
  {
    [v11 appendFormat:@", supports Center Stage"];
  }

  if ([-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")])
  {
    [v11 appendString:{@", supports CS RoI"}];
  }

  if ([(AVCaptureDeviceFormat *)self isSmartCropSupported]&& self->_internal->smartCropFeatureFlagEnabled)
  {
    [v11 appendFormat:@", supports Smart Crop"];
  }

  if ([(AVCaptureDeviceFormat *)self isBackgroundBlurSupported])
  {
    [v11 appendString:{@", supports Portrait Effect"}];
  }

  if ([(AVCaptureDeviceFormat *)self isStudioLightSupported])
  {
    [v11 appendString:{@", supports Studio Lighting"}];
  }

  if ([(AVCaptureDeviceFormat *)self reactionEffectsSupported])
  {
    [v11 appendString:{@", supports Reactions"}];
  }

  if ([(AVCaptureDeviceFormat *)self isBackgroundReplacementSupported])
  {
    [v11 appendString:{@", supports Background Replacement"}];
  }

  if ([(AVCaptureDeviceFormat *)self isSmartStyleRenderingSupported])
  {
    [v11 appendString:{@", supports Smart Style"}];
  }

  if ([(AVCaptureDeviceFormat *)self isCinematicVideoCaptureSupported])
  {
    [v11 appendString:{@", supports Cinematic Video"}];
  }

  if (self->_internal->dynamicAspectRatioSupported)
  {
    [v11 appendString:{@", supports Dynamic Aspect Ratio"}];
  }

  if ([(AVCaptureDeviceFormat *)self isCameraLensSmudgeDetectionSupported])
  {
    [v11 appendFormat:@", supports Smudge Detection", v55, v57, v58, v60, v61, v62, v63, time.value, *&time.timescale, time.epoch];
  }

  return v11;
}

- (AVCaptureDeviceFormat)initWithFigCaptureSourceFormat:(id)a3 fcSourceAttributes:(id)a4
{
  v20.receiver = self;
  v20.super_class = AVCaptureDeviceFormat;
  v6 = [(AVCaptureDeviceFormat *)&v20 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVCaptureDeviceFormatInternal);
    v6->_internal = v7;
    if (v7)
    {
      v6->_internal->sourceFormat = a3;
      v6->_internal->fcSourceAttributes = a4;
      if ([(FigCaptureSourceFormat *)v6->_internal->sourceFormat mediaType]== 1986618469)
      {
        [a3 sensorOrientation];
        v6->_internal->mountedInPortraitOrientation = AVCaptureIsSensorMountedInPortraitOrientation(v8);
        [(AVCaptureDeviceFormat *)v6 _initializeSupportedMaxPhotoDimensions];
        v6->_internal->backgroundBlurSupported = [(FigCaptureSourceFormat *)v6->_internal->sourceFormat isBackgroundBlurSupported];
        v6->_internal->backgroundBlurSupportedForContinuityCamera = [(FigCaptureSourceFormat *)v6->_internal->sourceFormat isBackgroundBlurSupportedForContinuityCapture];
        internal = v6->_internal;
        if (!internal->backgroundBlurSupported)
        {
          IsContinuityCapture = AVCaptureClientIsContinuityCapture();
          internal = v6->_internal;
          if (IsContinuityCapture)
          {
            internal->backgroundBlurSupported = internal->backgroundBlurSupportedForContinuityCamera;
            internal = v6->_internal;
          }
        }

        v6->_internal->studioLightingSupported = [(FigCaptureSourceFormat *)internal->sourceFormat isStudioLightingSupported];
        v6->_internal->studioLightingSupportedForContinuityCamera = [(FigCaptureSourceFormat *)v6->_internal->sourceFormat isStudioLightingSupportedForContinuityCapture];
        v11 = v6->_internal;
        if (!v11->studioLightingSupported)
        {
          v12 = AVCaptureClientIsContinuityCapture();
          v11 = v6->_internal;
          if (v12)
          {
            v11->studioLightingSupported = v11->studioLightingSupportedForContinuityCamera;
            v11 = v6->_internal;
          }
        }

        v6->_internal->reactionEffectsSupported = [(FigCaptureSourceFormat *)v11->sourceFormat reactionEffectsSupported];
        v6->_internal->reactionEffectsSupportedForContinuityCamera = [(FigCaptureSourceFormat *)v6->_internal->sourceFormat reactionEffectsSupportedForContinuityCapture];
        v13 = v6->_internal;
        if (!v13->reactionEffectsSupported)
        {
          v14 = AVCaptureClientIsContinuityCapture();
          v13 = v6->_internal;
          if (v14)
          {
            v13->reactionEffectsSupported = v13->reactionEffectsSupportedForContinuityCamera;
            v13 = v6->_internal;
          }
        }

        v6->_internal->backgroundReplacementSupported = [(FigCaptureSourceFormat *)v13->sourceFormat isBackgroundReplacementSupported];
        v6->_internal->backgroundReplacementSupportedForContinuityCamera = [(FigCaptureSourceFormat *)v6->_internal->sourceFormat isBackgroundReplacementSupportedForContinuityCapture];
        v15 = v6->_internal;
        if (!v15->backgroundReplacementSupported)
        {
          v16 = AVCaptureClientIsContinuityCapture();
          v15 = v6->_internal;
          if (v16)
          {
            v15->backgroundReplacementSupported = v15->backgroundReplacementSupportedForContinuityCamera;
            v15 = v6->_internal;
          }
        }

        v6->_internal->centerStageSupported = [(FigCaptureSourceFormat *)v15->sourceFormat isCinematicFramingSupported];
        v6->_internal->centerStageSupportedForContinuityCamera = [(FigCaptureSourceFormat *)v6->_internal->sourceFormat isCinematicFramingSupportedForContinuityCapture];
        if (!v6->_internal->centerStageSupported && AVCaptureClientIsContinuityCapture())
        {
          v6->_internal->centerStageSupported = v6->_internal->centerStageSupportedForContinuityCamera;
        }

        v6->_internal->smartCropFeatureFlagEnabled = _os_feature_enabled_impl();
        v6->_internal->smartCropSupported = [(FigCaptureSourceFormat *)v6->_internal->sourceFormat isSmartCropSupported];
        v17 = v6->_internal;
        if (v17->smartCropSupported && v17->smartCropFeatureFlagEnabled)
        {
          v17->centerStageSupported = 1;
          v17 = v6->_internal;
        }

        v6->_internal->constantColorSupported = [(FigCaptureSourceFormat *)v17->sourceFormat isConstantColorSupported];
        if ([-[NSDictionary objectForKeyedSubscript:](v6->_internal->fcSourceAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990138]), "intValue"}] == 9)
        {
          v6->_internal->depthDataFormatsDisabled = !v6->_internal->continuousZoomWithDepthEnabled;
        }

        v6->_internal->cinematicVideoSupported = [(FigCaptureSourceFormat *)v6->_internal->sourceFormat isCinematicVideoSupported];
        v6->_internal->dynamicAspectRatioSupported = [(FigCaptureSourceFormat *)v6->_internal->sourceFormat isDynamicAspectRatioSupported];
      }

      else if ([(FigCaptureSourceFormat *)v6->_internal->sourceFormat mediaType]== 1685091432)
      {
        [a3 sensorOrientation];
        v6->_internal->mountedInPortraitOrientation = AVCaptureIsSensorMountedInPortraitOrientation(v18);
        v6->_internal->isDepthDataFormat = 1;
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_7;
  }

  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  sourceFormat = self->_internal->sourceFormat;
  if (sourceFormat == *(*(a3 + 1) + 8))
  {
LABEL_7:
    LOBYTE(v5) = 1;
    return v5;
  }

  LOBYTE(v5) = [(FigCaptureSourceFormat *)sourceFormat isEqual:?];
  return v5;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    v4 = self->_internal;
    formatDescription = v4->formatDescription;
    if (formatDescription)
    {
      CFRelease(formatDescription);
      v4 = self->_internal;
    }
  }

  v6.receiver = self;
  v6.super_class = AVCaptureDeviceFormat;
  [(AVCaptureDeviceFormat *)&v6 dealloc];
}

- (CGFloat)videoMinZoomFactorForDepthDataDelivery
{
  [-[NSArray firstObject](-[AVCaptureDeviceFormat supportedVideoZoomRangesForDepthDataDelivery](self "supportedVideoZoomRangesForDepthDataDelivery")];
  if (v2 == 0.0)
  {
    return 1.0;
  }

  return v2;
}

- (CGFloat)videoMaxZoomFactorForDepthDataDelivery
{
  [-[NSArray firstObject](-[AVCaptureDeviceFormat supportedVideoZoomRangesForDepthDataDelivery](self "supportedVideoZoomRangesForDepthDataDelivery")];
  if (v2 == 0.0)
  {
    return 1.0;
  }

  return v2;
}

- (NSArray)supportedVideoZoomFactorsForDepthDataDelivery
{
  result = [(NSDictionary *)self->_internal->fcSourceAttributes objectForKeyedSubscript:*MEMORY[0x1E69902B0]];
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (CGFloat)videoMaxZoomFactorForCenterStage
{
  if ([(AVCaptureDeviceFormat *)self isCenterStageSupported])
  {
    return 1.0;
  }

  [(AVCaptureDeviceFormat *)self videoMaxZoomFactor];
  return result;
}

- (AVFrameRateRange)videoFrameRateRangeForCenterStage
{
  if (![(AVCaptureDeviceFormat *)self isCenterStageSupported])
  {
    return 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [(AVCaptureDeviceFormat *)self videoSupportedFrameRateRanges];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v7 = 0.0;
    v8 = 3.40282347e38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        [v10 minFrameRate];
        if (v11 < v8)
        {
          [v10 minFrameRate];
          v8 = v12;
        }

        [v10 maxFrameRate];
        if (v13 > v7)
        {
          [v10 maxFrameRate];
          v7 = v14;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 3.40282347e38;
  }

  v16 = [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  if (self->_internal->smartCropSupported)
  {
    v16 = [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  }

  v17 = v16;
  [v16 minSupportedFrameRate];
  if (v8 < v18)
  {
    [v17 minSupportedFrameRate];
    v8 = v19;
  }

  [v17 maxSupportedFrameRate];
  if (v8 > v20)
  {
    [v17 maxSupportedFrameRate];
    v8 = v21;
  }

  [v17 minSupportedFrameRate];
  if (v7 < v22)
  {
    [v17 minSupportedFrameRate];
    v7 = v23;
  }

  [v17 maxSupportedFrameRate];
  if (v7 > v24)
  {
    [v17 maxSupportedFrameRate];
    v7 = v25;
  }

  return [AVFrameRateRange frameRateRangeWithMinRate:v8 maxFrameRate:v7];
}

- (id)videoFrameRateRangeForCenterStageForContinuityCamera
{
  if (![(AVCaptureDeviceFormat *)self isCenterStageSupported]&& ![(AVCaptureDeviceFormat *)self isCenterStageSupportedForContinuityCamera])
  {
    return 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(AVCaptureDeviceFormat *)self videoSupportedFrameRateRanges];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    v7 = 0.0;
    v8 = 3.40282347e38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        [v10 minFrameRate];
        if (v11 < v8)
        {
          [v10 minFrameRate];
          v8 = v12;
        }

        [v10 maxFrameRate];
        if (v13 > v7)
        {
          [v10 maxFrameRate];
          v7 = v14;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 3.40282347e38;
  }

  v15 = [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  [v15 minSupportedFrameRate];
  if (v8 < v16)
  {
    [v15 minSupportedFrameRate];
    v8 = v17;
  }

  [v15 maxSupportedFrameRate];
  if (v8 > v18)
  {
    [v15 maxSupportedFrameRate];
    v8 = v19;
  }

  [v15 minSupportedFrameRate];
  if (v7 < v20)
  {
    [v15 minSupportedFrameRate];
    v7 = v21;
  }

  [v15 maxSupportedFrameRate];
  if (v7 > v22)
  {
    [v15 maxSupportedFrameRate];
    v7 = v23;
  }

  return [AVFrameRateRange frameRateRangeWithMinRate:v8 maxFrameRate:v7];
}

- (AVFrameRateRange)videoFrameRateRangeForPortraitEffect
{
  if (![(AVCaptureDeviceFormat *)self isBackgroundBlurSupported])
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(AVCaptureDeviceFormat *)self videoSupportedFrameRateRanges];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v16 count:16];
  v5 = *v18;
  v6 = 0.0;
  v7 = 3.40282347e38;
  do
  {
    v8 = 0;
    do
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      [v9 minFrameRate];
      if (v10 < v7)
      {
        [v9 minFrameRate];
        v7 = v11;
      }

      [v9 maxFrameRate];
      if (v12 > v6)
      {
        [v9 maxFrameRate];
        v6 = v13;
      }

      ++v8;
    }

    while (v4 != v8);
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v16 count:16];
  }

  while (v4);
  v14 = 30.0;
  if (v6 <= 30.0)
  {
    v14 = v6;
  }

  return [AVFrameRateRange frameRateRangeWithMinRate:v7 maxFrameRate:v14];
}

- (AVFrameRateRange)videoFrameRateRangeForStudioLight
{
  if (![(AVCaptureDeviceFormat *)self isStudioLightSupported])
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(AVCaptureDeviceFormat *)self videoSupportedFrameRateRanges];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v16 count:16];
  v5 = *v18;
  v6 = 0.0;
  v7 = 3.40282347e38;
  do
  {
    v8 = 0;
    do
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      [v9 minFrameRate];
      if (v10 < v7)
      {
        [v9 minFrameRate];
        v7 = v11;
      }

      [v9 maxFrameRate];
      if (v12 > v6)
      {
        [v9 maxFrameRate];
        v6 = v13;
      }

      ++v8;
    }

    while (v4 != v8);
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v16 count:16];
  }

  while (v4);
  v14 = 30.0;
  if (v6 <= 30.0)
  {
    v14 = v6;
  }

  return [AVFrameRateRange frameRateRangeWithMinRate:v7 maxFrameRate:v14];
}

- (AVFrameRateRange)videoFrameRateRangeForReactionEffectsInProgress
{
  if (![(AVCaptureDeviceFormat *)self reactionEffectsSupported])
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(AVCaptureDeviceFormat *)self videoSupportedFrameRateRanges];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v16 count:16];
  v5 = *v18;
  v6 = 0.0;
  v7 = 3.40282347e38;
  do
  {
    v8 = 0;
    do
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      [v9 minFrameRate];
      if (v10 < v7)
      {
        [v9 minFrameRate];
        v7 = v11;
      }

      [v9 maxFrameRate];
      if (v12 > v6)
      {
        [v9 maxFrameRate];
        v6 = v13;
      }

      ++v8;
    }

    while (v4 != v8);
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v16 count:16];
  }

  while (v4);
  v14 = 30.0;
  if (v6 <= 30.0)
  {
    v14 = v6;
  }

  return [AVFrameRateRange frameRateRangeWithMinRate:v7 maxFrameRate:v14];
}

- (id)videoFrameRateRangeForBackgroundReplacement
{
  if (![(AVCaptureDeviceFormat *)self isBackgroundReplacementSupported])
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(AVCaptureDeviceFormat *)self videoSupportedFrameRateRanges];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v16 count:16];
  v5 = *v18;
  v6 = 0.0;
  v7 = 3.40282347e38;
  do
  {
    v8 = 0;
    do
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      [v9 minFrameRate];
      if (v10 < v7)
      {
        [v9 minFrameRate];
        v7 = v11;
      }

      [v9 maxFrameRate];
      if (v12 > v6)
      {
        [v9 maxFrameRate];
        v6 = v13;
      }

      ++v8;
    }

    while (v4 != v8);
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v16 count:16];
  }

  while (v4);
  v14 = 30.0;
  if (v6 <= 30.0)
  {
    v14 = v6;
  }

  return [AVFrameRateRange frameRateRangeWithMinRate:v7 maxFrameRate:v14];
}

- (BOOL)isVideoStabilizationSupported
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionCinematicVISAwareAPIsAreAvailable"))
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v4 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"1") & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v5, self, v6, @"[AVCaptureDeviceFormat isVideoStabilizationModeSupported:]");
    }
  }

  v7 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v7 isStabilizationModeSupported:1];
}

- (BOOL)isGlobalToneMappingSupported
{
  internal = self->_internal;
  if (internal->isDepthDataFormat)
  {
    return 0;
  }

  v6 = [(NSDictionary *)internal->fcSourceAttributes objectForKeyedSubscript:*MEMORY[0x1E69901A0], v2];

  return [v6 BOOLValue];
}

- (BOOL)isVideoStabilizationModeSupported:(AVCaptureVideoStabilizationMode)videoStabilizationMode
{
  if (videoStabilizationMode > AVCaptureVideoStabilizationModeCinematic)
  {
    if (videoStabilizationMode <= AVCaptureVideoStabilizationModePreviewOptimized)
    {
      if (videoStabilizationMode == AVCaptureVideoStabilizationModeCinematicExtended)
      {
        BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCaptureExtendedCinematicVISSupported");
        if (!BoolAnswer)
        {
          return BoolAnswer;
        }

        v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
        v6 = AVCaptureVideoStabilizationModeCinematicExtended;
      }

      else
      {
        v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
        v6 = AVCaptureVideoStabilizationModePreviewOptimized;
      }

      goto LABEL_15;
    }

    if (videoStabilizationMode == (AVCaptureVideoStabilizationModePreviewOptimized|AVCaptureVideoStabilizationModeStandard))
    {
      v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
      v6 = AVCaptureVideoStabilizationModePreviewOptimized|AVCaptureVideoStabilizationModeStandard;
      goto LABEL_15;
    }

    if (videoStabilizationMode == (AVCaptureVideoStabilizationModePreviewOptimized|AVCaptureVideoStabilizationModeCinematic))
    {
      v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
      v6 = AVCaptureVideoStabilizationModePreviewOptimized|AVCaptureVideoStabilizationModeCinematic;
      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(BoolAnswer) = 0;
    return BoolAnswer;
  }

  if (videoStabilizationMode >= AVCaptureVideoStabilizationModeCinematicExtended)
  {
    if (videoStabilizationMode == AVCaptureVideoStabilizationModeAuto)
    {
      LOBYTE(BoolAnswer) = 1;
      return BoolAnswer;
    }

    goto LABEL_18;
  }

  v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  v6 = videoStabilizationMode;
LABEL_15:

  LOBYTE(BoolAnswer) = [v5 isStabilizationModeSupported:v6];
  return BoolAnswer;
}

- ($2825F4736939C4A6D3AD43837233062D)_defaultPhotoDimensionsInNativeSensorOrientationWithHighResolutionCaptureEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  if (v3)
  {
    v6 = [v5 geometricDistortionCorrectionFormat];
    v7 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
    if (v6)
    {
      v8 = [v7 geometricDistortionCorrectionFormat];
    }

    else if (v7)
    {
      v8 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
    }

    else
    {
      Dimensions = [(AVCaptureDeviceFormat *)self figCaptureSourceDepthDataFormat];
      if (!*&Dimensions)
      {
        v10 = 0;
        return (v10 | Dimensions.width);
      }

      v8 = [(AVCaptureDeviceFormat *)self figCaptureSourceDepthDataFormat];
    }

    Dimensions = [v8 defaultHighResStillImageDimensions];
  }

  else if (v5)
  {
    Dimensions = [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions([(AVCaptureDeviceFormat *)self formatDescription]);
  }

  v10 = *&Dimensions & 0xFFFFFFFF00000000;
  return (v10 | Dimensions.width);
}

- ($2825F4736939C4A6D3AD43837233062D)defaultPhotoDimensionsWithHighResolutionCaptureEnabled:(BOOL)a3
{
  v4 = [(AVCaptureDeviceFormat *)self _defaultPhotoDimensionsInNativeSensorOrientationWithHighResolutionCaptureEnabled:a3];
  if (self->_internal->mountedInPortraitOrientation)
  {

    return AVCaptureFlippedDimensions(*&v4);
  }

  return v4;
}

- (void)setContinuousZoomWithDepthEnabled:(BOOL)a3
{
  internal = self->_internal;
  if (internal->continuousZoomWithDepthEnabled != a3)
  {
    internal->continuousZoomWithDepthEnabled = a3;
    if ([-[NSDictionary objectForKeyedSubscript:](self->_internal->fcSourceAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990138]), "intValue"}] == 9)
    {
      self->_internal->depthDataFormatsDisabled = !a3;

      self->_internal->supportedDepthDataFormats = 0;
    }
  }
}

- (NSArray)unsupportedCaptureOutputClasses
{
  if ([(AVCaptureDeviceFormat *)self isPhotoFormat]&& (AVGestaltGetBoolAnswer(@"AVGQCaptureMFOSupportsPhotoFormats") & 1) == 0)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    [v3 addObject:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  if (![(AVCaptureDeviceFormat *)self isStreamingDisparitySupported]&& ![(AVCaptureDeviceFormat *)self isStreamingDepthSupported])
  {
    if (!v3)
    {
      v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    }

    [v3 addObject:objc_opt_class()];
  }

  if (!v3)
  {
    return MEMORY[0x1E695E0F0];
  }

  v4 = MEMORY[0x1E695DEC8];

  return [v4 arrayWithArray:v3];
}

- (BOOL)isManualFramingSupported
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 isManualFramingSupported];
}

- (BOOL)prefersVideoHDREnabledForSessionPreset:(id)a3
{
  if ([-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [-[AVCaptureDeviceFormat AVCaptureSessionPresets](self "AVCaptureSessionPresets")];
    if (v5)
    {
      v6 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

      LOBYTE(v5) = [v6 prefersSensorHDREnabled];
    }
  }

  return v5;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)defaultActiveMinFrameDurationForSessionPreset:(SEL)a3
{
  v4 = self;
  v6 = *&self->var1;
  if ((*(v6 + 36) & 1) == 0)
  {
    [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self lowestSupportedVideoFrameDuration];
    *(v6 + 24) = v11;
    self = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)v4 figCaptureSourceVideoFormat];
    if (self)
    {
      [-[$3CC8671D27C23BF42ADDB32F2B5E48AE figCaptureSourceVideoFormat](v4 "figCaptureSourceVideoFormat")];
      v8 = *&v4->var1;
      self = CMTimeMake(&v11, 1, v9);
      v8[1] = v11;
    }
  }

  v10 = *&v4->var1;
  *&retstr->var0 = *(v10 + 24);
  retstr->var3 = *(v10 + 40);
  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)defaultActiveMaxFrameDurationForSessionPreset:(SEL)a3
{
  v4 = self;
  v6 = *&self->var1;
  if ((*(v6 + 60) & 1) == 0)
  {
    [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self highestSupportedVideoFrameDuration];
    *(v6 + 48) = v11;
    self = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)v4 figCaptureSourceVideoFormat];
    if (self)
    {
      [-[$3CC8671D27C23BF42ADDB32F2B5E48AE figCaptureSourceVideoFormat](v4 "figCaptureSourceVideoFormat")];
      v8 = *&v4->var1;
      self = CMTimeMake(&v11, 1, v9);
      v8[2] = v11;
    }
  }

  v10 = *&v4->var1;
  *&retstr->var0 = *(v10 + 48);
  retstr->var3 = *(v10 + 64);
  return self;
}

- ($2825F4736939C4A6D3AD43837233062D)previewDimensions
{
  v3 = [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")];
  if (self->_internal->mountedInPortraitOrientation)
  {

    return AVCaptureFlippedDimensions(v3);
  }

  return v3;
}

- (id)optimizedVideoPreviewFilterNames
{
  if ([(FigCaptureSourceFormat *)self->_internal->sourceFormat mediaType]!= 1986618469)
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = [MEMORY[0x1E695DF70] arrayWithObjects:{@"CIPhotoEffectChrome", @"CIPhotoEffectFade", @"CIPhotoEffectInstant", @"CIPhotoEffectMono", @"CIPhotoEffectNoir", @"CIPhotoEffectProcess", @"CIPhotoEffectTonal", @"CIPhotoEffectTransfer", @"CIPhotoEffect3DVivid", @"CIPhotoEffect3DVividWarm", @"CIPhotoEffect3DVividCool", @"CIPhotoEffect3DDramatic", @"CIPhotoEffect3DDramaticWarm", @"CIPhotoEffect3DDramaticCool", @"CIPhotoEffect3DSilverplate", @"CIPhotoEffect3DNoir", @"CIDepthEffect", @"CIPhotoEffect3DCommercial", @"CIPortraitEffectLight", @"CIPortraitEffectCommercial", @"CIPortraitEffectStudio", @"CIPortraitEffectContour", @"CIPortraitEffectBlack", @"CIPortraitEffectStage", @"CIPortraitEffectBlackoutMono", @"CIPortraitEffectStageMono", @"CIPortraitEffectStudioV2", @"CIPortraitEffectContourV2", @"CIPortraitEffectStageV2", @"CIPortraitEffectStageMonoV2", @"CIPortraitEffectStageWhite", 0}];
  if ([-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self "figCaptureSourceVideoFormat")])
  {
    [v3 addObject:AVCaptureShallowDepthOfFieldCIFilterName];
  }

  return v3;
}

- (float)hardwareCost
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  [v2 hardwareCost];
  return result;
}

- (int)baseSensorPowerConsumption
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 baseSensorPowerConsumption];
}

- (int)variableSensorPowerConsumption
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 variableSensorPowerConsumption];
}

- (int)ispPowerConsumption
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v2 ispPowerConsumption];
}

- (BOOL)isAutoVideoFrameRateSupported
{
  if ([(AVCaptureDeviceFormat *)self isVariableFrameRateVideoCaptureSupported])
  {
    return 1;
  }

  return [(AVCaptureDeviceFormat *)self isLowLightVideoCaptureSupported];
}

- (BOOL)isVideoStabilizationStrengthSupported:(int64_t)a3
{
  if (![(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat])
  {
    return a3 == 0;
  }

  v5 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  return [v5 isVideoStabilizationStrengthSupported:a3];
}

- (double)videoMinZoomFactorForCinematicVideo
{
  if ([-[AVCaptureDeviceFormat supportedZoomRangesForCinematicVideo](self "supportedZoomRangesForCinematicVideo")])
  {
    v3 = [(AVCaptureDeviceFormat *)self supportedZoomRangesForCinematicVideo];
  }

  else
  {
    v3 = [(AVCaptureDeviceFormat *)self supportedVideoZoomRangesForDepthDataDelivery];
  }

  v4 = [(NSArray *)v3 firstObject];

  [v4 minZoomFactor];
  return result;
}

- (double)videoMaxZoomFactorForCinematicVideo
{
  if ([-[AVCaptureDeviceFormat supportedZoomRangesForCinematicVideo](self "supportedZoomRangesForCinematicVideo")])
  {
    v3 = [(AVCaptureDeviceFormat *)self supportedZoomRangesForCinematicVideo];
  }

  else
  {
    v3 = [(AVCaptureDeviceFormat *)self supportedVideoZoomRangesForDepthDataDelivery];
  }

  v4 = [(NSArray *)v3 firstObject];

  [v4 maxZoomFactor];
  return result;
}

- (id)videoFrameRateRangeForCinematicVideo
{
  if (![(AVCaptureDeviceFormat *)self isCinematicVideoCaptureSupported])
  {
    return 0;
  }

  return [AVFrameRateRange frameRateRangeWithMinRate:24 maxFrameRate:30];
}

- (float)spatialOverCapturePercentage
{
  v2 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];

  [v2 spatialOverCapturePercentage];
  return result;
}

- (id)_supportedMaxPhotoDimensionsPrivateDimensionsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  supportedMaxPhotoDimensions = self->_internal->supportedMaxPhotoDimensions;
  v7 = [(NSArray *)supportedMaxPhotoDimensions countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(supportedMaxPhotoDimensions);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isPrivate])
        {
          v12 = !v3;
        }

        else
        {
          v12 = 0;
        }

        if (!v12)
        {
          v19 = [v11 dimensions];
          [v5 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", &v19, "{?=ii}")}];
        }
      }

      v8 = [(NSArray *)supportedMaxPhotoDimensions countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  return [v5 copy];
}

- (BOOL)validateMaxPhotoDimensions:(id)a3 privateDimensionsEnabled:(BOOL)a4
{
  v4 = a4;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  supportedMaxPhotoDimensions = self->_internal->supportedMaxPhotoDimensions;
  v7 = [(NSArray *)supportedMaxPhotoDimensions countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(supportedMaxPhotoDimensions);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if ([v11 isPrivate])
        {
          v12 = !v4;
        }

        else
        {
          v12 = 0;
        }

        if (!v12 && ([v11 dimensionsAreEqualToDimensions:a3] & 1) != 0)
        {
          LOBYTE(v7) = 1;
          return v7;
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [(NSArray *)supportedMaxPhotoDimensions countByEnumeratingWithState:&v15 objects:v14 count:16];
      v8 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v7;
}

- (BOOL)maxPhotoDimensionsAreUltraHighResolution:(id)a3 privateDimensionsEnabled:(BOOL)a4
{
  v4 = a4;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  supportedMaxPhotoDimensions = self->_internal->supportedMaxPhotoDimensions;
  v7 = [(NSArray *)supportedMaxPhotoDimensions countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(supportedMaxPhotoDimensions);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if ([v11 isPrivate])
        {
          v12 = !v4;
        }

        else
        {
          v12 = 0;
        }

        if (!v12 && [v11 dimensionsAreEqualToDimensions:a3] && objc_msgSend(v11, "flavor") == 2)
        {
          LOBYTE(v7) = 1;
          return v7;
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [(NSArray *)supportedMaxPhotoDimensions countByEnumeratingWithState:&v15 objects:v14 count:16];
      v8 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v7;
}

- (double)focalLengthIn35mmFilmWithGeometricDistortionCorrection:(BOOL)a3
{
  if (a3)
  {
    [(AVCaptureDeviceFormat *)self geometricDistortionCorrectedVideoFieldOfView];
  }

  else
  {
    [(AVCaptureDeviceFormat *)self videoFieldOfView];
  }

  v5 = v4;
  v6 = [-[NSArray firstObject](-[AVCaptureDeviceFormat supportedMaxPhotoDimensions](self "supportedMaxPhotoDimensions")];
  if (HIDWORD(v6))
  {
    v7 = (v6 / SHIDWORD(v6));
  }

  else
  {
    v7 = 1.33333333;
  }

  v8 = tan(v5 * 3.14159265 / 180.0 * 0.5);
  return 36.0 / (v8 + v8) / (sqrt(36.0 / v7 * (36.0 / v7) + 1296.0) / 43.266615);
}

- (id)supportedDynamicAspectRatios
{
  if (!self->_internal->dynamicAspectRatioSupported)
  {
    return MEMORY[0x1E695E0F0];
  }

  v6[0] = @"AVCaptureAspectRatio1x1";
  v6[1] = @"AVCaptureAspectRatio16x9";
  v6[2] = @"AVCaptureAspectRatio9x16";
  v6[3] = @"AVCaptureAspectRatio4x3";
  v6[4] = @"AVCaptureAspectRatio3x4";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  if ([(AVCaptureDeviceFormat *)self isPhotoFormat])
  {
    v5[0] = @"AVCaptureAspectRatio4x3";
    v5[1] = @"AVCaptureAspectRatio3x4";
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  }

  return v3;
}

- (float)videoFieldOfViewForAspectRatio:(id)a3 geometricDistortionCorrected:(BOOL)a4
{
  v4 = a4;
  v6 = AVCaptureTranslateAVCaptureAspectRatioToFig(a3, NAN);
  mountedInPortraitOrientation = self->_internal->mountedInPortraitOrientation;
  v8 = [(AVCaptureDeviceFormat *)self figCaptureSourceVideoFormat];
  if (v4)
  {
    if (mountedInPortraitOrientation)
    {

      [v8 verticalGeometricDistortionCorrectedFieldOfViewForAspectRatio:v6];
    }

    else
    {

      [v8 horizontalGeometricDistortionCorrectedFieldOfViewForAspectRatio:v6];
    }
  }

  else if (mountedInPortraitOrientation)
  {

    [v8 verticalFieldOfViewForAspectRatio:v6];
  }

  else
  {

    [v8 horizontalFieldOfViewForAspectRatio:v6];
  }

  return result;
}

@end