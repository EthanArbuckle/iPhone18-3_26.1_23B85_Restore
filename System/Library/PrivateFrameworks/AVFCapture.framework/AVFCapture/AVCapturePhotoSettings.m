@interface AVCapturePhotoSettings
+ (AVCapturePhotoSettings)photoSettings;
+ (AVCapturePhotoSettings)photoSettingsFromPhotoSettings:(AVCapturePhotoSettings *)photoSettings;
+ (AVCapturePhotoSettings)photoSettingsWithFormat:(NSDictionary *)format;
+ (AVCapturePhotoSettings)photoSettingsWithRawPixelFormatType:(OSType)rawPixelFormatType;
+ (AVCapturePhotoSettings)photoSettingsWithRawPixelFormatType:(OSType)rawPixelFormatType processedFormat:(NSDictionary *)processedFormat;
+ (AVCapturePhotoSettings)photoSettingsWithRawPixelFormatType:(OSType)rawPixelFormatType rawFileType:(AVFileType)rawFileType processedFormat:(NSDictionary *)processedFormat processedFileType:(AVFileType)processedFileType;
+ (id)burstQualityPhotoSettings;
+ (id)photoSettingsFromMomentCaptureSettings:(id)a3 withFormat:(id)a4;
+ (id)photoSettingsFromMomentCaptureSettings:(id)a3 withRawPixelFormatType:(unsigned int)a4 rawFileType:(id)a5 format:(id)a6;
+ (id)photoSettingsFromPhotoInitiationSettings:(id)a3 format:(id)a4;
- (AVCapturePhotoSettings)init;
- (BOOL)isDualCameraDualPhotoDeliveryEnabled;
- (CGSize)embeddedThumbnailCGSize;
- (CGSize)previewCGSize;
- (CGSize)rawEmbeddedThumbnailCGSize;
- (NSArray)availableEmbeddedThumbnailPhotoCodecTypes;
- (NSArray)availablePreviewPhotoPixelFormatTypes;
- (NSArray)availableRawEmbeddedThumbnailPhotoCodecTypes;
- (NSArray)enabledSemanticSegmentationMatteTypes;
- (NSArray)livePhotoMovieMetadata;
- (NSDictionary)metadata;
- (id)_initWithFormat:(id)a3 processedFileType:(id)a4 rawPixelFormatType:(unsigned int)a5 rawFileType:(id)a6 burstQualityCaptureEnabled:(BOOL)a7 uniqueID:(int64_t)a8 exceptionReason:(id *)a9;
- (id)_sanitizedLivePhotoMovieMetadataForArray:(id)a3 exceptionReason:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)livePhotoContentIdentifier;
- (id)livePhotoContentIdentifierForOriginalPhoto;
- (id)livePhotoMovieMetadataForOriginalPhoto;
- (id)metadataForOriginalPhoto;
- (id)spatialOverCaptureGroupIdentifier;
- (id)spatialOverCaptureGroupIdentifierForOriginalPhoto;
- (id)spatialOverCaptureLivePhotoContentIdentifier;
- (id)spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto;
- (id)spatialOverCaptureLivePhotoMovieMetadata;
- (id)spatialOverCaptureLivePhotoMovieMetadataForOriginalPhoto;
- (id)spatialOverCaptureMetadata;
- (id)spatialOverCaptureMetadataForOriginalPhoto;
- (unsigned)rawEmbeddedThumbnailFormatFourCC;
- (void)_setPropertiesFromMomentCaptureSettings:(id)a3;
- (void)dealloc;
- (void)setAdjustedPhotoFilters:(id)a3;
- (void)setAutoDualCameraFusionEnabled:(BOOL)autoDualCameraFusionEnabled;
- (void)setAutoSpatialOverCaptureEnabled:(BOOL)a3;
- (void)setAutoStillImageStabilizationEnabled:(BOOL)autoStillImageStabilizationEnabled;
- (void)setAutoVirtualDeviceFusionEnabled:(BOOL)autoVirtualDeviceFusionEnabled;
- (void)setDigitalFlashMode:(int64_t)a3;
- (void)setDualCameraDualPhotoDeliveryEnabled:(BOOL)dualCameraDualPhotoDeliveryEnabled;
- (void)setEmbeddedThumbnailPhotoFormat:(NSDictionary *)embeddedThumbnailPhotoFormat;
- (void)setEnabledSemanticSegmentationMatteTypes:(NSArray *)enabledSemanticSegmentationMatteTypes;
- (void)setHEICSFileURL:(id)a3;
- (void)setLivePhotoMovieMetadata:(NSArray *)livePhotoMovieMetadata;
- (void)setLivePhotoMovieMetadataForOriginalPhoto:(id)a3;
- (void)setLivePhotoVideoCodecType:(AVVideoCodecType)livePhotoVideoCodecType;
- (void)setMetadata:(NSDictionary *)metadata;
- (void)setPhotoFilters:(id)a3;
- (void)setPhotoQualityPrioritization:(AVCapturePhotoQualityPrioritization)photoQualityPrioritization;
- (void)setPreviewPhotoFormat:(NSDictionary *)previewPhotoFormat;
- (void)setRawEmbeddedThumbnailPhotoFormat:(NSDictionary *)rawEmbeddedThumbnailPhotoFormat;
- (void)setRawFileFormat:(id)a3;
- (void)setSpatialOverCaptureLivePhotoMovieMetadata:(id)a3;
- (void)setSpatialOverCaptureLivePhotoMovieMetadataForOriginalPhoto:(id)a3;
- (void)setSpatialOverCaptureMetadata:(id)a3;
- (void)setSpatialOverCaptureMetadataForOriginalPhoto:(id)a3;
- (void)setTurboModeEnabled:(BOOL)a3;
- (void)setVideoFileMetadata:(id)a3;
- (void)setVideoFileURL:(id)a3;
- (void)setVideoFormat:(id)a3;
- (void)setVirtualDeviceConstituentPhotoDeliveryEnabledDevices:(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices;
@end

@implementation AVCapturePhotoSettings

+ (AVCapturePhotoSettings)photoSettings
{
  v6 = 0;
  v2 = [objc_alloc(objc_opt_class()) _initWithFormat:0 processedFileType:0 rawPixelFormatType:0 rawFileType:0 burstQualityCaptureEnabled:0 uniqueID:0 exceptionReason:&v6];
  v3 = v2;
  if (!v6)
  {
    return v2;
  }

  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
  return 0;
}

- (NSArray)availablePreviewPhotoPixelFormatTypes
{
  v2 = [(AVCapturePhotoSettings *)self formatFourCC];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (v2 == 875704438)
  {
    v5 = &unk_1F1CE9B18;
  }

  else
  {
    v5 = &unk_1F1CE9B30;
  }

  if (v2 == 875704438)
  {
    v6 = &unk_1F1CE9B30;
  }

  else
  {
    v6 = &unk_1F1CE9B18;
  }

  [(NSArray *)v3 addObject:v5];
  [(NSArray *)v4 addObject:v6];
  [(NSArray *)v4 addObject:&unk_1F1CE9B48];
  return v4;
}

- (NSArray)availableEmbeddedThumbnailPhotoCodecTypes
{
  BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCapturePhotoSettingsSupportRawEmbeddedThumbnailFormat");
  internal = self->_internal;
  if ((BoolAnswer & 1) == 0 && internal->rawFileType)
  {
    v14 = *MEMORY[0x1E6987D00];
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v14;
LABEL_7:
    v8 = 1;
    return [v5 arrayWithObjects:v6 count:v8];
  }

  processedFileType = internal->processedFileType;
  if (processedFileType)
  {
    if ([(NSString *)processedFileType isEqual:*MEMORY[0x1E69874B0]])
    {
      v13 = *MEMORY[0x1E6987D00];
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v13;
      goto LABEL_7;
    }

    if (([(NSString *)self->_internal->processedFileType isEqual:*MEMORY[0x1E69874A0]]& 1) != 0 || [(NSString *)self->_internal->processedFileType isEqual:*MEMORY[0x1E69874A8]])
    {
      v9 = *MEMORY[0x1E6987D00];
      v12[0] = *MEMORY[0x1E6987CF0];
      v12[1] = v9;
      v5 = MEMORY[0x1E695DEC8];
      v6 = v12;
      v8 = 2;
      return [v5 arrayWithObjects:v6 count:v8];
    }

    if ([(NSString *)self->_internal->processedFileType isEqual:*MEMORY[0x1E69874C8]])
    {
      v11 = *MEMORY[0x1E6987D00];
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v11;
      goto LABEL_7;
    }

    [(NSString *)self->_internal->processedFileType isEqual:*MEMORY[0x1E6987490]];
  }

  return MEMORY[0x1E695E0F0];
}

- (NSArray)availableRawEmbeddedThumbnailPhotoCodecTypes
{
  if (!self->_internal->rawFileType)
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = *MEMORY[0x1E6987D00];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:1];
}

- (id)livePhotoContentIdentifier
{
  result = self->_internal->livePhotoContentIdentifier;
  if (!result)
  {
    self->_internal->livePhotoContentIdentifier = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    return self->_internal->livePhotoContentIdentifier;
  }

  return result;
}

- (id)livePhotoContentIdentifierForOriginalPhoto
{
  result = self->_internal->livePhotoContentIdentifierForOriginalPhoto;
  if (!result)
  {
    self->_internal->livePhotoContentIdentifierForOriginalPhoto = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    return self->_internal->livePhotoContentIdentifierForOriginalPhoto;
  }

  return result;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
  }

  v4.receiver = self;
  v4.super_class = AVCapturePhotoSettings;
  [(AVCapturePhotoSettings *)&v4 dealloc];
}

+ (id)burstQualityPhotoSettings
{
  v6 = 0;
  v2 = [objc_alloc(objc_opt_class()) _initWithFormat:0 processedFileType:0 rawPixelFormatType:0 rawFileType:0 burstQualityCaptureEnabled:1 uniqueID:0 exceptionReason:&v6];
  v3 = v2;
  if (v6)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
    return 0;
  }

  else
  {
    [v2 _setPhotoQualityPrioritization:1];
    [v3 setAutoVirtualDeviceFusionEnabled:0];
    return v3;
  }
}

