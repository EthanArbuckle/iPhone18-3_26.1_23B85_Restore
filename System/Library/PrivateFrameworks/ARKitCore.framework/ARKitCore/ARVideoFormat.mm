@interface ARVideoFormat
+ (BOOL)isCaptureDeviceTypeAvailable:(id)available position:(int64_t)position;
+ (CGSize)hiResVideoDimensions;
+ (id)_querySupportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned frameRate:(double)rate;
+ (id)_supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type resolutions:(id)resolutions frameRatesByPowerUsage:(id)usage videoBinned:(BOOL)binned pixelFormat:(unsigned int)format needsHDRSupport:(BOOL)support;
+ (id)bestDepthFormatForDeviceFormat:(id)format;
+ (id)bestTimeOfFlightFormatForDevicePosition:(int64_t)position depthSensorNumberOfPointsMode:(int64_t)mode frameRates:(id)rates;
+ (id)bestVideoFormatForDevicePosition:(int64_t)position deviceType:(id)type resolution:(id)resolution frameRate:(double)rate videoBinned:(BOOL)binned needsHDRSupport:(BOOL)support needsMultiCamSupport:(BOOL)camSupport pixelFormat:(unsigned int)self0;
+ (id)bestVideoFormatForDevicePosition:(int64_t)position deviceType:(id)type resolution:(id)resolution frameRates:(id)rates videoBinned:(BOOL)binned needsHDRSupport:(BOOL)support pixelFormat:(unsigned int)format;
+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type;
+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type frameRate:(double)rate;
+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned;
+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned frameRate:(double)rate;
+ (id)supportedVideoFormatsForHiResOrX420;
+ (id)supportedVideoFormatsForHiResOrX420ForDevicePosition:(int64_t)position deviceType:(id)type;
+ (id)supportedVideoFormatsForStillImageCapture;
+ (id)supportedVideoFormatsForStillImageCaptureForDevicePosition:(int64_t)position deviceType:(id)type;
+ (int64_t)photoQualityPrioritizationOverride;
- ($2825F4736939C4A6D3AD43837233062D)maxPhotoDimensions;
- (ARVideoFormat)initWithCaptureDevice:(id)device format:(id)format;
- (ARVideoFormat)initWithCoder:(id)coder;
- (ARVideoFormat)initWithImageResolution:(CGSize)resolution captureDevicePosition:(int64_t)position captureDeviceType:(id)type frameRatesByPowerUsage:(id)usage pixelFormat:(unsigned int)format;
- (ARVideoFormat)videoFormatWithDepthDataFormat:(id)format;
- (ARVideoFormat)videoFormatWithUnthrottledLowPowerUsageFramerate;
- (AVCapturePhotoSettings)defaultPhotoSettings;
- (BOOL)has4KVideoResolution;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRecommendedForHighResolutionFrameCapturing;
- (BOOL)isVideoHDRSupported;
- (BOOL)isX420PixelFormat;
- (CGSize)imageResolution;
- (NSInteger)framesPerSecond;
- (NSString)pixelFormat;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)defaultColorSpace;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARVideoFormat

- (ARVideoFormat)initWithCaptureDevice:(id)device format:(id)format
{
  deviceCopy = device;
  formatCopy = format;
  v15.receiver = self;
  v15.super_class = ARVideoFormat;
  v9 = [(ARVideoFormat *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_deviceFormat, format);
    frameRatesByPowerUsage = v10->_frameRatesByPowerUsage;
    v10->_frameRatesByPowerUsage = &unk_1F42590D0;

    v10->_captureDevicePosition = [deviceCopy position];
    deviceType = [deviceCopy deviceType];
    captureDeviceType = v10->_captureDeviceType;
    v10->_captureDeviceType = deviceType;
  }

  return v10;
}

