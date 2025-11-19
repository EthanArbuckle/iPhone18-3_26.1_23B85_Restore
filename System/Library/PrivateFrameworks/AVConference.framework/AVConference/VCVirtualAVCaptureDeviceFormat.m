@interface VCVirtualAVCaptureDeviceFormat
- (BOOL)isEqual:(id)a3;
- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4;
- (void)dealloc;
- (void)setFormatDescription:(opaqueCMFormatDescription *)a3;
- (void)setMaxExposureDuration:(id *)a3;
- (void)setMinExposureDuration:(id *)a3;
@end

@implementation VCVirtualAVCaptureDeviceFormat

- (void)setFormatDescription:(opaqueCMFormatDescription *)a3
{
  formatDescription = self->_formatDescription;
  self->_formatDescription = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (formatDescription)
  {

    CFRelease(formatDescription);
  }
}

- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4
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

- (void)setMinExposureDuration:(id *)a3
{
  var3 = a3->var3;
  *&self->_minExposureDuration.value = *&a3->var0;
  self->_minExposureDuration.epoch = var3;
}

- (void)setMaxExposureDuration:(id *)a3
{
  var3 = a3->var3;
  *&self->_maxExposureDuration.value = *&a3->var0;
  self->_maxExposureDuration.epoch = var3;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_50:
    LOBYTE(v7) = 0;
    return v7;
  }

  v6 = [OUTLINED_FUNCTION_1_6() mediaType];
  v7 = OUTLINED_FUNCTION_3_11(v6);
  if (v7)
  {
    v8 = [OUTLINED_FUNCTION_1_6() formatDescription];
    v7 = CMFormatDescriptionEqual(v3, v8);
    if (v7)
    {
      v9 = [OUTLINED_FUNCTION_1_6() videoSupportedFrameRateRanges];
      v7 = OUTLINED_FUNCTION_3_11(v9);
      if (v7)
      {
        [a3 videoFieldOfView];
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

        if (a3)
        {
          v14 = [a3 minExposureDuration];
        }

        else
        {
          v55 = 0;
        }

        v23 = OUTLINED_FUNCTION_5_11(v14, v15, v16, v17, v18, v19, v20, v21, v49, v51, v53, v55);
        if (v23)
        {
          goto LABEL_50;
        }

        v31 = self + 88;
        if (a3)
        {
          v23 = [a3 maxExposureDuration];
        }

        else
        {
          v56 = 0;
        }

        if (OUTLINED_FUNCTION_5_11(v23, v24, v25, v26, v27, v28, v29, v30, v50, v52, v54, v56))
        {
          goto LABEL_50;
        }

        [a3 minISO];
        *&v33 = OUTLINED_FUNCTION_4_10(v32);
        if (!v11)
        {
          goto LABEL_50;
        }

        [a3 maxISO];
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
        if (width != [a3 highResolutionStillImageDimensions])
        {
          goto LABEL_50;
        }

        height = self->_highResolutionStillImageDimensions.height;
        if (height != [a3 highResolutionStillImageDimensions] >> 32 || height != objc_msgSend(OUTLINED_FUNCTION_2_12(), "isHighPhotoQualitySupported") || height != objc_msgSend(OUTLINED_FUNCTION_2_12(), "isHighestPhotoQualitySupported") || height != objc_msgSend(OUTLINED_FUNCTION_2_12(), "isPortraitEffectSupported") || height != objc_msgSend(OUTLINED_FUNCTION_1_6(), "autoFocusSystem"))
        {
          goto LABEL_50;
        }

        v37 = [OUTLINED_FUNCTION_1_6() supportedColorSpaces];
        v7 = OUTLINED_FUNCTION_3_11(v37);
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

        v40 = [OUTLINED_FUNCTION_1_6() supportedVideoZoomFactorsForDepthDataDelivery];
        v7 = OUTLINED_FUNCTION_3_11(v40);
        if (v7)
        {
          v41 = [OUTLINED_FUNCTION_1_6() supportedDepthDataFormats];
          v7 = OUTLINED_FUNCTION_3_11(v41);
          if (v7)
          {
            v42 = [OUTLINED_FUNCTION_1_6() unsupportedCaptureOutputClasses];
            v7 = OUTLINED_FUNCTION_3_11(v42);
            if (v7)
            {
              v43 = [OUTLINED_FUNCTION_1_6() supportedMaxPhotoDimensions];
              v7 = OUTLINED_FUNCTION_3_11(v43);
              if (v7)
              {
                v44 = [OUTLINED_FUNCTION_1_6() secondaryNativeResolutionZoomFactors];
                v7 = OUTLINED_FUNCTION_3_11(v44);
                if (v7)
                {
                  if (height == [OUTLINED_FUNCTION_2_12() isCenterStageSupported])
                  {
                    v45 = [OUTLINED_FUNCTION_1_6() supportedOutputAspectRatios];
                    v7 = OUTLINED_FUNCTION_3_11(v45);
                    if (!v7)
                    {
                      return v7;
                    }

                    v46 = -2;
                    while (1)
                    {
                      v47 = [(VCVirtualAVCaptureDeviceFormat *)self isVideoStabilizationModeSupported:++v46];
                      if (v47 != [a3 isVideoStabilizationModeSupported:v46])
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