- (NSArray)enabledSemanticSegmentationMatteTypes
{
  v2 = self->_internal->enabledSemanticSegmentationMatteTypes;

  return v2;
}

- (BOOL)isDualCameraDualPhotoDeliveryEnabled
{
  v3 = [AVCaptureDevice defaultDeviceWithDeviceType:@"AVCaptureDeviceTypeBuiltInDualCamera" mediaType:*MEMORY[0x1E6987608] position:0];
  if ([(AVCaptureDevice *)v3 deviceType]!= @"AVCaptureDeviceTypeBuiltInDualCamera")
  {
    return 0;
  }

  v5 = [MEMORY[0x1E695DFD8] setWithArray:{-[AVCaptureDevice constituentDevices](v3, "constituentDevices")}];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:self->_internal->virtualDeviceConstituentPhotoDeliveryEnabledDevices];

  return [v5 isEqual:v6];
}

+ (AVCapturePhotoSettings)photoSettingsWithFormat:(NSDictionary *)format
{
  v7 = 0;
  v3 = [objc_alloc(objc_opt_class()) _initWithFormat:format processedFileType:0 rawPixelFormatType:0 rawFileType:0 burstQualityCaptureEnabled:0 uniqueID:0 exceptionReason:&v7];
  v4 = v3;
  if (!v7)
  {
    return v3;
  }

  v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v5);
  }

  NSLog(&cfstr_SuppressingExc.isa, v5);
  return 0;
}

+ (AVCapturePhotoSettings)photoSettingsWithRawPixelFormatType:(OSType)rawPixelFormatType
{
  v7 = 0;
  v3 = [objc_alloc(objc_opt_class()) _initWithFormat:0 processedFileType:0 rawPixelFormatType:*&rawPixelFormatType rawFileType:0 burstQualityCaptureEnabled:0 uniqueID:0 exceptionReason:&v7];
  v4 = v3;
  if (!v7)
  {
    return v3;
  }

  v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v5);
  }

  NSLog(&cfstr_SuppressingExc.isa, v5);
  return 0;
}

+ (AVCapturePhotoSettings)photoSettingsWithRawPixelFormatType:(OSType)rawPixelFormatType processedFormat:(NSDictionary *)processedFormat
{
  v8 = 0;
  v4 = [objc_alloc(objc_opt_class()) _initWithFormat:processedFormat processedFileType:0 rawPixelFormatType:*&rawPixelFormatType rawFileType:0 burstQualityCaptureEnabled:0 uniqueID:0 exceptionReason:&v8];
  v5 = v4;
  if (!v8)
  {
    return v4;
  }

  v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v6);
  }

  NSLog(&cfstr_SuppressingExc.isa, v6);
  return 0;
}

+ (AVCapturePhotoSettings)photoSettingsWithRawPixelFormatType:(OSType)rawPixelFormatType rawFileType:(AVFileType)rawFileType processedFormat:(NSDictionary *)processedFormat processedFileType:(AVFileType)processedFileType
{
  v10 = 0;
  v6 = [objc_alloc(objc_opt_class()) _initWithFormat:processedFormat processedFileType:processedFileType rawPixelFormatType:*&rawPixelFormatType rawFileType:rawFileType burstQualityCaptureEnabled:0 uniqueID:0 exceptionReason:&v10];
  v7 = v6;
  if (!v10)
  {
    return v6;
  }

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
  return 0;
}

+ (id)photoSettingsFromPhotoInitiationSettings:(id)a3 format:(id)a4
{
  v9 = 0;
  v5 = [objc_alloc(objc_opt_class()) _initWithFormat:a4 processedFileType:0 rawPixelFormatType:0 rawFileType:0 burstQualityCaptureEnabled:objc_msgSend(a3 uniqueID:"burstQualityCaptureEnabled") exceptionReason:objc_msgSend(a3, "uniqueID"), &v9];
  [v5 setFlashMode:{objc_msgSend(a3, "flashMode")}];
  if ([a3 isAutoStillImageStabilizationEnabled])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v5 _setPhotoQualityPrioritization:v6];
  [v5 setHDRMode:{objc_msgSend(a3, "HDRMode")}];
  [v5 setUserInitiatedPhotoRequestTime:{objc_msgSend(a3, "timestamp")}];
  if (!v9)
  {
    return v5;
  }

  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
  return 0;
}

- (id)_initWithFormat:(id)a3 processedFileType:(id)a4 rawPixelFormatType:(unsigned int)a5 rawFileType:(id)a6 burstQualityCaptureEnabled:(BOOL)a7 uniqueID:(int64_t)a8 exceptionReason:(id *)a9
{
  v12 = *&a5;
  v57.receiver = self;
  v57.super_class = AVCapturePhotoSettings;
  v58 = 0;
  v15 = [(AVCapturePhotoSettings *)&v57 init];
  if (!v15)
  {
    return v15;
  }

  v15->_internal = objc_alloc_init(AVCapturePhotoSettingsInternal);
  v16 = *MEMORY[0x1E6987CB0];
  if (!a3)
  {
    if (v12)
    {
      a3 = 0;
      v17 = 29;
      goto LABEL_6;
    }

    v55 = *MEMORY[0x1E6987CB0];
    v56 = *MEMORY[0x1E6987D00];
    a3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  }

  v17 = 28;
LABEL_6:
  v18 = *MEMORY[0x1E6987D30];
  v54[0] = v16;
  v54[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v53 = *MEMORY[0x1E6966130];
  if (+[AVCaptureVideoSettingsValidator validateVideoSettings:allowingFeatures:validPixelKeys:validPixelFormats:validCodecKeys:validCodecs:exceptionReason:](AVCaptureVideoSettingsValidator, "validateVideoSettings:allowingFeatures:validPixelKeys:validPixelFormats:validCodecKeys:validCodecs:exceptionReason:", a3, v17, [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1], 0, v19, 0, &v58))
  {
    v20 = 0x1E695D000uLL;
    if (a3)
    {
      v15->_internal->format = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:a3];
    }

    if (!v12)
    {
LABEL_15:
      v22 = [(AVCapturePhotoSettings *)v15 formatFourCC];
      if (!v22)
      {
        goto LABEL_29;
      }

      if (a4)
      {
        goto LABEL_28;
      }

      if (v22 <= 1111970368)
      {
        if (v22 != 875704422 && v22 != 875704438)
        {
          goto LABEL_28;
        }
      }

      else if (v22 != 1111970369)
      {
        if (v22 == 1752589105)
        {
          v23 = MEMORY[0x1E69874A0];
          goto LABEL_27;
        }

        if (v22 == 1785750887)
        {
          v23 = MEMORY[0x1E69874B0];
LABEL_27:
          a4 = *v23;
        }

LABEL_28:
        v15->_internal->processedFileType = a4;
LABEL_29:
        if (!a8)
        {
          a8 = +[AVCapturePhotoSettings uniqueID];
        }

        v15->_internal->uniqueID = a8;
        v15->_internal->turboModeEnabled = 0;
        v24 = [AVCapturePhotoOutput isBayerRAWPixelFormat:v12];
        v25 = v24;
        if (v24)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        v15->_internal->photoQualityPrioritization = v26;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v27 = +[AVCaptureDeviceDiscoverySession allVideoDevices];
        v28 = [v27 countByEnumeratingWithState:&v60 objects:v59 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v61;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v61 != v30)
              {
                objc_enumerationMutation(v27);
              }

              if ([*(*(&v60 + 1) + 8 * i) isAutoRedEyeReductionSupported])
              {
                v32 = 1;
                goto LABEL_44;
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v60 objects:v59 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }

          v32 = 0;
LABEL_44:
          v20 = 0x1E695D000;
        }

        else
        {
          v32 = 0;
        }

        if (!a4)
        {
          v32 = 0;
        }

        v15->_internal->autoRedEyeReductionEnabled = v32;
        v15->_internal->autoVirtualDeviceFusionEnabled = !v25;
        v15->_internal->burstQualityCaptureEnabled = a7;
        v15->_internal->embedsDepthDataInPhoto = 1;
        v15->_internal->depthDataFiltered = 1;
        v15->_internal->embedsPortraitEffectsMatteInPhoto = 1;
        v15->_internal->enabledSemanticSegmentationMatteTypes = objc_alloc_init(MEMORY[0x1E695DEC8]);
        v15->_internal->embedsSemanticSegmentationMattesInPhoto = 1;
        v15->_internal->metadata = objc_alloc_init(*(v20 + 3872));
        v15->_internal->shutterSound = 1108;
        v15->_internal->virtualDeviceConstituentPhotoDeliveryEnabledDevices = objc_alloc_init(MEMORY[0x1E695DEC8]);
        v33 = _initWithFormat_processedFileType_rawPixelFormatType_rawFileType_burstQualityCaptureEnabled_uniqueID_exceptionReason__sDefaultLivePhotoVideoCodecType;
        if (_initWithFormat_processedFileType_rawPixelFormatType_rawFileType_burstQualityCaptureEnabled_uniqueID_exceptionReason__sDefaultLivePhotoVideoCodecType)
        {
          goto LABEL_65;
        }

        v34 = [+[AVCaptureDeviceDiscoverySession allVideoDevices](AVCaptureDeviceDiscoverySession "allVideoDevices")];
        v35 = MEMORY[0x1E6987CE8];
        if (v34)
        {
          v36 = v34;
          v37 = [objc_msgSend(objc_msgSend(v34 "formats")];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v38 = [v37 countByEnumeratingWithState:&v49 objects:v48 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v50;
LABEL_52:
            v41 = 0;
            while (1)
            {
              if (*v50 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v49 + 1) + 8 * v41);
              if ([objc_msgSend(v42 "figCaptureSourceVideoFormat")])
              {
                break;
              }

              if (v39 == ++v41)
              {
                v39 = [v37 countByEnumeratingWithState:&v49 objects:v48 count:16];
                if (v39)
                {
                  goto LABEL_52;
                }

                v42 = 0;
                break;
              }
            }

            v20 = 0x1E695D000;
          }

          else
          {
            v42 = 0;
          }

          v43 = +[AVCapturePhotoOutput maxLivePhotoMovieDimensions];
          v44 = *MEMORY[0x1E69874C0];
          v45 = *MEMORY[0x1E6987CF0];
          v47[0] = *v35;
          v47[1] = v45;
          v33 = [+[AVCaptureOutput availableVideoCodecTypesForSourceDevice:sourceFormat:outputDimensions:fileType:videoCodecTypesAllowList:](AVCaptureOutput availableVideoCodecTypesForSourceDevice:v36 sourceFormat:v42 outputDimensions:v43 fileType:v44 videoCodecTypesAllowList:objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v47, 2)), "firstObject"];
          _initWithFormat_processedFileType_rawPixelFormatType_rawFileType_burstQualityCaptureEnabled_uniqueID_exceptionReason__sDefaultLivePhotoVideoCodecType = v33;
          if (v33)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v33 = _initWithFormat_processedFileType_rawPixelFormatType_rawFileType_burstQualityCaptureEnabled_uniqueID_exceptionReason__sDefaultLivePhotoVideoCodecType;
          if (_initWithFormat_processedFileType_rawPixelFormatType_rawFileType_burstQualityCaptureEnabled_uniqueID_exceptionReason__sDefaultLivePhotoVideoCodecType)
          {
LABEL_65:
            v15->_internal->livePhotoVideoCodecType = [v33 copy];
            v15->_internal->photoFilters = objc_alloc_init(MEMORY[0x1E695DEC8]);
            v15->_internal->adjustedPhotoFilters = objc_alloc_init(MEMORY[0x1E695DEC8]);
            v15->_internal->spatialOverCaptureMetadata = objc_alloc_init(*(v20 + 3872));
            v15->_internal->spatialOverCaptureMetadataForOriginalPhoto = objc_alloc_init(*(v20 + 3872));
            v15->_internal->previewPhotoFormatDimensionsLimitedToDisplayDimensions = 1;
            return v15;
          }
        }

        v33 = *v35;
        _initWithFormat_processedFileType_rawPixelFormatType_rawFileType_burstQualityCaptureEnabled_uniqueID_exceptionReason__sDefaultLivePhotoVideoCodecType = v33;
        goto LABEL_65;
      }

      v23 = MEMORY[0x1E69874C8];
      goto LABEL_27;
    }

    if ([AVCapturePhotoOutput isBayerRAWPixelFormat:v12]|| [AVCapturePhotoOutput isAppleProRAWPixelFormat:v12])
    {
      v15->_internal->rawPhotoPixelFormatType = v12;
      v21 = *MEMORY[0x1E6987498];
      if (a6)
      {
        v21 = a6;
      }

      v15->_internal->rawFileType = v21;
      goto LABEL_15;
    }

    v58 = @"Unrecognized raw pixel format type";
  }

  if (a9)
  {
    *a9 = v58;
  }

  return 0;
}