- (ARVideoFormat)initWithImageResolution:(CGSize)resolution captureDevicePosition:(int64_t)position captureDeviceType:(id)type frameRatesByPowerUsage:(id)usage pixelFormat:(unsigned int)format
{
  height = resolution.height;
  width = resolution.width;
  typeCopy = type;
  usageCopy = usage;
  v19.receiver = self;
  v19.super_class = ARVideoFormat;
  v16 = [(ARVideoFormat *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_imageResolution.width = width;
    v16->_imageResolution.height = height;
    objc_storeStrong(&v16->_frameRatesByPowerUsage, usage);
    v17->_captureDevicePosition = position;
    objc_storeStrong(&v17->_captureDeviceType, type);
    v17->_pixelFormat = format;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong((v5 + 8), self->_device);
    objc_storeStrong((v6 + 16), self->_deviceFormat);
    objc_storeStrong((v6 + 72), self->_depthDataFormat);
    v7 = [(NSArray *)self->_frameRatesByPowerUsage copyWithZone:zone];
    v8 = *(v6 + 64);
    *(v6 + 64) = v7;

    *(v6 + 32) = self->_imageResolution;
    *(v6 + 48) = self->_captureDevicePosition;
    objc_storeStrong((v6 + 56), self->_captureDeviceType);
    *(v6 + 24) = self->_pixelFormat;
  }

  return v6;
}

- (ARVideoFormat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ARVideoFormat;
  v5 = [(ARVideoFormat *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"frameRatesByPowerUsage"];
    frameRatesByPowerUsage = v5->_frameRatesByPowerUsage;
    v5->_frameRatesByPowerUsage = v6;

    [coderCopy decodeSizeForKey:@"imageResolution"];
    v5->_imageResolution.width = v8;
    v5->_imageResolution.height = v9;
    v5->_captureDevicePosition = [coderCopy decodeIntegerForKey:@"captureDevicePosition"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"captureDeviceType"];
    captureDeviceType = v5->_captureDeviceType;
    v5->_captureDeviceType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pixelFormat"];
    v5->_pixelFormat = [v12 unsignedIntValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  frameRatesByPowerUsage = self->_frameRatesByPowerUsage;
  coderCopy = coder;
  [coderCopy encodeObject:frameRatesByPowerUsage forKey:@"frameRatesByPowerUsage"];
  [(ARVideoFormat *)self imageResolution];
  [coderCopy encodeSize:@"imageResolution" forKey:?];
  [coderCopy encodeInteger:self->_captureDevicePosition forKey:@"captureDevicePosition"];
  [coderCopy encodeObject:self->_captureDeviceType forKey:@"captureDeviceType"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pixelFormat];
  [coderCopy encodeObject:v6 forKey:@"pixelFormat"];
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AVCaptureDevice *)self->_device description];
  v5 = [(AVCaptureDeviceFormat *)self->_deviceFormat description];
  v6 = [v3 stringWithFormat:@"%@|%@|%li", v4, v5, -[ARVideoFormat framesPerSecond](self, "framesPerSecond")];

  v7 = [v6 hash];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5;
    if (self->_device == *(v5 + 1) && self->_deviceFormat == *(v5 + 2) && self->_depthDataFormat == *(v5 + 9) && [(NSArray *)self->_frameRatesByPowerUsage isEqualToArray:*(v5 + 8)])
    {
      [(ARVideoFormat *)self imageResolution];
      v8 = v7;
      v10 = v9;
      [v6 imageResolution];
      v12 = 0;
      if (v8 != v13 || v10 != v11)
      {
        goto LABEL_13;
      }

      captureDevicePosition = self->_captureDevicePosition;
      if (captureDevicePosition == [v6 captureDevicePosition])
      {
        captureDeviceType = self->_captureDeviceType;
        captureDeviceType = [v6 captureDeviceType];
        if ([(NSString *)captureDeviceType isEqual:captureDeviceType])
        {
          v12 = self->_pixelFormat == v6[6];
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_13;
      }
    }

    v12 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (NSInteger)framesPerSecond
{
  firstObject = [(NSArray *)self->_frameRatesByPowerUsage firstObject];
  integerValue = [firstObject integerValue];

  return integerValue;
}

- (id)description
{
  [(ARVideoFormat *)self imageResolution];
  v4 = v3;
  v6 = v5;
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  pixelFormat = [(ARVideoFormat *)self pixelFormat];
  framesPerSecond = [(ARVideoFormat *)self framesPerSecond];
  captureDeviceType = [(ARVideoFormat *)self captureDeviceType];
  v13 = [v7 stringWithFormat:@"<%@: %p imageResolution=(%.0f, %.0f) pixelFormat=(%@) framesPerSecond=(%li) captureDeviceType=%@ captureDevicePosition=(%li)>", v9, self, v4, v6, pixelFormat, framesPerSecond, captureDeviceType, -[ARVideoFormat captureDevicePosition](self, "captureDevicePosition")];

  return v13;
}

- (CGSize)imageResolution
{
  deviceFormat = self->_deviceFormat;
  if (deviceFormat)
  {
    if (CMFormatDescriptionGetMediaSubType([(AVCaptureDeviceFormat *)deviceFormat formatDescription]) == 1785950320)
    {
      width = *MEMORY[0x1E695F060];
      height = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      Dimensions = CMVideoFormatDescriptionGetDimensions([(AVCaptureDeviceFormat *)self->_deviceFormat formatDescription]);
      width = Dimensions.width;
      height = Dimensions.height;
    }
  }

  else
  {
    width = self->_imageResolution.width;
    height = self->_imageResolution.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isRecommendedForHighResolutionFrameCapturing
{
  captureDeviceType = [(ARVideoFormat *)self captureDeviceType];
  if ([captureDeviceType isEqualToString:*MEMORY[0x1E6986950]])
  {
    v4 = 0;
  }

  else
  {
    captureDeviceType2 = [(ARVideoFormat *)self captureDeviceType];
    if ([captureDeviceType2 isEqualToString:*MEMORY[0x1E6986908]])
    {
      v4 = 0;
    }

    else
    {
      captureDeviceType3 = [(ARVideoFormat *)self captureDeviceType];
      v7 = [captureDeviceType3 isEqualToString:*MEMORY[0x1E6986938]];

      v4 = v7 ^ 1;
    }
  }

  LOBYTE(captureDeviceType) = 0;
  if ([(ARVideoFormat *)self captureDevicePosition]== AVCaptureDevicePositionBack && (v4 & 1) == 0)
  {
    deviceFormat = [(ARVideoFormat *)self deviceFormat];
    LODWORD(captureDeviceType) = [deviceFormat isVideoBinned] ^ 1;
  }

  return captureDeviceType;
}

- (AVCapturePhotoSettings)defaultPhotoSettings
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6987100];
  v8 = *MEMORY[0x1E6966130];
  v9[0] = &unk_1F4258AB8;
  v4 = 1;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 photoSettingsWithFormat:v5];

  if (ARBackWidePhotoQualityPrioritizationOverride())
  {
    v4 = ARBackWidePhotoQualityPrioritizationOverride();
  }

  [v6 setPhotoQualityPrioritization:v4];
  [v6 setMaxPhotoDimensions:{-[ARVideoFormat maxPhotoDimensions](self, "maxPhotoDimensions")}];

  return v6;
}

- ($2825F4736939C4A6D3AD43837233062D)maxPhotoDimensions
{
  v36 = *MEMORY[0x1E69E9840];
  supportedMaxPhotoDimensions = [(AVCaptureDeviceFormat *)self->_deviceFormat supportedMaxPhotoDimensions];
  v4 = [supportedMaxPhotoDimensions count];

  if (!v4)
  {
    if (ARShouldUseLogTypeError_onceToken_36 != -1)
    {
      [ARVideoFormat maxPhotoDimensions];
    }

    v5 = ARShouldUseLogTypeError_internalOSVersion_36;
    v6 = _ARLogSensor_10();
    v7 = v6;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [(AVCaptureDeviceFormat *)self->_deviceFormat description];
        *buf = 138543874;
        v31 = v9;
        v32 = 2048;
        selfCopy2 = self;
        v34 = 2112;
        v35 = v10;
        v11 = "%{public}@ <%p>: Returning {0, 0} for maxPhotoDimensions because the supportedMaxPhotoDimensions array is empty for video format: %@";
        v12 = v7;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v12, v13, v11, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v9 = NSStringFromClass(v14);
      v10 = [(AVCaptureDeviceFormat *)self->_deviceFormat description];
      *buf = 138543874;
      v31 = v9;
      v32 = 2048;
      selfCopy2 = self;
      v34 = 2112;
      v35 = v10;
      v11 = "Error: %{public}@ <%p>: Returning {0, 0} for maxPhotoDimensions because the supportedMaxPhotoDimensions array is empty for video format: %@";
      v12 = v7;
      v13 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  supportedMaxPhotoDimensions2 = [(AVCaptureDeviceFormat *)self->_deviceFormat supportedMaxPhotoDimensions];
  v16 = [supportedMaxPhotoDimensions2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    LODWORD(v17) = 0;
    LODWORD(v18) = 0;
    v19 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(supportedMaxPhotoDimensions2);
        }

        cMVideoDimensionsValue = [*(*(&v25 + 1) + 8 * i) CMVideoDimensionsValue];
        v23 = v18 < cMVideoDimensionsValue || v17 < SHIDWORD(cMVideoDimensionsValue);
        if (v23)
        {
          v17 = HIDWORD(cMVideoDimensionsValue);
        }

        else
        {
          v17 = v17;
        }

        if (v23)
        {
          v18 = cMVideoDimensionsValue;
        }

        else
        {
          v18 = v18;
        }
      }

      v16 = [supportedMaxPhotoDimensions2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
    v16 = v17 << 32;
  }

  else
  {
    v18 = 0;
  }

  return (v16 | v18);
}

+ (int64_t)photoQualityPrioritizationOverride
{
  if (photoQualityPrioritizationOverride_onceToken != -1)
  {
    +[ARVideoFormat photoQualityPrioritizationOverride];
  }

  return photoQualityPrioritizationOverride_override;
}

void __51__ARVideoFormat_photoQualityPrioritizationOverride__block_invoke()
{
  v0 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.wide.photoQualityPrioritization"];
  v1 = v0;
  if (v0)
  {
    v3 = v0;
    v2 = [v0 integerValue];
    v1 = v3;
    if (v2 >= 1)
    {
      photoQualityPrioritizationOverride_override = v2;
    }
  }
}

- (int64_t)defaultColorSpace
{
  deviceFormat = [(ARVideoFormat *)self deviceFormat];
  supportedColorSpaces = [deviceFormat supportedColorSpaces];
  firstObject = [supportedColorSpaces firstObject];

  integerValue = [firstObject integerValue];
  return integerValue;
}

- (BOOL)isVideoHDRSupported
{
  deviceFormat = [(ARVideoFormat *)self deviceFormat];
  isVideoHDRSupported = [deviceFormat isVideoHDRSupported];

  return isVideoHDRSupported;
}

- (NSString)pixelFormat
{
  deviceFormat = self->_deviceFormat;
  if (deviceFormat)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType([(AVCaptureDeviceFormat *)deviceFormat formatDescription]);
  }

  else
  {
    MediaSubType = self->_pixelFormat;
  }

  v5 = AROSTypeToString(MediaSubType);

  return v5;
}

- (BOOL)isX420PixelFormat
{
  pixelFormat = [(ARVideoFormat *)self pixelFormat];
  v3 = AROSTypeToString(0x78343230u);
  v4 = [pixelFormat isEqualToString:v3];

  return v4;
}

- (BOOL)has4KVideoResolution
{
  [(ARVideoFormat *)self imageResolution];
  v3 = v2;
  v5 = v4;
  [objc_opt_class() hiResVideoDimensions];
  return v5 == v7 && v3 == v6;
}

- (ARVideoFormat)videoFormatWithUnthrottledLowPowerUsageFramerate
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = [(ARVideoFormat *)self copy];
  v4 = [(NSArray *)self->_frameRatesByPowerUsage objectAtIndexedSubscript:0];
  v5 = [(NSArray *)self->_frameRatesByPowerUsage objectAtIndexedSubscript:0, v4];
  v10[1] = v5;
  v6 = [(NSArray *)self->_frameRatesByPowerUsage objectAtIndexedSubscript:2];
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v8 = v3[8];
  v3[8] = v7;

  return v3;
}

