@interface VCVirtualAVCaptureDeviceFormat
- (BOOL)isEqual:(id)equal;
- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent;
- (void)dealloc;
- (void)setFormatDescription:(opaqueCMFormatDescription *)description;
- (void)setMaxExposureDuration:(id *)duration;
- (void)setMinExposureDuration:(id *)duration;
@end

@implementation VCVirtualAVCaptureDeviceFormat

- (void)setFormatDescription:(opaqueCMFormatDescription *)description
{
  formatDescription = self->_formatDescription;
  self->_formatDescription = description;
  if (description)
  {
    CFRetain(description);
  }

  if (formatDescription)
  {

    CFRelease(formatDescription);
  }
}

- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent
{
  v4 = objc_opt_class();

  return NSStringFromClass(v4);
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
    self->_formatDescription = 0;
  }

  v4.receiver = self;
  v4.super_class = VCVirtualAVCaptureDeviceFormat;
  [(VCVirtualAVCaptureDeviceFormat *)&v4 dealloc];
}

- (void)setMinExposureDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_minExposureDuration.value = *&duration->var0;
  self->_minExposureDuration.epoch = var3;
}

- (void)setMaxExposureDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_maxExposureDuration.value = *&duration->var0;
  self->_maxExposureDuration.epoch = var3;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_50:
    LOBYTE(v7) = 0;
    return v7;
  }

  mediaType = [OUTLINED_FUNCTION_1_6() mediaType];
  v7 = OUTLINED_FUNCTION_3_11(mediaType);
  if (v7)
  {
    formatDescription = [OUTLINED_FUNCTION_1_6() formatDescription];
    v7 = CMFormatDescriptionEqual(v3, formatDescription);
    if (v7)
    {
      videoSupportedFrameRateRanges = [OUTLINED_FUNCTION_1_6() videoSupportedFrameRateRanges];
      v7 = OUTLINED_FUNCTION_3_11(videoSupportedFrameRateRanges);
      if (v7)
      {
        [equal videoFieldOfView];
        OUTLINED_FUNCTION_4_10(v10);
        if (!v11)
        {
          goto LABEL_50;
        }

        if (v3 != [OUTLINED_FUNCTION_2_12() isVideoBinned])
        {
          goto LABEL_50;
        }

        if (v3 != [OUTLINED_FUNCTION_2_12() isVideoStabilizationSupported])
        {
          goto LABEL_50;
        }

        [OUTLINED_FUNCTION_6_15() videoMaxZoomFactor];
        OUTLINED_FUNCTION_0_6(v12);
        if (!v11)
        {
          goto LABEL_50;
        }

        [OUTLINED_FUNCTION_6_15() videoZoomFactorUpscaleThreshold];
        v22 = OUTLINED_FUNCTION_0_6(v13);
        if (!v11)
        {
          goto LABEL_50;
        }

        if (equal)
        {
          minExposureDuration = [equal minExposureDuration];
        }

        else
        {
          v55 = 0;
        }

        maxExposureDuration = OUTLINED_FUNCTION_5_11(minExposureDuration, v15, v16, v17, v18, v19, v20, v21, v49, v51, v53, v55);
        if (maxExposureDuration)
        {
          goto LABEL_50;
        }

        v31 = self + 88;
        if (equal)
        {
          maxExposureDuration = [equal maxExposureDuration];
        }

        else
        {
          v56 = 0;
        }

        if (OUTLINED_FUNCTION_5_11(maxExposureDuration, v24, v25, v26, v27, v28, v29, v30, v50, v52, v54, v56))
        {
          goto LABEL_50;
        }

        [equal minISO];
        *&v33 = OUTLINED_FUNCTION_4_10(v32);
        if (!v11)
        {
          goto LABEL_50;
        }

        [equal maxISO];
        OUTLINED_FUNCTION_4_10(v34);
        if (!v11)
        {
          goto LABEL_50;
        }

        if (v31 != [OUTLINED_FUNCTION_2_12() isGlobalToneMappingSupported])
        {
          goto LABEL_50;
        }

        if (v31 != [OUTLINED_FUNCTION_2_12() isVideoHDRSupported])
        {
          goto LABEL_50;
        }

        width = self->_highResolutionStillImageDimensions.width;
        if (width != [equal highResolutionStillImageDimensions])
        {
          goto LABEL_50;
        }

        height = self->_highResolutionStillImageDimensions.height;
        if (height != [equal highResolutionStillImageDimensions] >> 32 || height != objc_msgSend(OUTLINED_FUNCTION_2_12(), "isHighPhotoQualitySupported") || height != objc_msgSend(OUTLINED_FUNCTION_2_12(), "isHighestPhotoQualitySupported") || height != objc_msgSend(OUTLINED_FUNCTION_2_12(), "isPortraitEffectSupported") || height != objc_msgSend(OUTLINED_FUNCTION_1_6(), "autoFocusSystem"))
        {
          goto LABEL_50;
        }

        supportedColorSpaces = [OUTLINED_FUNCTION_1_6() supportedColorSpaces];
        v7 = OUTLINED_FUNCTION_3_11(supportedColorSpaces);
        if (!v7)
        {
          return v7;
        }

        [OUTLINED_FUNCTION_6_15() videoMinZoomFactorForDepthDataDelivery];
        OUTLINED_FUNCTION_0_6(v38);
        if (!v11)
        {
          goto LABEL_50;
        }

        [OUTLINED_FUNCTION_6_15() videoMaxZoomFactorForDepthDataDelivery];
        OUTLINED_FUNCTION_0_6(v39);
        if (!v11)
        {
          goto LABEL_50;
        }

        supportedVideoZoomFactorsForDepthDataDelivery = [OUTLINED_FUNCTION_1_6() supportedVideoZoomFactorsForDepthDataDelivery];
        v7 = OUTLINED_FUNCTION_3_11(supportedVideoZoomFactorsForDepthDataDelivery);
        if (v7)
        {
          supportedDepthDataFormats = [OUTLINED_FUNCTION_1_6() supportedDepthDataFormats];
          v7 = OUTLINED_FUNCTION_3_11(supportedDepthDataFormats);
          if (v7)
          {
            unsupportedCaptureOutputClasses = [OUTLINED_FUNCTION_1_6() unsupportedCaptureOutputClasses];
            v7 = OUTLINED_FUNCTION_3_11(unsupportedCaptureOutputClasses);
            if (v7)
            {
              supportedMaxPhotoDimensions = [OUTLINED_FUNCTION_1_6() supportedMaxPhotoDimensions];
              v7 = OUTLINED_FUNCTION_3_11(supportedMaxPhotoDimensions);
              if (v7)
              {
                secondaryNativeResolutionZoomFactors = [OUTLINED_FUNCTION_1_6() secondaryNativeResolutionZoomFactors];
                v7 = OUTLINED_FUNCTION_3_11(secondaryNativeResolutionZoomFactors);
                if (v7)
                {
                  if (height == [OUTLINED_FUNCTION_2_12() isCenterStageSupported])
                  {
                    supportedOutputAspectRatios = [OUTLINED_FUNCTION_1_6() supportedOutputAspectRatios];
                    v7 = OUTLINED_FUNCTION_3_11(supportedOutputAspectRatios);
                    if (!v7)
                    {
                      return v7;
                    }

                    v46 = -2;
                    while (1)
                    {
                      v47 = [(VCVirtualAVCaptureDeviceFormat *)self isVideoStabilizationModeSupported:++v46];
                      if (v47 != [equal isVideoStabilizationModeSupported:v46])
                      {
                        break;
                      }

                      if (v46 == 3)
                      {
                        LOBYTE(v7) = 1;
                        return v7;
                      }
                    }
                  }

                  goto LABEL_50;
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

@end