- (AVCapturePhotoSettings)init
{
  v5 = 0;
  v2 = [(AVCapturePhotoSettings *)self _initWithFormat:0 processedFileType:0 rawPixelFormatType:0 rawFileType:0 burstQualityCaptureEnabled:0 uniqueID:0 exceptionReason:&v5];
  if (v5)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
    return 0;
  }

  return v2;
}

+ (AVCapturePhotoSettings)photoSettingsFromPhotoSettings:(AVCapturePhotoSettings *)photoSettings
{
  v3 = [(AVCapturePhotoSettings *)photoSettings copy];
  *(v3[1] + 40) = +[AVCapturePhotoSettings uniqueID];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12 = 0;
  v4 = [objc_opt_class() allocWithZone:a3];
  internal = self->_internal;
  v6 = [v4 _initWithFormat:internal->format processedFileType:internal->processedFileType rawPixelFormatType:internal->rawPhotoPixelFormatType rawFileType:internal->rawFileType burstQualityCaptureEnabled:internal->burstQualityCaptureEnabled uniqueID:internal->uniqueID exceptionReason:&v12];
  v7 = v6;
  if (v12)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
    return 0;
  }

  else
  {
    [v6 setFlashMode:self->_internal->flashMode];
    [v7 setAutoRedEyeReductionEnabled:self->_internal->autoRedEyeReductionEnabled];
    [v7 setDigitalFlashMode:self->_internal->digitalFlashMode];
    [v7 setConstantColorEnabled:self->_internal->constantColorEnabled];
    [v7 setConstantColorFallbackPhotoDeliveryEnabled:self->_internal->constantColorFallbackPhotoDeliveryEnabled];
    [v7 setShutterSoundSuppressionEnabled:self->_internal->shutterSoundSuppressionEnabled];
    [v7 setAutoSpatialPhotoCaptureEnabled:self->_internal->autoSpatialPhotoCaptureEnabled];
    v9 = self->_internal;
    photoQualityPrioritization = v9->photoQualityPrioritization;
    if (v9->photoQualityPrioritizationIsSetByClient)
    {
      [v7 setPhotoQualityPrioritization:photoQualityPrioritization];
    }

    else
    {
      [v7 _setPhotoQualityPrioritization:photoQualityPrioritization];
    }

    [v7 setAutoVirtualDeviceFusionEnabled:self->_internal->autoVirtualDeviceFusionEnabled];
    [v7 setVirtualDeviceConstituentPhotoDeliveryEnabledDevices:self->_internal->virtualDeviceConstituentPhotoDeliveryEnabledDevices];
    [v7 setHighResolutionPhotoEnabled:self->_internal->highResolutionPhotoEnabled];
    [v7 setDepthDataDeliveryEnabled:self->_internal->depthDataDeliveryEnabled];
    [v7 setEmbedsDepthDataInPhoto:self->_internal->embedsDepthDataInPhoto];
    [v7 setDepthDataFiltered:self->_internal->depthDataFiltered];
    [v7 setCameraCalibrationDataDeliveryEnabled:self->_internal->cameraCalibrationDataDeliveryEnabled];
    [v7 setPortraitEffectsMatteDeliveryEnabled:self->_internal->portraitEffectsMatteDeliveryEnabled];
    [v7 setEmbedsPortraitEffectsMatteInPhoto:self->_internal->embedsPortraitEffectsMatteInPhoto];
    [v7 setEnabledSemanticSegmentationMatteTypes:self->_internal->enabledSemanticSegmentationMatteTypes];
    [v7 setEmbedsSemanticSegmentationMattesInPhoto:self->_internal->embedsSemanticSegmentationMattesInPhoto];
    [v7 setMetadata:self->_internal->metadata];
    [v7 setLivePhotoMovieFileURL:self->_internal->livePhotoMovieFileURL];
    [v7 setLivePhotoVideoCodecType:self->_internal->livePhotoVideoCodecType];
    [v7 setLivePhotoMovieMetadata:self->_internal->livePhotoMovieMetadata];
    [v7 setPreviewPhotoFormat:self->_internal->previewPhotoFormat];
    [v7 setEmbeddedThumbnailPhotoFormat:self->_internal->embeddedThumbnailPhotoFormat];
    [v7 setRawFileFormat:self->_internal->rawFileFormat];
    [v7 setRawEmbeddedThumbnailPhotoFormat:self->_internal->rawEmbeddedThumbnailPhotoFormat];
    [v7 setHDRMode:self->_internal->HDRMode];
    [v7 setEV0PhotoDeliveryEnabled:self->_internal->EV0PhotoDeliveryEnabled];
    [v7 setLivePhotoMovieFileURLForOriginalPhoto:self->_internal->livePhotoMovieFileURLForOriginalPhoto];
    [v7 setLivePhotoMovieMetadataForOriginalPhoto:self->_internal->livePhotoMovieMetadataForOriginalPhoto];
    [v7 setPhotoFilters:self->_internal->photoFilters];
    [v7 setAdjustedPhotoFilters:self->_internal->adjustedPhotoFilters];
    [v7 setHEICSFileURL:self->_internal->HEICSFileURL];
    [v7 setVideoFileURL:self->_internal->videoFileURL];
    [v7 setVideoFormat:self->_internal->videoFormat];
    [v7 setVideoFileMetadata:self->_internal->videoFileMetadata];
    [v7 setAutoSpatialOverCaptureEnabled:self->_internal->autoSpatialOverCaptureEnabled];
    [v7 setSpatialOverCaptureMetadata:self->_internal->spatialOverCaptureMetadata];
    [v7 setSpatialOverCaptureLivePhotoMovieFileURL:self->_internal->spatialOverCaptureLivePhotoMovieFileURL];
    [v7 setSpatialOverCaptureLivePhotoMovieMetadata:self->_internal->spatialOverCaptureLivePhotoMovieMetadata];
    *(v7[1] + 336) = [(NSString *)self->_internal->spatialOverCaptureLivePhotoContentIdentifier copy];
    *(v7[1] + 344) = [(NSString *)self->_internal->spatialOverCaptureGroupIdentifier copy];
    [v7 setSpatialOverCaptureMetadataForOriginalPhoto:self->_internal->spatialOverCaptureMetadataForOriginalPhoto];
    [v7 setSpatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto:self->_internal->spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto];
    [v7 setSpatialOverCaptureLivePhotoMovieMetadataForOriginalPhoto:self->_internal->spatialOverCaptureLivePhotoMovieMetadataForOriginalPhoto];
    *(v7[1] + 376) = [(NSString *)self->_internal->spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto copy];
    *(v7[1] + 384) = [(NSString *)self->_internal->spatialOverCaptureGroupIdentifierForOriginalPhoto copy];
    [v7 setProcessedPhotoZoomWithoutUpscalingEnabled:self->_internal->processedPhotoZoomWithoutUpscalingEnabled];
    [v7 setAutoContentAwareDistortionCorrectionEnabled:self->_internal->autoContentAwareDistortionCorrectionEnabled];
    *(v7[1] + 264) = self->_internal->autoDeferredPhotoDeliveryEnabled;
    [v7 setSquareCropEnabled:self->_internal->squareCropEnabled];
    [v7 setTurboModeEnabled:self->_internal->turboModeEnabled];
    [v7 setUserInitiatedPhotoRequestTime:self->_internal->userInitiatedPhotoRequestTime];
    [v7 setSemanticStyle:self->_internal->semanticStyle];
    [v7 setPreviewPhotoFormatDimensionsLimitedToDisplayDimensions:self->_internal->previewPhotoFormatDimensionsLimitedToDisplayDimensions];
    [v7 setLivePhotoContentIdentifier:{-[AVCapturePhotoSettings livePhotoContentIdentifier](self, "livePhotoContentIdentifier")}];
    [v7 setLivePhotoContentIdentifierForOriginalPhoto:{-[AVCapturePhotoSettings livePhotoContentIdentifierForOriginalPhoto](self, "livePhotoContentIdentifierForOriginalPhoto")}];
    [v7 setShutterSound:self->_internal->shutterSound];
    *(v7[1] + 412) = self->_internal->maxPhotoDimensions;
  }

  return v7;
}