- (ARVideoFormat)videoFormatWithDepthDataFormat:(id)format
{
  formatCopy = format;
  v5 = [(ARVideoFormat *)self copy];
  v6 = v5[9];
  v5[9] = formatCopy;

  return v5;
}

+ (id)bestVideoFormatForDevicePosition:(int64_t)position deviceType:(id)type resolution:(id)resolution frameRate:(double)rate videoBinned:(BOOL)binned needsHDRSupport:(BOOL)support needsMultiCamSupport:(BOOL)camSupport pixelFormat:(unsigned int)self0
{
  camSupportCopy = camSupport;
  binnedCopy = binned;
  supportCopy = support;
  v94[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v15 = MEMORY[0x1E69870A8];
  v71 = typeCopy;
  v94[0] = typeCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
  v17 = [v15 discoverySessionWithDeviceTypes:v16 mediaType:*MEMORY[0x1E6987608] position:position];

  devices = [v17 devices];
  if (![devices count])
  {
    if (ARShouldUseLogTypeError_onceToken_36 != -1)
    {
      +[ARVideoFormat bestVideoFormatForDevicePosition:deviceType:resolution:frameRate:videoBinned:needsHDRSupport:needsMultiCamSupport:pixelFormat:];
    }

    v19 = ARShouldUseLogTypeError_internalOSVersion_36;
    v20 = _ARLogGeneral_28();
    v21 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromAVCaptureDevicePosition(position);
        *buf = 138544130;
        v87 = v23;
        v88 = 2048;
        selfCopy2 = self;
        v90 = 2114;
        v91 = v71;
        v92 = 2114;
        v93 = v24;
        v25 = "%{public}@ <%p>: No image capture device found in bestVideoFormatForDevicePosition. (%{public}@ / %{public}@)";
        v26 = v21;
        v27 = OS_LOG_TYPE_ERROR;
LABEL_53:
        _os_log_impl(&dword_1C241C000, v26, v27, v25, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v59 = objc_opt_class();
      v23 = NSStringFromClass(v59);
      v24 = NSStringFromAVCaptureDevicePosition(position);
      *buf = 138544130;
      v87 = v23;
      v88 = 2048;
      selfCopy2 = self;
      v90 = 2114;
      v91 = v71;
      v92 = 2114;
      v93 = v24;
      v25 = "Error: %{public}@ <%p>: No image capture device found in bestVideoFormatForDevicePosition. (%{public}@ / %{public}@)";
      v26 = v21;
      v27 = OS_LOG_TYPE_INFO;
      goto LABEL_53;
    }

    v54 = 0;
    goto LABEL_57;
  }

  if (camSupportCopy)
  {
    if (ARDeviceSupportsMulticamMode() && (ARUserDefaultsMulticamModeEnabled() & 1) != 0)
    {
      v67 = 1;
    }

    else
    {
      v67 = ARDeviceSupportsJasper();
    }
  }

  else
  {
    v67 = 0;
  }

  v61 = devices;
  v62 = v17;
  [devices firstObject];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v63 = v82 = 0u;
  formats = [v63 formats];
  v72 = [formats countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (!v72)
  {
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v54 = 0;
LABEL_50:

    goto LABEL_56;
  }

  obj = formats;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v66 = *v80;
  v65 = *MEMORY[0x1E6986940];
  do
  {
    for (i = 0; i != v72; ++i)
    {
      if (*v80 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(*(&v79 + 1) + 8 * i);
      Dimensions = CMVideoFormatDescriptionGetDimensions([v33 formatDescription]);
      if (supportCopy)
      {
        isVideoHDRSupported = [v33 isVideoHDRSupported];
      }

      else
      {
        isVideoHDRSupported = 1;
      }

      v36 = CMFormatDescriptionGetMediaSubType([v33 formatDescription]) == format;
      v37 = v36 & ~([v33 isVideoBinned] ^ binnedCopy);
      if (Dimensions != resolution)
      {
        v37 = 0;
      }

      v38 = v37 & isVideoHDRSupported;
      if (v67)
      {
        v38 &= [v33 isMultiCamSupported];
      }

      if (v38)
      {
        v39 = v65 == v71;
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        v40 = [ARVideoFormat bestDepthFormatForDeviceFormat:v33];

        v30 = v40;
        if (!v40)
        {
          continue;
        }
      }

      else if (!v38)
      {
        continue;
      }

      v73 = i;
      v74 = v30;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      videoSupportedFrameRateRanges = [v33 videoSupportedFrameRateRanges];
      v42 = [videoSupportedFrameRateRanges countByEnumeratingWithState:&v75 objects:v84 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v76;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v76 != v44)
            {
              objc_enumerationMutation(videoSupportedFrameRateRanges);
            }

            v46 = *(*(&v75 + 1) + 8 * j);
            [v46 maxFrameRate];
            if (v47 >= rate)
            {
              [v46 maxFrameRate];
              if (v48 <= 120.0)
              {
                if (!v29 || ([v46 maxFrameRate], v50 = v49, objc_msgSend(v29, "maxFrameRate"), v50 <= v51))
                {
                  v52 = v33;

                  v53 = v46;
                  v29 = v53;
                  v31 = v52;
                }
              }
            }
          }

          v43 = [videoSupportedFrameRateRanges countByEnumeratingWithState:&v75 objects:v84 count:16];
        }

        while (v43);
      }

      i = v73;
      v30 = v74;
    }

    v72 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
  }

  while (v72);

  if (v31)
  {
    v54 = [[ARVideoFormat alloc] initWithCaptureDevice:v63 format:v31];
    objc_storeStrong(&v54->_depthDataFormat, v30);
    formats = [MEMORY[0x1E696AD98] numberWithDouble:rate];
    v83[0] = formats;
    v55 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
    v83[1] = v55;
    v56 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
    v83[2] = v56;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
    frameRatesByPowerUsage = v54->_frameRatesByPowerUsage;
    v54->_frameRatesByPowerUsage = v57;

    goto LABEL_50;
  }

  v54 = 0;
LABEL_56:

  devices = v61;
  v17 = v62;
  v21 = v63;
LABEL_57:

  return v54;
}