- (id)debugDescription
{
  if ([(AVCapturePhotoSettings *)self formatFourCC])
  {
    v3 = MEMORY[0x1E696AEC0];
    [(AVCapturePhotoSettings *)self formatFourCC];
    v4 = AVStringForOSType();
    processedFileType = self->_internal->processedFileType;
    if (processedFileType)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", ps_shortStringForFileType(processedFileType)];
    }

    else
    {
      v6 = &stru_1F1CBCFE8;
    }

    v92 = [v3 stringWithFormat:@"%@%@", v4, v6];
  }

  else
  {
    v92 = @"(null)";
  }

  internal = self->_internal;
  if (internal->rawPhotoPixelFormatType)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = AVStringForOSType();
    rawFileType = self->_internal->rawFileType;
    if (rawFileType)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", ps_shortStringForFileType(rawFileType)];
    }

    else
    {
      v11 = &stru_1F1CBCFE8;
    }

    v91 = [v8 stringWithFormat:@" raw:%@%@", v9, v11];
    internal = self->_internal;
  }

  else
  {
    v91 = &stru_1F1CBCFE8;
  }

  if (internal->flashMode)
  {
    v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@" flash:%d", internal->flashMode];
    internal = self->_internal;
  }

  else
  {
    v90 = &stru_1F1CBCFE8;
  }

  if (internal->constantColorEnabled)
  {
    if (internal->constantColorFallbackPhotoDeliveryEnabled)
    {
      v12 = @"(fallback:1)";
    }

    else
    {
      v12 = &stru_1F1CBCFE8;
    }

    v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@" constant-color:1%@", v12];
    internal = self->_internal;
  }

  else
  {
    v89 = &stru_1F1CBCFE8;
  }

  autoSpatialPhotoCaptureEnabled = internal->autoSpatialPhotoCaptureEnabled;
  if ([(NSArray *)internal->virtualDeviceConstituentPhotoDeliveryEnabledDevices count])
  {
    v13 = MEMORY[0x1E696AEC0];
    virtualDeviceConstituentPhotoDeliveryEnabledDevices = self->_internal->virtualDeviceConstituentPhotoDeliveryEnabledDevices;
    v15 = [MEMORY[0x1E696AD60] string];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v16 = [(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices countByEnumeratingWithState:&v94 objects:v93 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v95;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v95 != v18)
          {
            objc_enumerationMutation(virtualDeviceConstituentPhotoDeliveryEnabledDevices);
          }

          [v15 appendFormat:@"%@+", AVCaptureDeviceTypeToShortString(objc_msgSend(*(*(&v94 + 1) + 8 * i), "deviceType"))];
        }

        v17 = [(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices countByEnumeratingWithState:&v94 objects:v93 count:16];
      }

      while (v17);
    }

    if ([v15 length] < 2)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithString:v15];
    }

    else
    {
      v20 = [v15 substringToIndex:{objc_msgSend(v15, "length") - 1}];
    }

    v21 = [v13 stringWithFormat:@" constituent-photos:%@", v20];
  }

  else
  {
    v21 = &stru_1F1CBCFE8;
  }

  v22 = self->_internal;
  v23 = &stru_1F1CBCFE8;
  if (v22->autoVirtualDeviceFusionEnabled)
  {
    if (![(NSArray *)v22->virtualDeviceConstituentPhotoDeliveryEnabledDevices count])
    {
      v23 = @" auto-virtualdevice-fusion:ON";
    }

    v87 = v23;
    v22 = self->_internal;
  }

  else
  {
    v87 = &stru_1F1CBCFE8;
  }

  v24 = MEMORY[0x1E696AEC0];
  if (v22->EV0PhotoDeliveryEnabled && (livePhotoMovieFileURLForOriginalPhoto = v22->livePhotoMovieFileURLForOriginalPhoto) != 0)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@, content-id:%@", -[NSURL lastPathComponent](livePhotoMovieFileURLForOriginalPhoto, "lastPathComponent"), -[AVCapturePhotoSettings livePhotoContentIdentifierForOriginalPhoto](self, "livePhotoContentIdentifierForOriginalPhoto")];
  }

  else
  {
    v26 = &stru_1F1CBCFE8;
  }

  v27 = [v24 stringWithFormat:@"%@", v26];
  v28 = self->_internal;
  if (v28->EV0PhotoDeliveryEnabled)
  {
    v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (EV0:1%@)", v27];
    v28 = self->_internal;
  }

  else
  {
    v86 = &stru_1F1CBCFE8;
  }

  if (v28->HDRMode)
  {
    v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@" HDR:%d", v28->HDRMode];
    v28 = self->_internal;
  }

  else
  {
    v85 = &stru_1F1CBCFE8;
  }

  v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@" quality:%d", v28->photoQualityPrioritization];
  v29 = self->_internal;
  squareCropEnabled = v29->squareCropEnabled;
  highResolutionPhotoEnabled = v29->highResolutionPhotoEnabled;
  if (v29->depthDataDeliveryEnabled)
  {
    if (v29->embedsDepthDataInPhoto)
    {
      v30 = "";
    }

    else
    {
      v30 = "(not embedded)";
    }

    if (v29->depthDataFiltered)
    {
      v31 = "";
    }

    else
    {
      v31 = "(unfiltered)";
    }

    v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@" depth:ON%s%s", v30, v31];
    v29 = self->_internal;
  }

  else
  {
    v83 = &stru_1F1CBCFE8;
  }

  if (v29->portraitEffectsMatteDeliveryEnabled)
  {
    if (v29->embedsPortraitEffectsMatteInPhoto)
    {
      v32 = "";
    }

    else
    {
      v32 = "(not embedded)";
    }

    v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@" portrait-matte:ON%s", v32];
    v29 = self->_internal;
  }

  else
  {
    v80 = &stru_1F1CBCFE8;
  }

  v33 = &stru_1F1CBCFE8;
  if ([(NSArray *)v29->enabledSemanticSegmentationMatteTypes count])
  {
    enabledSemanticSegmentationMatteTypes = self->_internal->enabledSemanticSegmentationMatteTypes;
    v35 = [(NSArray *)enabledSemanticSegmentationMatteTypes containsObject:@"AVSemanticSegmentationMatteTypeHair"];
    v36 = [(NSArray *)enabledSemanticSegmentationMatteTypes containsObject:@"AVSemanticSegmentationMatteTypeSkin"];
    v37 = [(NSArray *)enabledSemanticSegmentationMatteTypes containsObject:@"AVSemanticSegmentationMatteTypeTeeth"];
    v38 = [(NSArray *)enabledSemanticSegmentationMatteTypes containsObject:@"AVSemanticSegmentationMatteTypeGlasses"];
    v39 = @"hair,";
    if (!v35)
    {
      v39 = &stru_1F1CBCFE8;
    }

    v40 = @"skin,";
    if (!v36)
    {
      v40 = &stru_1F1CBCFE8;
    }

    v41 = @"teeth,";
    if (!v37)
    {
      v41 = &stru_1F1CBCFE8;
    }

    v42 = @"glasses,";
    if (!v38)
    {
      v42 = &stru_1F1CBCFE8;
    }

    v33 = [MEMORY[0x1E696AD60] stringWithFormat:@" seg-mattes:{%@%@%@%@}", v39, v40, v41, v42];
    [(__CFString *)v33 deleteCharactersInRange:[(__CFString *)v33 length]- 2, 1];
  }

  v43 = self->_internal;
  turboModeEnabled = v43->turboModeEnabled;
  burstQualityCaptureEnabled = v43->burstQualityCaptureEnabled;
  v76 = [(NSDictionary *)v43->previewPhotoFormat count];
  v75 = [(AVCapturePhotoSettings *)self embeddedThumbnailFormatFourCC];
  v74 = [(AVCapturePhotoSettings *)self rawEmbeddedThumbnailFormatFourCC];
  v44 = self->_internal;
  if (v44->shutterSound == 1108)
  {
    v78 = &stru_1F1CBCFE8;
  }

  else
  {
    v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@" custom-shutter:%d", v44->shutterSound];
    v44 = self->_internal;
  }

  livePhotoMovieFileURL = v44->livePhotoMovieFileURL;
  if (livePhotoMovieFileURL)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@" mov:{%@, %@, content-id:%@}", -[NSURL lastPathComponent](livePhotoMovieFileURL, "lastPathComponent"), -[AVCapturePhotoSettings livePhotoVideoCodecType](self, "livePhotoVideoCodecType"), -[AVCapturePhotoSettings livePhotoContentIdentifier](self, "livePhotoContentIdentifier")];
    v44 = self->_internal;
  }

  else
  {
    v46 = &stru_1F1CBCFE8;
  }

  if ([(NSArray *)v44->photoFilters count])
  {
    v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@" photo-filters:[%@]", AVCIFilterArrayDescription(self->_internal->photoFilters)];
  }

  else
  {
    v73 = &stru_1F1CBCFE8;
  }

  if ([(NSArray *)self->_internal->adjustedPhotoFilters count])
  {
    v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@" adjusted-filters:[%@]", AVCIFilterArrayDescription(self->_internal->adjustedPhotoFilters)];
  }

  else
  {
    v72 = &stru_1F1CBCFE8;
  }

  v47 = self->_internal;
  semanticStyle = v47->semanticStyle;
  if (semanticStyle)
  {
    v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@" semantic-style:{%@}", -[AVSemanticStyle debugDescription](semanticStyle, "debugDescription")];
    v47 = self->_internal;
  }

  else
  {
    v71 = &stru_1F1CBCFE8;
  }

  HEICSFileURL = v47->HEICSFileURL;
  if (HEICSFileURL)
  {
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@" HEICS:%@", -[NSURL lastPathComponent](HEICSFileURL, "lastPathComponent")];
    v47 = self->_internal;
  }

  else
  {
    v50 = &stru_1F1CBCFE8;
  }

  videoFileURL = v47->videoFileURL;
  if (videoFileURL)
  {
    v52 = MEMORY[0x1E696AEC0];
    v53 = [(NSURL *)videoFileURL lastPathComponent];
    v54 = *MEMORY[0x1E6987CB0];
    if ([(NSDictionary *)self->_internal->videoFormat objectForKeyedSubscript:*MEMORY[0x1E6987CB0]])
    {
      v55 = [(NSDictionary *)self->_internal->videoFormat objectForKeyedSubscript:v54];
    }

    else
    {
      v55 = *MEMORY[0x1E6987CE8];
    }

    v56 = [v52 stringWithFormat:@" video:{%@, %@}", v53, v55];
    v47 = self->_internal;
  }

  else
  {
    v56 = &stru_1F1CBCFE8;
  }

  if (v47->autoSpatialOverCaptureEnabled)
  {
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@" spatial-overcapture mov:{%@, %@, content-id:%@, group-id:%@}", -[NSURL lastPathComponent](v47->spatialOverCaptureLivePhotoMovieFileURL, "lastPathComponent"), -[AVCapturePhotoSettings livePhotoVideoCodecType](self, "livePhotoVideoCodecType"), -[AVCapturePhotoSettings spatialOverCaptureLivePhotoContentIdentifier](self, "spatialOverCaptureLivePhotoContentIdentifier"), -[AVCapturePhotoSettings spatialOverCaptureGroupIdentifier](self, "spatialOverCaptureGroupIdentifier")];
    v47 = self->_internal;
    if (v47->EV0PhotoDeliveryEnabled && (spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto = v47->spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto) != 0)
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@" spatial-overcapture (EV0) mov:{%@, %@, content-id:%@, group-id:%@}", -[NSURL lastPathComponent](spatialOverCaptureLivePhotoMovieFileURLForOriginalPhoto, "lastPathComponent"), -[AVCapturePhotoSettings livePhotoVideoCodecType](self, "livePhotoVideoCodecType"), -[AVCapturePhotoSettings spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto](self, "spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto"), -[AVCapturePhotoSettings spatialOverCaptureGroupIdentifierForOriginalPhoto](self, "spatialOverCaptureGroupIdentifierForOriginalPhoto")];
      v47 = self->_internal;
    }

    else
    {
      v59 = &stru_1F1CBCFE8;
    }
  }

  else
  {
    v57 = &stru_1F1CBCFE8;
    v59 = &stru_1F1CBCFE8;
  }

  if (v74)
  {
    v60 = @" raw-thumb:ON";
  }

  else
  {
    v60 = &stru_1F1CBCFE8;
  }

  if (v75)
  {
    v61 = @" thumb:ON";
  }

  else
  {
    v61 = &stru_1F1CBCFE8;
  }

  if (v76)
  {
    v62 = @" prev:ON";
  }

  else
  {
    v62 = &stru_1F1CBCFE8;
  }

  if (burstQualityCaptureEnabled)
  {
    v63 = @" burst:ON";
  }

  else
  {
    v63 = &stru_1F1CBCFE8;
  }

  if (turboModeEnabled)
  {
    v64 = @" turbo:ON";
  }

  else
  {
    v64 = &stru_1F1CBCFE8;
  }

  if (highResolutionPhotoEnabled)
  {
    v65 = @" high-res:ON";
  }

  else
  {
    v65 = &stru_1F1CBCFE8;
  }

  if (squareCropEnabled)
  {
    v66 = @" square-crop:ON";
  }

  else
  {
    v66 = &stru_1F1CBCFE8;
  }

  if (autoSpatialPhotoCaptureEnabled)
  {
    v67 = @" spatialPhoto:ON";
  }

  else
  {
    v67 = &stru_1F1CBCFE8;
  }

  v68 = @" zoom-without-upscale:ON";
  if (!v47->processedPhotoZoomWithoutUpscalingEnabled)
  {
    v68 = &stru_1F1CBCFE8;
  }

  v69 = @" preview-photo-format-dimensions-limited-to-display-dimensions:NO";
  if (v47->previewPhotoFormatDimensionsLimitedToDisplayDimensions)
  {
    v69 = &stru_1F1CBCFE8;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"uid:%lld %@:{%@%@%@%@%@%@%@%@%@%@ }%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@", v47->uniqueID, v92, v91, v90, v89, &stru_1F1CBCFE8, v85, v86, v84, v21, v87, v66, v65, v83, v80, v33, v64, v63, v62, v61, v60, v78, v46, v73, v72, v71, v50, v56, v57, v59, v68, v69, v67];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCapturePhotoSettings debugDescription](self, "debugDescription")];
}