+ (id)bestVideoFormatForDevicePosition:(int64_t)position deviceType:(id)type resolution:(id)resolution frameRates:(id)rates videoBinned:(BOOL)binned needsHDRSupport:(BOOL)support pixelFormat:(unsigned int)format
{
  supportCopy = support;
  binnedCopy = binned;
  ratesCopy = rates;
  typeCopy = type;
  firstObject = [ratesCopy firstObject];
  [firstObject doubleValue];
  LODWORD(v21) = format;
  v19 = [self bestVideoFormatForDevicePosition:position deviceType:typeCopy resolution:resolution frameRate:binnedCopy videoBinned:supportCopy needsHDRSupport:1 needsMultiCamSupport:v21 pixelFormat:?];

  if (v19)
  {
    objc_storeStrong(v19 + 8, rates);
  }

  return v19;
}

+ (id)bestTimeOfFlightFormatForDevicePosition:(int64_t)position depthSensorNumberOfPointsMode:(int64_t)mode frameRates:(id)rates
{
  v109 = *MEMORY[0x1E69E9840];
  ratesCopy = rates;
  v8 = *MEMORY[0x1E6986930];
  selfCopy = self;
  if (ratesCopy)
  {
    v9 = _ARLogSensor_10();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [(NSArray *)ratesCopy objectAtIndexedSubscript:0];
      [v12 doubleValue];
      v14 = v13;
      v15 = [(NSArray *)ratesCopy objectAtIndexedSubscript:1];
      [v15 doubleValue];
      v17 = v16;
      v18 = [(NSArray *)ratesCopy objectAtIndexedSubscript:2];
      [v18 doubleValue];
      *buf = 138544386;
      v100 = v11;
      v101 = 2048;
      selfCopy2 = self;
      v103 = 2048;
      positionCopy2 = v14;
      v105 = 2048;
      v106 = v17;
      v107 = 2048;
      v108 = v19;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat jasper frame rates set to %f, %f, %f", buf, 0x34u);
    }
  }

  else
  {
    ratesCopy = &unk_1F4259118;
  }

  v20 = MEMORY[0x1E69870A8];
  v98 = v8;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
  v22 = [v20 discoverySessionWithDeviceTypes:v21 mediaType:*MEMORY[0x1E6986FA8] position:position];

  devices = [v22 devices];
  if (![devices count])
  {
    if (ARShouldUseLogTypeError_onceToken_36 != -1)
    {
      +[ARVideoFormat bestVideoFormatForDevicePosition:deviceType:resolution:frameRate:videoBinned:needsHDRSupport:needsMultiCamSupport:pixelFormat:];
    }

    v64 = ARShouldUseLogTypeError_internalOSVersion_36;
    v65 = _ARLogGeneral_28();
    v66 = v65;
    if (v64 == 1)
    {
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        *buf = 138543874;
        v100 = v68;
        v101 = 2048;
        selfCopy2 = selfCopy;
        v103 = 2048;
        positionCopy2 = position;
        v69 = "%{public}@ <%p>: No point cloud capture device found. (%ld)";
        v70 = v66;
        v71 = OS_LOG_TYPE_ERROR;
LABEL_48:
        _os_log_impl(&dword_1C241C000, v70, v71, v69, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v72 = objc_opt_class();
      v68 = NSStringFromClass(v72);
      *buf = 138543874;
      v100 = v68;
      v101 = 2048;
      selfCopy2 = selfCopy;
      v103 = 2048;
      positionCopy2 = position;
      v69 = "Error: %{public}@ <%p>: No point cloud capture device found. (%ld)";
      v70 = v66;
      v71 = OS_LOG_TYPE_INFO;
      goto LABEL_48;
    }

    v63 = 0;
    goto LABEL_52;
  }

  v78 = devices;
  [devices firstObject];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v79 = v94 = 0u;
  frameRatesByPowerUsage = [v79 formats];
  v25 = [frameRatesByPowerUsage countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (v25)
  {
    v26 = v25;
    v74 = v22;
    v75 = ratesCopy;
    v76 = v8;
    v86 = 0;
    v27 = 0;
    v28 = *v92;
    v29 = -1;
    v80 = *v92;
    v81 = frameRatesByPowerUsage;
    do
    {
      v30 = 0;
      v83 = v26;
      do
      {
        if (*v92 != v28)
        {
          objc_enumerationMutation(frameRatesByPowerUsage);
        }

        v31 = *(*(&v91 + 1) + 8 * v30);
        if (CMFormatDescriptionGetMediaSubType([v31 formatDescription]) == 1785950320)
        {
          v84 = v30;
          [v31 formatDescription];
          NumberOfPoints = CMPointCloudFormatDescriptionGetNumberOfPoints();
          v33 = NumberOfPoints;
          if (v29 == -1)
          {
            v29 = NumberOfPoints;
          }

          v87 = 0u;
          v88 = 0u;
          if (mode == 1)
          {
            v34 = NumberOfPoints > v29;
          }

          else
          {
            v34 = NumberOfPoints < v29;
          }

          v89 = 0uLL;
          v90 = 0uLL;
          obj = [v31 videoSupportedFrameRateRanges];
          v35 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v88;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v88 != v37)
                {
                  objc_enumerationMutation(obj);
                }

                v39 = *(*(&v87 + 1) + 8 * i);
                if (v27 == 0 || v34)
                {
LABEL_24:
                  v40 = v31;

                  v41 = v39;
                  v29 = v33;
                  v86 = v41;
                  v27 = v40;
                  continue;
                }

                if (v33 == v29)
                {
                  [*(*(&v87 + 1) + 8 * i) maxFrameRate];
                  v43 = v42;
                  [v86 maxFrameRate];
                  if (v43 > v44)
                  {
                    goto LABEL_24;
                  }

                  v29 = v33;
                }
              }

              v36 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
            }

            while (v36);
          }

          v28 = v80;
          frameRatesByPowerUsage = v81;
          v26 = v83;
          v30 = v84;
        }

        ++v30;
      }

      while (v30 != v26);
      v26 = [frameRatesByPowerUsage countByEnumeratingWithState:&v91 objects:v97 count:16];
    }

    while (v26);

    if (!v27)
    {
      v63 = 0;
      ratesCopy = v75;
      v8 = v76;
      v22 = v74;
      goto LABEL_51;
    }

    [v86 maxFrameRate];
    v46 = v45;
    v47 = v75;
    v48 = [(NSArray *)v75 objectAtIndexedSubscript:0];
    [v48 doubleValue];
    v50 = v49;

    v8 = v76;
    v22 = v74;
    if (v46 < v50)
    {
      v51 = MEMORY[0x1E696AD98];
      [v86 maxFrameRate];
      v52 = [v51 numberWithDouble:?];
      v53 = _ARLogSensor_10();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        v56 = [(NSArray *)v75 objectAtIndexedSubscript:0];
        [v56 doubleValue];
        v58 = v57;
        [v52 doubleValue];
        *buf = 138544130;
        v100 = v55;
        v101 = 2048;
        selfCopy2 = selfCopy;
        v103 = 2048;
        positionCopy2 = v58;
        v105 = 2048;
        v106 = v59;
        _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Requested time of flight framerate: %f. Returning best available framerate: %f.", buf, 0x2Au);
      }

      v95[0] = v52;
      v60 = [(NSArray *)v75 objectAtIndexedSubscript:1];
      v95[1] = v60;
      v61 = [(NSArray *)v75 objectAtIndexedSubscript:2];
      v95[2] = v61;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:3];

      v47 = v62;
    }

    v63 = [[ARVideoFormat alloc] initWithCaptureDevice:v79 format:v27];
    ratesCopy = v47;
    frameRatesByPowerUsage = v63->_frameRatesByPowerUsage;
    v63->_frameRatesByPowerUsage = ratesCopy;
  }

  else
  {
    v27 = 0;
    v86 = 0;
    v63 = 0;
  }

LABEL_51:
  devices = v78;
  v66 = v79;
LABEL_52:

  return v63;
}

+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type
{
  typeCopy = type;
  v6 = [objc_opt_class() supportedVideoFormatsForDevicePosition:position deviceType:typeCopy frameRate:0.0];

  return v6;
}

+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned
{
  binnedCopy = binned;
  typeCopy = type;
  v8 = [objc_opt_class() supportedVideoFormatsForDevicePosition:position deviceType:typeCopy videoBinned:binnedCopy frameRate:0.0];

  return v8;
}

+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type frameRate:(double)rate
{
  typeCopy = type;
  v8 = typeCopy;
  if (position == 2)
  {
    v9 = &ARFrontFacingImageSensorVideoBinnedUserDefaultsKey;
  }

  else
  {
    if (position != 1)
    {
      goto LABEL_10;
    }

    if (*MEMORY[0x1E6986950] == typeCopy)
    {
      v9 = &ARBackFacingWideImageSensorVideoBinnedUserDefaultsKey;
    }

    else
    {
      if (*MEMORY[0x1E6986948] != typeCopy)
      {
        goto LABEL_10;
      }

      v9 = &ARBackFacingUltraWideImageSensorVideoBinnedUserDefaultsKey;
    }
  }

  v10 = [ARKitUserDefaults objectForKey:*v9];
  if (v10)
  {
    v11 = v10;
    bOOLValue = [v10 BOOLValue];

    goto LABEL_11;
  }

LABEL_10:
  bOOLValue = 1;
LABEL_11:
  v13 = [objc_opt_class() supportedVideoFormatsForDevicePosition:position deviceType:v8 videoBinned:bOOLValue frameRate:rate];

  return v13;
}

+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned frameRate:(double)rate
{
  binnedCopy = binned;
  typeCopy = type;
  if (supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__onceToken != -1)
  {
    +[ARVideoFormat supportedVideoFormatsForDevicePosition:deviceType:videoBinned:frameRate:];
  }

  dispatch_semaphore_wait(supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__semaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (!supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__cachedSupportedVideoFormats)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__cachedSupportedVideoFormats;
    supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__cachedSupportedVideoFormats = dictionary;
  }

  v12 = @"non-binned";
  if (binnedCopy)
  {
    v12 = @"binned";
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@:%li:%f", typeCopy, v12, position, *&rate];
  v14 = [supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__cachedSupportedVideoFormats objectForKey:v13];
  if (v14)
  {
    dispatch_semaphore_signal(supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__semaphore);
    v15 = v14;
  }

  else
  {
    v15 = [objc_opt_class() _querySupportedVideoFormatsForDevicePosition:position deviceType:typeCopy videoBinned:binnedCopy frameRate:rate];
    if ([v15 count])
    {
      [supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__cachedSupportedVideoFormats setObject:v15 forKey:v13];
    }

    dispatch_semaphore_signal(supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__semaphore);
  }

  return v15;
}

void __89__ARVideoFormat_supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate___block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__semaphore;
  supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__semaphore = v0;
}