- (void)setTurboModeEnabled:(BOOL)a3
{
  internal = self->_internal;
  if (a3 && internal->autoSpatialOverCaptureEnabled)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else
  {
    internal->turboModeEnabled = a3;
  }
}

- (void)setDigitalFlashMode:(int64_t)a3
{
  if (a3 >= 3)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    self->_internal->digitalFlashMode = a3;
  }
}

- (void)setPhotoQualityPrioritization:(AVCapturePhotoQualityPrioritization)photoQualityPrioritization
{
  v5 = [AVCapturePhotoOutput isBayerRAWPixelFormat:self->_internal->rawPhotoPixelFormatType];
  if (photoQualityPrioritization == AVCapturePhotoQualityPrioritizationSpeed || !v5)
  {
    if ((photoQualityPrioritization - 1) < 3)
    {
      self->_internal->photoQualityPrioritization = photoQualityPrioritization;
      self->_internal->photoQualityPrioritizationIsSetByClient = 1;
      return;
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v14 = photoQualityPrioritization;
    v8 = AVMethodExceptionReasonWithObjectAndSelector();
    v9 = v11;
    v10 = v12;
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = AVMethodExceptionReasonWithObjectAndSelector();
    v9 = v6;
    v10 = v7;
  }

  v13 = [v9 exceptionWithName:v10 reason:v8 userInfo:{0, v14}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v13);
  }

  NSLog(&cfstr_SuppressingExc.isa, v13);
}