+ (id)_querySupportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned frameRate:(double)rate
{
  binnedCopy = binned;
  v189[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v9 = objc_opt_new();
  v10 = MEMORY[0x1E69870A8];
  v189[0] = typeCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:1];
  v12 = [v10 discoverySessionWithDeviceTypes:v11 mediaType:*MEMORY[0x1E6987608] position:position];

  v130 = v12;
  devices = [v12 devices];
  positionCopy = position;
  v129 = devices;
  if (![devices count])
  {
    if (ARShouldUseLogTypeError_onceToken_36 != -1)
    {
      +[ARVideoFormat bestVideoFormatForDevicePosition:deviceType:resolution:frameRate:videoBinned:needsHDRSupport:needsMultiCamSupport:pixelFormat:];
    }

    v17 = ARShouldUseLogTypeError_internalOSVersion_36;
    v18 = _ARLogGeneral_28();
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544130;
        v180 = v21;
        v181 = 2048;
        selfCopy7 = self;
        v183 = 2114;
        *v184 = typeCopy;
        *&v184[8] = 2048;
        positionCopy3 = position;
        v22 = "%{public}@ <%p>: No image capture device found in supportedVideoFormatsForDevicePosition. (%{public}@ / %ld)";
        v23 = v19;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v23, v24, v22, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v21 = NSStringFromClass(v29);
      *buf = 138544130;
      v180 = v21;
      v181 = 2048;
      selfCopy7 = self;
      v183 = 2114;
      *v184 = typeCopy;
      *&v184[8] = 2048;
      positionCopy3 = position;
      v22 = "Error: %{public}@ <%p>: No image capture device found in supportedVideoFormatsForDevicePosition. (%{public}@ / %ld)";
      v23 = v19;
      v24 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    v30 = v9;
    goto LABEL_193;
  }

  firstObject = [devices firstObject];
  v173 = 0;
  v14 = MEMORY[0x1E6986948];
  if (position == 1)
  {
    if (*MEMORY[0x1E6986950] == typeCopy)
    {
      v15 = [ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.back.wide.resolution" resultingDimensions:&v173];
      v16 = &ARBackFacingWideImageSensorFrameRateUserDefaultsKey;
LABEL_21:
      v28 = [ARKitUserDefaults numberForKey:*v16];
      v136 = 0;
      if (!v15)
      {
        goto LABEL_22;
      }

LABEL_32:
      v48 = v28;
      v49 = _ARLogSensor_10();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        *buf = 138544130;
        v180 = v51;
        v181 = 2048;
        selfCopy7 = self;
        v183 = 1024;
        *v184 = v173;
        *&v184[4] = 1024;
        *&v184[6] = HIDWORD(v173);
        _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat resolution set to %i, %i by user defaults", buf, 0x22u);
      }

      v28 = v48;
      if (v48)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }

    if (*MEMORY[0x1E6986948] == typeCopy)
    {
      v15 = [ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.back.ultrawide.resolution" resultingDimensions:&v173];
      v16 = &ARBackFacingUltraWideImageSensorFrameRateUserDefaultsKey;
      goto LABEL_21;
    }

LABEL_15:
    v136 = 0;
    goto LABEL_35;
  }

  if (position != 2)
  {
    goto LABEL_15;
  }

  v25 = [ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.front.resolution" resultingDimensions:&v173];
  v26 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.front.frameRate"];
  v27 = ARFaceTrackingDevice();

  if (v27 != typeCopy)
  {
    v136 = 0;
    v28 = v26;
    if (!v25)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v36 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.face.frameRateNormal"];
  v37 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.face.frameRateLow"];
  v38 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.face.frameRateLowest"];
  v39 = v38;
  v136 = 0;
  if (v36 && v37 && v38)
  {
    v188[0] = v36;
    v188[1] = v37;
    v188[2] = v38;
    v136 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:3];
    v40 = _ARLogSensor_10();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      NSStringFromClass(v41);
      v42 = v138 = v9;
      [v36 doubleValue];
      v44 = v43;
      [v37 doubleValue];
      v46 = v45;
      [v39 doubleValue];
      *buf = 138544386;
      v180 = v42;
      v181 = 2048;
      selfCopy7 = self;
      v183 = 2048;
      *v184 = v44;
      *&v184[8] = 2048;
      positionCopy3 = v46;
      v186 = 2048;
      v187 = v47;
      _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat face tracking frame rates set to %f, %f, %f by user defaults", buf, 0x34u);

      v9 = v138;
    }
  }

  v28 = v26;
  if (v25)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (v28)
  {
LABEL_23:
    v126 = v28;
    [v28 doubleValue];
    rateCopy = v31;
    v33 = _ARLogSensor_10();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138543874;
      v180 = v35;
      v181 = 2048;
      selfCopy7 = self;
      v183 = 2048;
      *v184 = rateCopy;
      _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat frame rate set to %f by user defaults", buf, 0x20u);
    }

    goto LABEL_39;
  }

LABEL_35:
  if (rate <= 0.0)
  {
    v126 = 0;
    rateCopy = 0.0;
    goto LABEL_41;
  }

  v33 = _ARLogSensor_10();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    *buf = 138543874;
    v180 = v53;
    v181 = 2048;
    selfCopy7 = self;
    v183 = 2048;
    *v184 = rate;
    _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat frame rate set to %f by SPI", buf, 0x20u);
  }

  v126 = 0;
  rateCopy = rate;
LABEL_39:

LABEL_41:
  v54 = [MEMORY[0x1E695DFA8] set];
  if (positionCopy == 1)
  {
    v55 = ARDeviceIsiPad();
  }

  else
  {
    v55 = 0;
  }

  v127 = ARDeviceString();
  v56 = positionCopy;
  if (positionCopy == 2)
  {
    v57 = ARFaceTrackingDevice();
    if (v57 == typeCopy)
    {
      v58 = [v127 hasPrefix:@"D22"] ^ 1;
    }

    else
    {
      v58 = 0;
    }

    v55 |= v58;

    v56 = 2;
  }

  v125 = *v14;
  if (v56 == 2 && *v14 == typeCopy)
  {
    v60 = 1;
  }

  else
  {
    v60 = v55;
  }

  v140 = v60;
  v61 = ARShouldSupport1440pAndAutofocus();
  if (positionCopy == 1)
  {
    v145 = ARShouldSupport1440pAndAutofocus() ^ 1;
    v62 = ARShouldSupport1440pAndAutofocus() ^ 1;
  }

  else
  {
    LOBYTE(v62) = 1;
    LOBYTE(v145) = 1;
  }

  v144 = v62;
  v134 = objc_opt_new();
  if (rateCopy <= 0.0)
  {
    v64 = binnedCopy;
    if (v136)
    {
      firstObject2 = [v136 firstObject];
      [firstObject2 doubleValue];
      v63 = v66;

      v141 = 0;
      rateCopy = v63;
    }

    else
    {
      v141 = 1;
      v63 = 30.0;
    }
  }

  else
  {
    v141 = 0;
    v63 = rateCopy;
    v64 = binnedCopy;
  }

  if (ARDeviceSupportsMulticamMode() && (ARUserDefaultsMulticamModeEnabled() & 1) != 0)
  {
    v153 = 1;
  }

  else
  {
    v153 = ARDeviceSupportsJasper();
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v132 = [&unk_1F4259130 countByEnumeratingWithState:&v169 objects:v178 count:16];
  if (!v132)
  {
    goto LABEL_185;
  }

  v137 = 0;
  v143 = v61 ^ 1;
  v131 = *v170;
  v152 = *MEMORY[0x1E6986940];
  v150 = v54;
  v139 = v9;
  v146 = typeCopy;
  do
  {
    v67 = 0;
    do
    {
      if (*v170 != v131)
      {
        v68 = v67;
        objc_enumerationMutation(&unk_1F4259130);
        v67 = v68;
      }

      v133 = v67;
      v155 = *(*(&v169 + 1) + 8 * v67);
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      obj = [firstObject formats];
      v156 = [obj countByEnumeratingWithState:&v165 objects:v177 count:16];
      if (v156)
      {
        v154 = *v166;
        do
        {
          v69 = 0;
          do
          {
            if (*v166 != v154)
            {
              objc_enumerationMutation(obj);
            }

            v70 = *(*(&v165 + 1) + 8 * v69);
            MediaSubType = CMFormatDescriptionGetMediaSubType([v70 formatDescription]);
            unsignedIntegerValue = [v155 unsignedIntegerValue];
            Dimensions = CMVideoFormatDescriptionGetDimensions([v70 formatDescription]);
            v74 = Dimensions;
            v75 = HIDWORD(Dimensions);
            if (v173)
            {
              v77 = v173 == Dimensions && HIDWORD(v173) == HIDWORD(Dimensions);
            }

            else
            {
              v77 = Dimensions == 1280 && v75 == 720;
              if (((v77 | v143) & 1) == 0 && v140)
              {
                v77 = Dimensions == 1440 && v75 == 1080;
              }

              v81 = Dimensions == 1920 && v75 == 1080;
              if (((v77 | v145) & 1) == 0)
              {
                v77 = v81;
              }

              v83 = Dimensions == 1920 && v75 == 1440;
              if (((v77 | v144) & 1) == 0)
              {
                v77 = v83;
              }
            }

            v84 = unsignedIntegerValue == MediaSubType && v77;
            v85 = v84 & ([v70 isVideoBinned] ^ v64 ^ 1);
            if (v153)
            {
              v85 &= [v70 isMultiCamSupported];
            }

            if (v85)
            {
              v86 = v152 == typeCopy;
            }

            else
            {
              v86 = 0;
            }

            if (v86)
            {
              v87 = [ARVideoFormat bestDepthFormatForDeviceFormat:v70];
              if (!v87)
              {
                goto LABEL_166;
              }
            }

            else
            {
              if (!v85)
              {
                goto LABEL_166;
              }

              v87 = 0;
            }

            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            videoSupportedFrameRateRanges = [v70 videoSupportedFrameRateRanges];
            v89 = [videoSupportedFrameRateRanges countByEnumeratingWithState:&v161 objects:v176 count:16];
            if (v89)
            {
              v90 = v89;
              v91 = *v162;
              while (2)
              {
                for (i = 0; i != v90; ++i)
                {
                  if (*v162 != v91)
                  {
                    objc_enumerationMutation(videoSupportedFrameRateRanges);
                  }

                  v93 = *(*(&v161 + 1) + 8 * i);
                  [v93 maxFrameRate];
                  if (v94 >= v63)
                  {
                    if (rateCopy > 0.0 || ([v93 maxFrameRate], v95 <= 120.0))
                    {
                      v96 = [[ARVideoFormat alloc] initWithCaptureDevice:firstObject format:v70];
                      objc_storeStrong(&v96->_depthDataFormat, v87);
                      if (rateCopy > 0.0)
                      {
                        if (v136)
                        {
                          v99 = v136;
                          frameRatesByPowerUsage = v96->_frameRatesByPowerUsage;
                          v96->_frameRatesByPowerUsage = v99;
                        }

                        else
                        {
                          frameRatesByPowerUsage = [MEMORY[0x1E696AD98] numberWithDouble:rateCopy];
                          v175[0] = frameRatesByPowerUsage;
                          v147 = [MEMORY[0x1E696AD98] numberWithDouble:rateCopy];
                          v175[1] = v147;
                          v100 = [MEMORY[0x1E696AD98] numberWithDouble:rateCopy];
                          v175[2] = v100;
                          v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:3];
                          v102 = v96->_frameRatesByPowerUsage;
                          v96->_frameRatesByPowerUsage = v101;
                        }
                      }

                      else
                      {
                        frameRatesByPowerUsage = v96->_frameRatesByPowerUsage;
                        if (v63 == 30.0)
                        {
                          v98 = &unk_1F4259148;
                        }

                        else if (positionCopy == 2)
                        {
                          v98 = &unk_1F4259160;
                        }

                        else
                        {
                          v98 = &unk_1F4259178;
                        }

                        v96->_frameRatesByPowerUsage = v98;
                      }

                      v148 = v74 * v75;
                      v103 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ARVideoFormat framesPerSecond](v96, "framesPerSecond") * v148}];
                      v54 = v150;
                      if (([v150 containsObject:v103] & 1) == 0)
                      {
                        [v139 addObject:v96];
                        [v150 addObject:v103];
                        if (v74 == 1920 && v75 == 1440)
                        {
                          v104 = v96;

                          v137 = v104;
                          v54 = v150;
                        }

                        else if (v74 == 1440 && v75 == 1080)
                        {
                          [v134 addObject:v96];
                        }
                      }

                      if (v141)
                      {
                        [v93 maxFrameRate];
                        if (v105 >= 60.0)
                        {
                          v106 = [[ARVideoFormat alloc] initWithCaptureDevice:firstObject format:v70];
                          objc_storeStrong(&v106->_depthDataFormat, v87);
                          if (positionCopy == 2 && (ARFaceTrackingDevice(), v107 = objc_claimAutoreleasedReturnValue(), v107, v107 == v146))
                          {
                            v108 = &unk_1F4259190;
                          }

                          else
                          {
                            v108 = &unk_1F42591A8;
                          }

                          v109 = v106->_frameRatesByPowerUsage;
                          v106->_frameRatesByPowerUsage = v108;

                          v110 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ARVideoFormat framesPerSecond](v106, "framesPerSecond") * v148}];
                          v54 = v150;
                          if (([v150 containsObject:v110] & 1) == 0)
                          {
                            [v139 addObject:v106];
                            [v150 addObject:v110];
                            if (v74 == 1440 && v75 == 1080)
                            {
                              [v134 addObject:v106];
                            }
                          }
                        }
                      }

                      typeCopy = v146;
                      v64 = binnedCopy;
                      goto LABEL_165;
                    }
                  }
                }

                v90 = [videoSupportedFrameRateRanges countByEnumeratingWithState:&v161 objects:v176 count:16];
                if (v90)
                {
                  continue;
                }

                break;
              }

              typeCopy = v146;
              v64 = binnedCopy;
              v54 = v150;
            }

LABEL_165:

LABEL_166:
            ++v69;
          }

          while (v69 != v156);
          v111 = [obj countByEnumeratingWithState:&v165 objects:v177 count:16];
          v156 = v111;
        }

        while (v111);
      }

      v9 = v139;
      if ([v139 count])
      {
        goto LABEL_173;
      }

      v67 = v133 + 1;
    }

    while (v133 + 1 != v132);
    v132 = [&unk_1F4259130 countByEnumeratingWithState:&v169 objects:v178 count:16];
  }

  while (v132);
LABEL_173:
  if (!v137)
  {
LABEL_185:
    v137 = 0;
    goto LABEL_186;
  }

  if ([v134 count])
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v112 = v134;
    v113 = [v112 countByEnumeratingWithState:&v157 objects:v174 count:16];
    if (v113)
    {
      v114 = v113;
      v115 = *v158;
      do
      {
        for (j = 0; j != v114; ++j)
        {
          if (*v158 != v115)
          {
            objc_enumerationMutation(v112);
          }

          [v139 removeObject:*(*(&v157 + 1) + 8 * j)];
        }

        v114 = [v112 countByEnumeratingWithState:&v157 objects:v174 count:16];
      }

      while (v114);
    }

    v117 = _ARLogGeneral_28();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
    {
      v118 = objc_opt_class();
      v119 = NSStringFromClass(v118);
      *buf = 138543618;
      v180 = v119;
      v181 = 2048;
      selfCopy7 = self;
      _os_log_impl(&dword_1C241C000, v117, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removing 1440x1080 video format, because 1920x1440 is supported", buf, 0x16u);
    }

    v54 = v150;
  }

LABEL_186:
  [v9 sortUsingComparator:&__block_literal_global_80_0];
  v120 = ARFaceTrackingDevice();
  v121 = v120;
  if (positionCopy == 2 && v120 == typeCopy && [firstObject isGeometricDistortionCorrectionSupported])
  {
    v122 = ARLinkedOnOrAfterAzulE();

    if (v122)
    {
      v121 = [objc_opt_class() _querySupportedVideoFormatsForDevicePosition:2 deviceType:v125 videoBinned:v64 frameRate:rate];
      [v9 addObjectsFromArray:v121];
      goto LABEL_191;
    }
  }

  else
  {
LABEL_191:
  }

  v123 = v9;

LABEL_193:

  return v9;
}