- (void)setAutoStillImageStabilizationEnabled:(BOOL)autoStillImageStabilizationEnabled
{
  if (autoStillImageStabilizationEnabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  internal = self->_internal;
  if (internal->photoQualityPrioritization != v3)
  {
    [(AVCapturePhotoSettings *)self willChangeValueForKey:@"photoQualityPrioritization"];
    self->_internal->photoQualityPrioritization = v3;
    [(AVCapturePhotoSettings *)self didChangeValueForKey:@"photoQualityPrioritization"];
    internal = self->_internal;
  }

  internal->photoQualityPrioritizationIsSetByClient = 1;
}

- (void)setAutoVirtualDeviceFusionEnabled:(BOOL)autoVirtualDeviceFusionEnabled
{
  v3 = autoVirtualDeviceFusionEnabled;
  if ([AVCapturePhotoOutput isBayerRAWPixelFormat:self->_internal->rawPhotoPixelFormatType])
  {
    v5 = !v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (self->_internal->autoVirtualDeviceFusionEnabled != v3)
    {
      [(AVCapturePhotoSettings *)self willChangeValueForKey:@"autoDualCameraFusionEnabled"];
      self->_internal->autoVirtualDeviceFusionEnabled = v3;

      [(AVCapturePhotoSettings *)self didChangeValueForKey:@"autoDualCameraFusionEnabled"];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setAutoDualCameraFusionEnabled:(BOOL)autoDualCameraFusionEnabled
{
  v3 = autoDualCameraFusionEnabled;
  if ([AVCapturePhotoOutput isBayerRAWPixelFormat:self->_internal->rawPhotoPixelFormatType])
  {
    v5 = !v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (self->_internal->autoVirtualDeviceFusionEnabled != v3)
    {
      [(AVCapturePhotoSettings *)self willChangeValueForKey:@"autoVirtualDeviceFusionEnabled"];
      self->_internal->autoVirtualDeviceFusionEnabled = v3;

      [(AVCapturePhotoSettings *)self didChangeValueForKey:@"autoVirtualDeviceFusionEnabled"];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setVirtualDeviceConstituentPhotoDeliveryEnabledDevices:(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices
{
  if (virtualDeviceConstituentPhotoDeliveryEnabledDevices)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(virtualDeviceConstituentPhotoDeliveryEnabledDevices);
          }

          if ([*(*(&v14 + 1) + 8 * v8) isVirtualDevice])
          {
            v10 = MEMORY[0x1E695DF30];
            v11 = *MEMORY[0x1E695D940];
            goto LABEL_16;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = [objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{virtualDeviceConstituentPhotoDeliveryEnabledDevices), "count"}];
    if (v9 == [(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices count])
    {
      if (([(NSArray *)self->_internal->virtualDeviceConstituentPhotoDeliveryEnabledDevices isEqual:virtualDeviceConstituentPhotoDeliveryEnabledDevices]& 1) == 0)
      {
        [(AVCapturePhotoSettings *)self willChangeValueForKey:@"dualCameraDualPhotoDeliveryEnabled"];

        self->_internal->virtualDeviceConstituentPhotoDeliveryEnabledDevices = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:virtualDeviceConstituentPhotoDeliveryEnabledDevices];
        [(AVCapturePhotoSettings *)self didChangeValueForKey:@"dualCameraDualPhotoDeliveryEnabled"];
      }

      return;
    }

    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
  }

  else
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
  }

LABEL_16:
  v12 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v12);
  }

  NSLog(&cfstr_SuppressingExc.isa, v12);
}

- (void)setDualCameraDualPhotoDeliveryEnabled:(BOOL)dualCameraDualPhotoDeliveryEnabled
{
  if (dualCameraDualPhotoDeliveryEnabled && (v4 = [AVCaptureDevice defaultDeviceWithDeviceType:@"AVCaptureDeviceTypeBuiltInDualCamera" mediaType:*MEMORY[0x1E6987608] position:0], [(AVCaptureDevice *)v4 deviceType]== @"AVCaptureDeviceTypeBuiltInDualCamera"))
  {
    v5 = [(AVCaptureDevice *)v4 constituentDevices];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  if (([v6 isEqual:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", self->_internal->virtualDeviceConstituentPhotoDeliveryEnabledDevices)}] & 1) == 0)
  {
    [(AVCapturePhotoSettings *)self willChangeValueForKey:@"virtualDeviceConstituentPhotoDeliveryEnabledDevices"];

    self->_internal->virtualDeviceConstituentPhotoDeliveryEnabledDevices = v5;

    [(AVCapturePhotoSettings *)self didChangeValueForKey:@"virtualDeviceConstituentPhotoDeliveryEnabledDevices"];
  }
}

- (void)setEnabledSemanticSegmentationMatteTypes:(NSArray *)enabledSemanticSegmentationMatteTypes
{
  if (enabledSemanticSegmentationMatteTypes)
  {

    self->_internal->enabledSemanticSegmentationMatteTypes = [(NSArray *)enabledSemanticSegmentationMatteTypes copy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (NSDictionary)metadata
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_internal->metadata];
  v4 = v3;
  if (self->_internal->autoSpatialOverCaptureEnabled)
  {
    v5 = *MEMORY[0x1E696DE30];
    v6 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      [(NSDictionary *)v4 setObject:v6 forKeyedSubscript:v5];
    }

    [v6 setObject:-[AVCapturePhotoSettings spatialOverCaptureGroupIdentifier](self forKeyedSubscript:{"spatialOverCaptureGroupIdentifier"), @"41"}];
  }

  return v4;
}

- (void)setMetadata:(NSDictionary *)metadata
{
  if (metadata)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:{+[AVCapturePhotoOutput validMetadataTopLevelCGImagePropertiesKeys](AVCapturePhotoOutput, "validMetadataTopLevelCGImagePropertiesKeys")}];
    v6 = [MEMORY[0x1E695DFA8] setWithArray:{-[NSDictionary allKeys](metadata, "allKeys")}];
    [v6 minusSet:v5];
    if (![v6 count])
    {

      self->_internal->metadata = [(NSDictionary *)metadata copy];
      return;
    }

    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v15 = v6;
    v9 = AVMethodExceptionReasonWithObjectAndSelector();
    v10 = v7;
    v11 = v8;
  }

  else
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v9 = AVMethodExceptionReasonWithObjectAndSelector();
    v10 = v12;
    v11 = v13;
  }

  v14 = [v10 exceptionWithName:v11 reason:v9 userInfo:{0, v15}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v14);
  }

  NSLog(&cfstr_SuppressingExc.isa, v14);
}

- (id)metadataForOriginalPhoto
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_internal->metadata];
  v4 = v3;
  if (self->_internal->autoSpatialOverCaptureEnabled)
  {
    v5 = *MEMORY[0x1E696DE30];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      [v4 setObject:v6 forKeyedSubscript:v5];
    }

    [v6 setObject:-[AVCapturePhotoSettings spatialOverCaptureGroupIdentifierForOriginalPhoto](self forKeyedSubscript:{"spatialOverCaptureGroupIdentifierForOriginalPhoto"), @"41"}];
  }

  return v4;
}

- (void)setLivePhotoVideoCodecType:(AVVideoCodecType)livePhotoVideoCodecType
{
  if (livePhotoVideoCodecType)
  {

    self->_internal->livePhotoVideoCodecType = [(NSString *)livePhotoVideoCodecType copy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (NSArray)livePhotoMovieMetadata
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_internal->livePhotoMovieMetadata, "count") + 2}];
  v4 = v3;
  if (self->_internal->livePhotoMovieMetadata)
  {
    [(NSArray *)v3 addObjectsFromArray:?];
  }

  v5 = objc_alloc_init(MEMORY[0x1E6988050]);
  v6 = *MEMORY[0x1E6987850];
  [v5 setKeySpace:*MEMORY[0x1E6987850]];
  [v5 setKey:*MEMORY[0x1E6987890]];
  [v5 setValue:{-[AVCapturePhotoSettings livePhotoContentIdentifier](self, "livePhotoContentIdentifier")}];
  [(NSArray *)v4 addObject:v5];

  if (self->_internal->autoSpatialOverCaptureEnabled)
  {
    v7 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v7 setKeySpace:v6];
    [v7 setKey:*MEMORY[0x1E69878F8]];
    [v7 setValue:{-[AVCapturePhotoSettings spatialOverCaptureGroupIdentifier](self, "spatialOverCaptureGroupIdentifier")}];
    [(NSArray *)v4 addObject:v7];
  }

  return v4;
}

- (void)setLivePhotoMovieMetadata:(NSArray *)livePhotoMovieMetadata
{
  v20 = 0;
  v5 = [(AVCapturePhotoSettings *)self _sanitizedLivePhotoMovieMetadataForArray:livePhotoMovieMetadata exceptionReason:&v20];
  if (v20)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    v7 = v5;

    self->_internal->livePhotoMovieMetadata = v7;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(NSArray *)livePhotoMovieMetadata countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = *MEMORY[0x1E6987850];
      v12 = *MEMORY[0x1E6987890];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(livePhotoMovieMetadata);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([objc_msgSend(v14 "keySpace")] && objc_msgSend(objc_msgSend(v14, "key"), "isEqual:", v12))
          {

            self->_internal->livePhotoContentIdentifier = [objc_msgSend(v14 "value")];
            return;
          }
        }

        v9 = [(NSArray *)livePhotoMovieMetadata countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (id)livePhotoMovieMetadataForOriginalPhoto
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_internal->livePhotoMovieMetadataForOriginalPhoto, "count") + 2}];
  v4 = v3;
  if (self->_internal->livePhotoMovieMetadataForOriginalPhoto)
  {
    [v3 addObjectsFromArray:?];
  }

  v5 = objc_alloc_init(MEMORY[0x1E6988050]);
  v6 = *MEMORY[0x1E6987850];
  [v5 setKeySpace:*MEMORY[0x1E6987850]];
  [v5 setKey:*MEMORY[0x1E6987890]];
  [v5 setValue:{-[AVCapturePhotoSettings livePhotoContentIdentifierForOriginalPhoto](self, "livePhotoContentIdentifierForOriginalPhoto")}];
  [v4 addObject:v5];

  if (self->_internal->autoSpatialOverCaptureEnabled)
  {
    v7 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v7 setKeySpace:v6];
    [v7 setKey:*MEMORY[0x1E69878F8]];
    [v7 setValue:{-[AVCapturePhotoSettings spatialOverCaptureGroupIdentifierForOriginalPhoto](self, "spatialOverCaptureGroupIdentifierForOriginalPhoto")}];
    [v4 addObject:v7];
  }

  return v4;
}

- (void)setLivePhotoMovieMetadataForOriginalPhoto:(id)a3
{
  v20 = 0;
  v5 = [(AVCapturePhotoSettings *)self _sanitizedLivePhotoMovieMetadataForArray:a3 exceptionReason:&v20];
  if (v20)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    v7 = v5;

    self->_internal->livePhotoMovieMetadataForOriginalPhoto = v7;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = *MEMORY[0x1E6987850];
      v12 = *MEMORY[0x1E6987890];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([objc_msgSend(v14 "keySpace")] && objc_msgSend(objc_msgSend(v14, "key"), "isEqual:", v12))
          {

            self->_internal->livePhotoContentIdentifierForOriginalPhoto = [objc_msgSend(v14 "value")];
            return;
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (void)setPreviewPhotoFormat:(NSDictionary *)previewPhotoFormat
{
  v8 = 0;
  v5 = *MEMORY[0x1E6966208];
  v7[0] = *MEMORY[0x1E6966130];
  v7[1] = v5;
  v7[2] = *MEMORY[0x1E69660B8];
  if (+[AVCaptureVideoSettingsValidator validateVideoSettings:allowingFeatures:validPixelKeys:validPixelFormats:validCodecKeys:validCodecs:exceptionReason:](AVCaptureVideoSettingsValidator, "validateVideoSettings:allowingFeatures:validPixelKeys:validPixelFormats:validCodecKeys:validCodecs:exceptionReason:", previewPhotoFormat, 5, [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3], -[AVCapturePhotoSettings availablePreviewPhotoPixelFormatTypes](self, "availablePreviewPhotoPixelFormatTypes"), 0, 0, &v8))
  {

    self->_internal->previewPhotoFormat = [(NSDictionary *)previewPhotoFormat copy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setEmbeddedThumbnailPhotoFormat:(NSDictionary *)embeddedThumbnailPhotoFormat
{
  v8 = 0;
  v5 = *MEMORY[0x1E6987E08];
  v7[0] = *MEMORY[0x1E6987CB0];
  v7[1] = v5;
  v7[2] = *MEMORY[0x1E6987D70];
  if (+[AVCaptureVideoSettingsValidator validateVideoSettings:allowingFeatures:validPixelKeys:validPixelFormats:validCodecKeys:validCodecs:exceptionReason:](AVCaptureVideoSettingsValidator, "validateVideoSettings:allowingFeatures:validPixelKeys:validPixelFormats:validCodecKeys:validCodecs:exceptionReason:", embeddedThumbnailPhotoFormat, 25, 0, 0, [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3], -[AVCapturePhotoSettings availableEmbeddedThumbnailPhotoCodecTypes](self, "availableEmbeddedThumbnailPhotoCodecTypes"), &v8))
  {

    self->_internal->embeddedThumbnailPhotoFormat = [(NSDictionary *)embeddedThumbnailPhotoFormat copy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setRawFileFormat:(id)a3
{
  if (!a3)
  {
    goto LABEL_8;
  }

  v15 = 0;
  v5 = *MEMORY[0x1E6987C58];
  v6 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6987C58]];
  if (!v6)
  {
LABEL_7:
    v14[0] = *MEMORY[0x1E6987D00];
    v14[1] = AVStringForOSType();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v9 = *MEMORY[0x1E6987DC0];
    v13[0] = *MEMORY[0x1E6987CB0];
    v13[1] = v9;
    v13[2] = v5;
    if (!+[AVCaptureVideoSettingsValidator validateVideoSettings:allowingFeatures:validPixelKeys:validPixelFormats:validCodecKeys:validCodecs:exceptionReason:](AVCaptureVideoSettingsValidator, "validateVideoSettings:allowingFeatures:validPixelKeys:validPixelFormats:validCodecKeys:validCodecs:exceptionReason:", a3, 25, 0, 0, [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3], v8, &v15))
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      goto LABEL_11;
    }

LABEL_8:

    self->_internal->rawFileFormat = [a3 copy];
    return;
  }

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v7 intValue] < 8 || objc_msgSend(v7, "intValue") >= 17)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"AVVideoAppleProRAWBitDepthKey value (%@) not supported. Expected a value in the range of 8-16.", v7];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D940];
LABEL_11:
  v12 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v12);
  }

  NSLog(&cfstr_SuppressingExc.isa, v12);
}

- (void)setRawEmbeddedThumbnailPhotoFormat:(NSDictionary *)rawEmbeddedThumbnailPhotoFormat
{
  v8 = 0;
  v5 = *MEMORY[0x1E6987E08];
  v7[0] = *MEMORY[0x1E6987CB0];
  v7[1] = v5;
  v7[2] = *MEMORY[0x1E6987D70];
  if (+[AVCaptureVideoSettingsValidator validateVideoSettings:allowingFeatures:validPixelKeys:validPixelFormats:validCodecKeys:validCodecs:exceptionReason:](AVCaptureVideoSettingsValidator, "validateVideoSettings:allowingFeatures:validPixelKeys:validPixelFormats:validCodecKeys:validCodecs:exceptionReason:", rawEmbeddedThumbnailPhotoFormat, 25, 0, 0, [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3], -[AVCapturePhotoSettings availableRawEmbeddedThumbnailPhotoCodecTypes](self, "availableRawEmbeddedThumbnailPhotoCodecTypes"), &v8))
  {

    self->_internal->rawEmbeddedThumbnailPhotoFormat = [(NSDictionary *)rawEmbeddedThumbnailPhotoFormat copy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (CGSize)previewCGSize
{
  v2 = ps_CGSizeForSettingsDictionary(self->_internal->previewPhotoFormat);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)embeddedThumbnailCGSize
{
  v2 = ps_CGSizeForSettingsDictionary(self->_internal->embeddedThumbnailPhotoFormat);
  result.height = v3;
  result.width = v2;
  return result;
}

- (unsigned)rawEmbeddedThumbnailFormatFourCC
{
  BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCapturePhotoSettingsSupportRawEmbeddedThumbnailFormat");
  internal = self->_internal;
  if ((BoolAnswer & 1) != 0 || !internal->rawFileType)
  {
    v5 = 216;
  }

  else
  {
    v5 = 200;
  }

  v6 = *(&internal->super.isa + v5);

  return ps_formatFourCCForSettingsDictionary(v6);
}

- (CGSize)rawEmbeddedThumbnailCGSize
{
  BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCapturePhotoSettingsSupportRawEmbeddedThumbnailFormat");
  internal = self->_internal;
  if ((BoolAnswer & 1) != 0 || !internal->rawFileType)
  {
    v5 = 216;
  }

  else
  {
    v5 = 200;
  }

  v6 = *(&internal->super.isa + v5);

  v7 = ps_CGSizeForSettingsDictionary(v6);
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setPhotoFilters:(id)a3
{
  if (!a3)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
LABEL_15:
    v11 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v11);
    }

    NSLog(&cfstr_SuppressingExc.isa, v11);
    return;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = MEMORY[0x1E695DF30];
          v10 = *MEMORY[0x1E695D940];
          goto LABEL_15;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (([a3 isEqual:self->_internal->photoFilters] & 1) == 0)
  {
    if (AVCaptureClientHasEntitlement(AVCaptureEntitlementFilterRendering))
    {

      self->_internal->photoFilters = [a3 copy];
      return;
    }

    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    goto LABEL_15;
  }
}

- (void)setAdjustedPhotoFilters:(id)a3
{
  if (!a3)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
LABEL_15:
    v11 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v11);
    }

    NSLog(&cfstr_SuppressingExc.isa, v11);
    return;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = MEMORY[0x1E695DF30];
          v10 = *MEMORY[0x1E695D940];
          goto LABEL_15;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (([a3 isEqual:self->_internal->adjustedPhotoFilters] & 1) == 0)
  {
    if (AVCaptureClientHasEntitlement(AVCaptureEntitlementFilterRendering))
    {

      self->_internal->adjustedPhotoFilters = [a3 copy];
      return;
    }

    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    goto LABEL_15;
  }
}

- (void)setHEICSFileURL:(id)a3
{
  HEICSFileURL = self->_internal->HEICSFileURL;
  if (HEICSFileURL != a3)
  {

    self->_internal->HEICSFileURL = [a3 copy];
  }
}

- (void)setVideoFileURL:(id)a3
{
  videoFileURL = self->_internal->videoFileURL;
  if (videoFileURL != a3)
  {

    self->_internal->videoFileURL = [a3 copy];
  }
}

- (void)setVideoFormat:(id)a3
{
  videoFormat = self->_internal->videoFormat;
  if (videoFormat != a3)
  {

    self->_internal->videoFormat = [a3 copy];
  }
}

- (void)setVideoFileMetadata:(id)a3
{
  videoFileMetadata = self->_internal->videoFileMetadata;
  if (videoFileMetadata != a3)
  {

    self->_internal->videoFileMetadata = [a3 copy];
  }
}

- (void)_setPropertiesFromMomentCaptureSettings:(id)a3
{
  self->_internal->userInitiatedPhotoRequestTime = [a3 userInitiatedCaptureTime];
  -[AVCapturePhotoSettings _setPhotoQualityPrioritization:](self, "_setPhotoQualityPrioritization:", [a3 photoQualityPrioritization]);
  -[AVCapturePhotoSettings setFlashMode:](self, "setFlashMode:", [a3 flashMode]);
  -[AVCapturePhotoSettings setAutoRedEyeReductionEnabled:](self, "setAutoRedEyeReductionEnabled:", [a3 isAutoRedEyeReductionEnabled]);
  -[AVCapturePhotoSettings setDigitalFlashMode:](self, "setDigitalFlashMode:", [a3 digitalFlashMode]);
  -[AVCapturePhotoSettings setHDRMode:](self, "setHDRMode:", [a3 HDRMode]);
  -[AVCapturePhotoSettings setEV0PhotoDeliveryEnabled:](self, "setEV0PhotoDeliveryEnabled:", [a3 isAutoOriginalPhotoDeliveryEnabled]);
  v5 = [a3 isAutoSpatialOverCaptureEnabled];

  [(AVCapturePhotoSettings *)self setAutoSpatialOverCaptureEnabled:v5];
}

+ (id)photoSettingsFromMomentCaptureSettings:(id)a3 withFormat:(id)a4
{
  v9 = 0;
  v5 = [objc_alloc(objc_opt_class()) _initWithFormat:a4 processedFileType:0 rawPixelFormatType:0 rawFileType:0 burstQualityCaptureEnabled:0 uniqueID:objc_msgSend(a3 exceptionReason:"uniqueID"), &v9];
  if (v9)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
    return 0;
  }

  else
  {
    v7 = v5;
    [v5 _setPropertiesFromMomentCaptureSettings:a3];
  }

  return v7;
}

+ (id)photoSettingsFromMomentCaptureSettings:(id)a3 withRawPixelFormatType:(unsigned int)a4 rawFileType:(id)a5 format:(id)a6
{
  v11 = 0;
  v7 = [objc_alloc(objc_opt_class()) _initWithFormat:a6 processedFileType:0 rawPixelFormatType:*&a4 rawFileType:a5 burstQualityCaptureEnabled:0 uniqueID:objc_msgSend(a3 exceptionReason:"uniqueID"), &v11];
  if (v11)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
    return 0;
  }

  else
  {
    v9 = v7;
    [v7 _setPropertiesFromMomentCaptureSettings:a3];
  }

  return v9;
}

- (void)setAutoSpatialOverCaptureEnabled:(BOOL)a3
{
  internal = self->_internal;
  if (a3 && internal->turboModeEnabled)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else
  {
    internal->autoSpatialOverCaptureEnabled = a3;
  }
}

- (id)spatialOverCaptureMetadata
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_internal->spatialOverCaptureMetadata];
  v4 = v3;
  if (self->_internal->autoSpatialOverCaptureEnabled)
  {
    v5 = *MEMORY[0x1E696DE30];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      [v4 setObject:v6 forKeyedSubscript:v5];
    }

    [v6 setObject:-[AVCapturePhotoSettings spatialOverCaptureGroupIdentifier](self forKeyedSubscript:{"spatialOverCaptureGroupIdentifier"), @"41"}];
  }

  return v4;
}