uint64_t __95__ARVideoFormat__querySupportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 imageResolution];
  v7 = v6;
  [v4 imageResolution];
  v9 = v7 * v8;
  [v5 imageResolution];
  v11 = v10;
  [v5 imageResolution];
  if (v9 >= v11 * v12)
  {
    v14 = [v4 framesPerSecond];
    if (v14 < [v5 framesPerSecond])
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (id)bestDepthFormatForDeviceFormat:(id)format
{
  v19 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  supportedDepthDataFormats = [formatCopy supportedDepthDataFormats];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [supportedDepthDataFormats countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(supportedDepthDataFormats);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (CMFormatDescriptionGetMediaSubType([v10 formatDescription]) == 1717855600)
        {
          width = CMVideoFormatDescriptionGetDimensions([v10 formatDescription]).width;
          if (!v7 || width > CMVideoFormatDescriptionGetDimensions([v7 formatDescription]).width)
          {
            v12 = v10;

            v7 = v12;
          }
        }
      }

      v6 = [supportedDepthDataFormats countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)supportedVideoFormatsForStillImageCapture
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E6986950];

  return [v2 supportedVideoFormatsForStillImageCaptureForDevicePosition:1 deviceType:v3];
}

+ (id)supportedVideoFormatsForStillImageCaptureForDevicePosition:(int64_t)position deviceType:(id)type
{
  typeCopy = type;
  v6 = [objc_opt_class() supportedVideoFormatsForDevicePosition:position deviceType:typeCopy videoBinned:0];

  return v6;
}

+ (CGSize)hiResVideoDimensions
{
  v2 = 3840.0;
  v3 = 2160.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)supportedVideoFormatsForHiResOrX420
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E6986950];

  return [v2 supportedVideoFormatsForHiResOrX420ForDevicePosition:1 deviceType:v3];
}

+ (id)supportedVideoFormatsForHiResOrX420ForDevicePosition:(int64_t)position deviceType:(id)type
{
  v33[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v6 = objc_opt_new();
  [objc_opt_class() hiResVideoDimensions];
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_class();
  v30[0] = v8;
  v30[1] = v10;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:v30 objCType:"{CGSize=dd}"];
  v33[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  LOBYTE(v24) = 1;
  v14 = [v11 _supportedVideoFormatsForDevicePosition:position deviceType:typeCopy resolutions:v13 frameRatesByPowerUsage:&unk_1F4259208 videoBinned:0 pixelFormat:875704422 needsHDRSupport:v24];
  [v6 addObjectsFromArray:v14];

  v15 = objc_opt_class();
  v29[0] = v8;
  v29[1] = v10;
  v16 = [MEMORY[0x1E696B098] valueWithBytes:v29 objCType:"{CGSize=dd}"];
  v32 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  LOBYTE(v25) = 0;
  v18 = [v15 _supportedVideoFormatsForDevicePosition:position deviceType:typeCopy resolutions:v17 frameRatesByPowerUsage:&unk_1F4259208 videoBinned:0 pixelFormat:2016686640 needsHDRSupport:v25];
  [v6 addObjectsFromArray:v18];

  v28 = xmmword_1C25C9280;
  v19 = [MEMORY[0x1E696B098] valueWithBytes:&v28 objCType:"{CGSize=dd}"];
  v31[0] = v19;
  v27 = xmmword_1C25C84C0;
  v20 = [MEMORY[0x1E696B098] valueWithBytes:&v27 objCType:"{CGSize=dd}"];
  v31[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];

  LOBYTE(v26) = 0;
  v22 = [objc_opt_class() _supportedVideoFormatsForDevicePosition:position deviceType:typeCopy resolutions:v21 frameRatesByPowerUsage:&unk_1F4259250 videoBinned:0 pixelFormat:2016686640 needsHDRSupport:v26];

  [v6 addObjectsFromArray:v22];

  return v6;
}

+ (id)_supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type resolutions:(id)resolutions frameRatesByPowerUsage:(id)usage videoBinned:(BOOL)binned pixelFormat:(unsigned int)format needsHDRSupport:(BOOL)support
{
  binnedCopy = binned;
  v63[3] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  resolutionsCopy = resolutions;
  usageCopy = usage;
  v44 = objc_opt_new();
  v13 = [MEMORY[0x1E695DFA8] setWithArray:usageCopy];
  v14 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.wide.frameRate"];
  v15 = v14;
  if (v14)
  {
    v63[0] = v14;
    v63[1] = v14;
    v63[2] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:3];
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:0 comparator:&__block_literal_global_119];
  v62 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v41 = [v13 sortedArrayUsingDescriptors:v18];

  v45 = ARIsBravoCamera(typeCopy);
  if ((ARDeviceSupportsUltraWideCamera() || !((format == 2016686640) | v45 & 1)) && (format != 2016686640 || (ARDeviceIsiPad() & 1) == 0))
  {
    v36 = v13;
    v37 = usageCopy;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v38 = resolutionsCopy;
    obj = resolutionsCopy;
    v42 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (!v42)
    {
      goto LABEL_34;
    }

    v40 = *v57;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v57 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v19;
        v20 = *(*(&v56 + 1) + 8 * v19);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v21 = v41;
        v22 = [v21 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v53;
          do
          {
            v25 = 0;
            do
            {
              if (*v53 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v52 + 1) + 8 * v25);
              v50 = 0.0;
              v51 = 0.0;
              [v20 getValue:&v50 size:16];
              v27 = v50;
              v28 = v51;
              [objc_opt_class() hiResVideoDimensions];
              if (v50 == v30 && v51 == v29)
              {
                if (ARDeviceSupportsJasper())
                {
                  if (v45)
                  {
                    goto LABEL_24;
                  }
                }

                else if (v45 & 1 | ((ARDeviceSupportsUltraWideCamera() & 1) == 0))
                {
                  goto LABEL_24;
                }
              }

              LODWORD(v35) = format;
              v32 = [objc_opt_class() bestVideoFormatForDevicePosition:position deviceType:typeCopy resolution:v27 | (v28 << 32) frameRates:v26 videoBinned:binnedCopy needsHDRSupport:support pixelFormat:v35];
              if (v32)
              {
                [v44 addObject:v32];
              }

LABEL_24:
              ++v25;
            }

            while (v23 != v25);
            v33 = [v21 countByEnumeratingWithState:&v52 objects:v60 count:16];
            v23 = v33;
          }

          while (v33);
        }

        v19 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (!v42)
      {
LABEL_34:

        usageCopy = v37;
        resolutionsCopy = v38;
        v13 = v36;
        break;
      }
    }
  }

  return v44;
}

uint64_t __143__ARVideoFormat__supportedVideoFormatsForDevicePosition_deviceType_resolutions_frameRatesByPowerUsage_videoBinned_pixelFormat_needsHDRSupport___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 count] && objc_msgSend(v5, "count"))
  {
    v6 = [v4 firstObject];
    v7 = [v5 firstObject];
    v8 = [v6 compare:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isCaptureDeviceTypeAvailable:(id)available position:(int64_t)position
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69870A8];
  availableCopy = available;
  v6 = MEMORY[0x1E695DEC8];
  availableCopy2 = available;
  v8 = [v6 arrayWithObjects:&availableCopy count:1];
  v9 = [v5 discoverySessionWithDeviceTypes:v8 mediaType:*MEMORY[0x1E6987608] position:{position, availableCopy, v13}];

  devices = [v9 devices];
  LOBYTE(position) = [devices count] != 0;

  return position;
}

@end