- (void)setSpatialOverCaptureMetadata:(id)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:{+[AVCapturePhotoOutput validMetadataTopLevelCGImagePropertiesKeys](AVCapturePhotoOutput, "validMetadataTopLevelCGImagePropertiesKeys")}];
    v6 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a3, "allKeys")}];
    [v6 minusSet:v5];
    if (![v6 count])
    {

      self->_internal->spatialOverCaptureMetadata = [a3 copy];
      return;
    }

    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v15 = v6;
    v9 = AVMethodExceptionReasonWithObjectAndSelector();
    v10 = v7;
    v11 = v8;
  }

  else
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v9 = AVMethodExceptionReasonWithObjectAndSelector();
    v10 = v12;
    v11 = v13;
  }

  v14 = [v10 exceptionWithName:v11 reason:v9 userInfo:{0, v15}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v14);
  }

  NSLog(&cfstr_SuppressingExc.isa, v14);
}

- (id)spatialOverCaptureLivePhotoMovieMetadata
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_internal->spatialOverCaptureLivePhotoMovieMetadata, "count") + 3}];
  v4 = v3;
  if (self->_internal->spatialOverCaptureLivePhotoMovieMetadata)
  {
    [v3 addObjectsFromArray:?];
  }

  v5 = objc_alloc_init(MEMORY[0x1E6988050]);
  v6 = *MEMORY[0x1E6987850];
  [v5 setKeySpace:*MEMORY[0x1E6987850]];
  [v5 setKey:*MEMORY[0x1E6987890]];
  [v5 setValue:{-[AVCapturePhotoSettings spatialOverCaptureLivePhotoContentIdentifier](self, "spatialOverCaptureLivePhotoContentIdentifier")}];
  [v4 addObject:v5];

  v7 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v7 setKeySpace:v6];
  [v7 setKey:*MEMORY[0x1E69878F8]];
  [v7 setValue:{-[AVCapturePhotoSettings spatialOverCaptureGroupIdentifier](self, "spatialOverCaptureGroupIdentifier")}];
  [v4 addObject:v7];

  v8 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v8 setKeySpace:v6];
  [v8 setKey:*MEMORY[0x1E6987888]];
  [v8 setDataType:*MEMORY[0x1E69602A8]];
  [v8 setValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", 1)}];
  [v4 addObject:v8];

  return v4;
}

- (void)setSpatialOverCaptureLivePhotoMovieMetadata:(id)a3
{
  v20 = 0;
  v5 = [(AVCapturePhotoSettings *)self _sanitizedLivePhotoMovieMetadataForArray:a3 exceptionReason:&v20];
  if (v20)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    v7 = v5;

    self->_internal->spatialOverCaptureLivePhotoMovieMetadata = v7;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = *MEMORY[0x1E6987850];
      v12 = *MEMORY[0x1E6987890];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([objc_msgSend(v14 "keySpace")] && objc_msgSend(objc_msgSend(v14, "key"), "isEqual:", v12))
          {

            self->_internal->spatialOverCaptureLivePhotoContentIdentifier = [objc_msgSend(v14 "value")];
            return;
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (id)spatialOverCaptureLivePhotoContentIdentifier
{
  result = self->_internal->spatialOverCaptureLivePhotoContentIdentifier;
  if (!result)
  {
    self->_internal->spatialOverCaptureLivePhotoContentIdentifier = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    return self->_internal->spatialOverCaptureLivePhotoContentIdentifier;
  }

  return result;
}

- (id)spatialOverCaptureGroupIdentifier
{
  result = self->_internal->spatialOverCaptureGroupIdentifier;
  if (!result)
  {
    self->_internal->spatialOverCaptureGroupIdentifier = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    return self->_internal->spatialOverCaptureGroupIdentifier;
  }

  return result;
}

- (id)spatialOverCaptureMetadataForOriginalPhoto
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_internal->spatialOverCaptureMetadataForOriginalPhoto];
  v4 = v3;
  if (self->_internal->autoSpatialOverCaptureEnabled)
  {
    v5 = *MEMORY[0x1E696DE30];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      [v4 setObject:v6 forKeyedSubscript:v5];
    }

    [v6 setObject:-[AVCapturePhotoSettings spatialOverCaptureGroupIdentifierForOriginalPhoto](self forKeyedSubscript:{"spatialOverCaptureGroupIdentifierForOriginalPhoto"), @"41"}];
  }

  return v4;
}

- (void)setSpatialOverCaptureMetadataForOriginalPhoto:(id)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:{+[AVCapturePhotoOutput validMetadataTopLevelCGImagePropertiesKeys](AVCapturePhotoOutput, "validMetadataTopLevelCGImagePropertiesKeys")}];
    v6 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a3, "allKeys")}];
    [v6 minusSet:v5];
    if (![v6 count])
    {

      self->_internal->spatialOverCaptureMetadataForOriginalPhoto = [a3 copy];
      return;
    }

    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v15 = v6;
    v9 = AVMethodExceptionReasonWithObjectAndSelector();
    v10 = v7;
    v11 = v8;
  }

  else
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v9 = AVMethodExceptionReasonWithObjectAndSelector();
    v10 = v12;
    v11 = v13;
  }

  v14 = [v10 exceptionWithName:v11 reason:v9 userInfo:{0, v15}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v14);
  }

  NSLog(&cfstr_SuppressingExc.isa, v14);
}

- (id)spatialOverCaptureLivePhotoMovieMetadataForOriginalPhoto
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_internal->spatialOverCaptureLivePhotoMovieMetadataForOriginalPhoto, "count") + 3}];
  v4 = v3;
  if (self->_internal->spatialOverCaptureLivePhotoMovieMetadataForOriginalPhoto)
  {
    [v3 addObjectsFromArray:?];
  }

  v5 = objc_alloc_init(MEMORY[0x1E6988050]);
  v6 = *MEMORY[0x1E6987850];
  [v5 setKeySpace:*MEMORY[0x1E6987850]];
  [v5 setKey:*MEMORY[0x1E6987890]];
  [v5 setValue:{-[AVCapturePhotoSettings spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto](self, "spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto")}];
  [v4 addObject:v5];

  v7 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v7 setKeySpace:v6];
  [v7 setKey:*MEMORY[0x1E69878F8]];
  [v7 setValue:{-[AVCapturePhotoSettings spatialOverCaptureGroupIdentifierForOriginalPhoto](self, "spatialOverCaptureGroupIdentifierForOriginalPhoto")}];
  [v4 addObject:v7];

  v8 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v8 setKeySpace:v6];
  [v8 setKey:*MEMORY[0x1E6987888]];
  [v8 setDataType:*MEMORY[0x1E69602A8]];
  [v8 setValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", 1)}];
  [v4 addObject:v8];

  return v4;
}

- (void)setSpatialOverCaptureLivePhotoMovieMetadataForOriginalPhoto:(id)a3
{
  v20 = 0;
  v5 = [(AVCapturePhotoSettings *)self _sanitizedLivePhotoMovieMetadataForArray:a3 exceptionReason:&v20];
  if (v20)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    v7 = v5;

    self->_internal->spatialOverCaptureLivePhotoMovieMetadataForOriginalPhoto = v7;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = *MEMORY[0x1E6987850];
      v12 = *MEMORY[0x1E6987890];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([objc_msgSend(v14 "keySpace")] && objc_msgSend(objc_msgSend(v14, "key"), "isEqual:", v12))
          {

            self->_internal->spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto = [objc_msgSend(v14 "value")];
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v9);
    }
  }
}

- (id)spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto
{
  result = self->_internal->spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto;
  if (!result)
  {
    self->_internal->spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    return self->_internal->spatialOverCaptureLivePhotoContentIdentifierForOriginalPhoto;
  }

  return result;
}

- (id)spatialOverCaptureGroupIdentifierForOriginalPhoto
{
  result = self->_internal->spatialOverCaptureGroupIdentifierForOriginalPhoto;
  if (!result)
  {
    self->_internal->spatialOverCaptureGroupIdentifierForOriginalPhoto = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    return self->_internal->spatialOverCaptureGroupIdentifierForOriginalPhoto;
  }

  return result;
}

- (id)_sanitizedLivePhotoMovieMetadataForArray:(id)a3 exceptionReason:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    v9 = @"Array must only contain AVMetadataItems";
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(a3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_36:
          result = 0;
          if (a4)
          {
            *a4 = v9;
          }

          return result;
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if ([v11 isEqualToString:0x1F1CBF648] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", 0x1F1CC2068) & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", 0x1F1CBF668))
  {
    LOBYTE(v24) = 0;
  }

  else
  {
    v24 = [v11 isEqualToString:@"com.apple.mobileslideshow"] ^ 1;
  }

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a3, "count", a4)}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [a3 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    v16 = *MEMORY[0x1E6987850];
    v17 = *MEMORY[0x1E6987890];
    v18 = *MEMORY[0x1E69878F8];
    v19 = *MEMORY[0x1E6987888];
    while (2)
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(a3);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        if ([objc_msgSend(v21 "keySpace")] && objc_msgSend(objc_msgSend(v21, "key"), "isEqual:", v17))
        {
          if (v24)
          {
            a4 = v23;
            v9 = @"AVMetadataKeySpaceQuickTimeMetadata/AVMetadataQuickTimeMetadataKeyContentIdentifier must not be specified";
            goto LABEL_36;
          }
        }

        else
        {
          if ([objc_msgSend(v21 "keySpace")] && (objc_msgSend(objc_msgSend(v21, "key"), "isEqual:", v18) & 1) != 0)
          {
            v9 = @"AVMetadataKeySpaceQuickTimeMetadata/AVMetadataQuickTimeMetadataKeySpatialOverCaptureGroupIdentifier must not be specified";
LABEL_35:
            a4 = v23;
            goto LABEL_36;
          }

          if ([objc_msgSend(v21 "keySpace")] && (objc_msgSend(objc_msgSend(v21, "key"), "isEqual:", v19) & 1) != 0)
          {
            v9 = @"AVMetadataKeySpaceQuickTimeMetadata/AVMetadataQuickTimeMetadataKeyContainsSpatialOverCaptureContent must not be specified";
            goto LABEL_35;
          }

          [v12 addObject:{objc_msgSend(v21, "copy")}];
        }
      }

      v14 = [a3 countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  return [MEMORY[0x1E695DEC8] arrayWithArray:v12];
}

@end