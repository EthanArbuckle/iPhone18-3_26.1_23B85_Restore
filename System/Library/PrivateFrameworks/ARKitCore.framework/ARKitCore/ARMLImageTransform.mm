@interface ARMLImageTransform
- (ARMLImageTransform)initWithScaledSize:(CGSize)size useOptimalMSRCoefficients:(BOOL)coefficients useExplicitBGRAConversion:(BOOL)conversion;
- (id)_applyFinalTransformToScaledImage:(id)image rotation:(int64_t)rotation finalResultSize:(CGSize)size originalImageData:(id)data;
- (id)_preScaleImageData:(id)data;
- (id)fastPassDownscaledResultDataFromImageData:(id)data croppedRect:(CGRect)rect rotation:(int64_t)rotation rotationOfResultTensor:(int64_t)tensor;
- (void)_calculatePreScalingPassesForInputResolution:(CGSize)resolution;
- (void)_prepareSessionAndPoolForRotation:(int64_t)rotation;
- (void)dealloc;
@end

@implementation ARMLImageTransform

- (ARMLImageTransform)initWithScaledSize:(CGSize)size useOptimalMSRCoefficients:(BOOL)coefficients useExplicitBGRAConversion:(BOOL)conversion
{
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = ARMLImageTransform;
  v9 = [(ARMLImageTransform *)&v13 init];
  v10 = v9;
  if (v9)
  {
    imageScalePassDescriptions = v9->_imageScalePassDescriptions;
    v9->_imageScalePassDescriptions = 0;

    v10->_inputSize = *MEMORY[0x1E695F060];
    v10->_scaledSize.width = width;
    v10->_scaledSize.height = height;
    v10->_useOptimalMSRCoefficients = coefficients;
    v10->_useExplicitBGRAConversion = conversion;
  }

  return v10;
}

- (void)dealloc
{
  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    VTPixelRotationSessionInvalidate(rotationSession);
    CFRelease(self->_rotationSession);
  }

  scalingSession = self->_scalingSession;
  if (scalingSession)
  {
    VTPixelTransferSessionInvalidate(scalingSession);
    CFRelease(self->_scalingSession);
  }

  conversionSession = self->_conversionSession;
  if (conversionSession)
  {
    VTPixelTransferSessionInvalidate(conversionSession);
    CFRelease(self->_conversionSession);
  }

  CVPixelBufferPoolRelease(self->_resultBufferPool);
  CVPixelBufferPoolRelease(self->_scaledBufferPool);
  CVPixelBufferPoolRelease(self->_conversionBufferPool);
  v6.receiver = self;
  v6.super_class = ARMLImageTransform;
  [(ARMLImageTransform *)&v6 dealloc];
}

- (id)fastPassDownscaledResultDataFromImageData:(id)data croppedRect:(CGRect)rect rotation:(int64_t)rotation rotationOfResultTensor:(int64_t)tensor
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v51[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  [dataCopy timestamp];
  cameraType = [dataCopy cameraType];
  v15 = *MEMORY[0x1E6986948];
  [cameraType isEqualToString:*MEMORY[0x1E6986948]];
  [dataCopy imageResolution];
  [dataCopy imageResolution];
  kdebug_trace();

  [dataCopy cameraIntrinsics];
  [dataCopy cameraIntrinsics];
  [dataCopy cameraIntrinsics];
  kdebug_trace();
  [dataCopy imageResolution];
  [(ARMLImageTransform *)self _calculatePreScalingPassesForInputResolution:?];
  v16 = [(ARMLImageTransform *)self _preScaleImageData:dataCopy];
  pixelBuffer = [dataCopy pixelBuffer];
  if (pixelBuffer)
  {
    v18 = pixelBuffer;
    v19 = CVPixelBufferGetWidth(pixelBuffer);
    v20 = CVPixelBufferGetHeight(v18);
  }

  else
  {
    v19 = *MEMORY[0x1E695F060];
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  v21 = self->_scaledSize.width;
  v22 = self->_scaledSize.height;
  v23 = v21 / v19;
  v24 = v23;
  v25 = v20 * v24;
  v26 = v25;
  if (rotation == 90 || rotation == -90)
  {
    v27 = v21;
    v28 = (v19 * v24);
  }

  else
  {
    v27 = self->_scaledSize.height;
    v22 = self->_scaledSize.width;
    v28 = v25;
    v26 = (v19 * v24);
  }

  v29 = v26;
  v30 = v28;
  [v16 timestamp];
  cameraType2 = [v16 cameraType];
  [cameraType2 isEqualToString:v15];
  kdebug_trace();

  [v16 imageResolution];
  [v16 imageResolution];
  kdebug_trace();
  v32 = [(ARMLImageTransform *)self _applyFinalTransformToScaledImage:v16 rotation:rotation finalResultSize:dataCopy originalImageData:v22, v27];
  [dataCopy cameraIntrinsics];
  v46 = v34;
  v47 = v33;
  [dataCopy imageResolution];
  [v32 setCameraIntrinsics:{ARAdjustIntrincisForOrientation(self->_rotationAngle, v47, v46)}];
  [v32 setMirrored:0];
  [v32 imageResolution];
  [v32 imageResolution];
  kdebug_trace();
  [v16 timestamp];
  kdebug_trace();
  [v32 cameraIntrinsics];
  [v32 cameraIntrinsics];
  [v32 cameraIntrinsics];
  kdebug_trace();
  [v32 timestamp];
  [v32 imageResolution];
  [v32 imageResolution];
  kdebug_trace();
  v50[0] = @"imageDownScalingRotationOfResultTensorKey";
  v35 = [MEMORY[0x1E696AD98] numberWithInteger:tensor];
  v50[1] = @"imageDownScalingRegionOfInterest";
  v51[0] = v35;
  *v48 = v29;
  *&v48[1] = v30;
  v36 = [MEMORY[0x1E696B098] valueWithBytes:v48 objCType:"{CGSize=dd}"];
  v51[1] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];

  metaData = [v32 metaData];

  if (metaData)
  {
    metaData2 = [v32 metaData];
    v40 = [metaData2 mutableCopy];

    [v40 addEntriesFromDictionary:v37];
    [v32 setMetaData:v40];
  }

  else
  {
    [v32 setMetaData:v37];
  }

  v41 = -[ARMLImageDownScalingResult initWithPixelBuffer:regionOfInterest:cropRegion:]([ARMLImageDownScalingResult alloc], "initWithPixelBuffer:regionOfInterest:cropRegion:", [v32 pixelBuffer], v29, v30, x, y, width, height);
  v42 = [ARMLImageDownScalingResultData alloc];
  v49 = v41;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  [dataCopy timestamp];
  v44 = [(ARMLImageDownScalingResultData *)v42 initWithResultDataArray:v43 timestamp:tensor rotationOfResultTensor:dataCopy originalImageData:?];

  return v44;
}

- (void)_calculatePreScalingPassesForInputResolution:(CGSize)resolution
{
  height = resolution.height;
  width = resolution.width;
  v36 = *MEMORY[0x1E69E9840];
  v5 = self->_inputSize.width == resolution.width;
  if (self->_inputSize.height != resolution.height)
  {
    v5 = 0;
  }

  imageScalePassDescriptions = self->_imageScalePassDescriptions;
  if (imageScalePassDescriptions)
  {
    v7 = !v5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (imageScalePassDescriptions != 0 && !v5)
    {
      kdebug_trace();
      v9 = _ARLogTechnique_6();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v28 = 138543618;
        v29 = v11;
        v30 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Recreating scaling passes", &v28, 0x16u);
      }

      v12 = _ARLogTechnique_6();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = self->_inputSize.width;
        v16 = self->_inputSize.height;
        v28 = 138544130;
        v29 = v14;
        v30 = 2048;
        selfCopy3 = self;
        v32 = 2048;
        v33 = v15;
        v34 = 2048;
        v35 = v16;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: was scaling from %.1f x %.1f", &v28, 0x2Au);
      }

      v17 = _ARLogTechnique_6();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v28 = 138544130;
        v29 = v19;
        v30 = 2048;
        selfCopy3 = self;
        v32 = 2048;
        v33 = width;
        v34 = 2048;
        v35 = height;
        _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: now scaling from %.1f x %.1f", &v28, 0x2Au);
      }
    }

    self->_inputSize.width = width;
    self->_inputSize.height = height;
    imageScalingTechnique = self->_imageScalingTechnique;
    self->_imageScalingTechnique = 0;

    v21 = [ARImageScalingTechnique scalingPassDescriptionForInputSize:0 scaledSize:self->_inputSize.width conversionPixelFormat:self->_inputSize.height, self->_scaledSize.width, self->_scaledSize.height];
    v22 = self->_imageScalePassDescriptions;
    self->_imageScalePassDescriptions = v21;

    v23 = [(NSArray *)self->_imageScalePassDescriptions count];
    if (v23 >= 2)
    {
      v24 = [(NSArray *)self->_imageScalePassDescriptions objectAtIndexedSubscript:v23 - 2];
      v25 = [ARImageScalingTechnique alloc];
      [v24 size];
      v26 = [(ARImageScalingTechnique *)v25 initWithScaledSize:?];
      v27 = self->_imageScalingTechnique;
      self->_imageScalingTechnique = v26;

      [(ARImageScalingTechnique *)self->_imageScalingTechnique setConversionPixelFormatType:875704422];
    }
  }
}

- (id)_preScaleImageData:(id)data
{
  imageScalingTechnique = self->_imageScalingTechnique;
  dataCopy = data;
  if (imageScalingTechnique)
  {
    v5 = [(ARImageScalingTechnique *)imageScalingTechnique processData:dataCopy];
  }

  else
  {
    v5 = [[ARModifiedImageData alloc] initWithImageData:dataCopy];
  }

  v6 = v5;

  return v6;
}

- (void)_prepareSessionAndPoolForRotation:(int64_t)rotation
{
  if (self->_rotationAngle != rotation)
  {
    self->_rotationAngle = rotation;
    scalingSession = self->_scalingSession;
    if (scalingSession)
    {
      VTPixelTransferSessionInvalidate(scalingSession);
      CFRelease(self->_scalingSession);
      self->_scalingSession = 0;
    }

    rotationSession = self->_rotationSession;
    if (rotationSession)
    {
      VTPixelRotationSessionInvalidate(rotationSession);
      CFRelease(self->_rotationSession);
      self->_rotationSession = 0;
    }

    conversionSession = self->_conversionSession;
    if (conversionSession)
    {
      VTPixelTransferSessionInvalidate(conversionSession);
      CFRelease(self->_conversionSession);
      self->_conversionSession = 0;
    }

    scaledBufferPool = self->_scaledBufferPool;
    if (scaledBufferPool)
    {
      CVPixelBufferPoolRelease(scaledBufferPool);
      self->_scaledBufferPool = 0;
    }

    resultBufferPool = self->_resultBufferPool;
    if (resultBufferPool)
    {
      CVPixelBufferPoolRelease(resultBufferPool);
      self->_resultBufferPool = 0;
    }
  }
}

- (id)_applyFinalTransformToScaledImage:(id)image rotation:(int64_t)rotation finalResultSize:(CGSize)size originalImageData:(id)data
{
  height = size.height;
  width = size.width;
  v113 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  dataCopy = data;
  [(ARMLImageTransform *)self _prepareSessionAndPoolForRotation:rotation];
  pixelBuffer = [imageCopy pixelBuffer];
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v90 = __99__ARMLImageTransform__applyFinalTransformToScaledImage_rotation_finalResultSize_originalImageData___block_invoke;
  v91 = &unk_1E817C4A0;
  v92 = &v103;
  v93 = &v99;
  v94 = &v95;
  if (!self->_useExplicitBGRAConversion || (p_conversionSession = &self->_conversionSession, self->_conversionSession) || !VTPixelTransferSessionCreate(0, &self->_conversionSession))
  {
    useOptimalMSRCoefficients = self->_useOptimalMSRCoefficients;
    if (useOptimalMSRCoefficients)
    {
      p_scalingSession = &self->_scalingSession;
      if (!self->_scalingSession)
      {
        v35 = VTPixelTransferSessionCreate(0, &self->_scalingSession);
        v36 = *p_scalingSession;
        if (v35)
        {
          CFRelease(v36);
          *p_scalingSession = 0;
          if (ARShouldUseLogTypeError_onceToken_11 != -1)
          {
            [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
          }

          v37 = ARShouldUseLogTypeError_internalOSVersion_11;
          v38 = _ARLogTechnique_6();
          v28 = v38;
          if (v37 == 1)
          {
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              *buf = 138543618;
              v108 = v40;
              v109 = 2048;
              selfCopy16 = self;
              _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create pixel transfer session for image downscaling", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v80 = objc_opt_class();
            v81 = NSStringFromClass(v80);
            *buf = 138543618;
            v108 = v81;
            v109 = 2048;
            selfCopy16 = self;
            _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create pixel transfer session for image downscaling", buf, 0x16u);
          }

          goto LABEL_84;
        }

        if (VTSessionSetProperty(v36, *MEMORY[0x1E6983E50], *MEMORY[0x1E695E4D0]))
        {
          CFRelease(*p_scalingSession);
          *p_scalingSession = 0;
          if (ARShouldUseLogTypeError_onceToken_11 != -1)
          {
            [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
          }

          v72 = ARShouldUseLogTypeError_internalOSVersion_11;
          v73 = _ARLogTechnique_6();
          v28 = v73;
          if (v72 == 1)
          {
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v74 = objc_opt_class();
              v75 = NSStringFromClass(v74);
              *buf = 138543618;
              v108 = v75;
              v109 = 2048;
              selfCopy16 = self;
              _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to update pixel transfer session properties", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            v86 = objc_opt_class();
            v87 = NSStringFromClass(v86);
            *buf = 138543618;
            v108 = v87;
            v109 = 2048;
            selfCopy16 = self;
            _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to update pixel transfer session properties", buf, 0x16u);
          }

          goto LABEL_84;
        }
      }
    }

    if (self->_rotationAngle || !self->_useOptimalMSRCoefficients)
    {
      p_rotationSession = &self->_rotationSession;
      if (!self->_rotationSession)
      {
        v24 = VTPixelRotationSessionCreate(0, &self->_rotationSession);
        v25 = *p_rotationSession;
        if (v24)
        {
          CFRelease(*p_rotationSession);
          *p_rotationSession = 0;
          if (ARShouldUseLogTypeError_onceToken_11 != -1)
          {
            [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
          }

          v26 = ARShouldUseLogTypeError_internalOSVersion_11;
          v27 = _ARLogTechnique_6();
          v28 = v27;
          if (v26 == 1)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v29 = objc_opt_class();
              v30 = NSStringFromClass(v29);
              *buf = 138543874;
              v108 = v30;
              v109 = 2048;
              selfCopy16 = self;
              v111 = 1024;
              v112 = v24;
              _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Creation of VTPixelRotationSession failed with error %d", buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v70 = objc_opt_class();
            v71 = NSStringFromClass(v70);
            *buf = 138543874;
            v108 = v71;
            v109 = 2048;
            selfCopy16 = self;
            v111 = 1024;
            v112 = v24;
            _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Creation of VTPixelRotationSession failed with error %d", buf, 0x1Cu);
          }

          goto LABEL_84;
        }

        v64 = kVTRotationFromARRotationAngle(self->_rotationAngle);
        v65 = VTSessionSetProperty(v25, *MEMORY[0x1E6983D98], v64);
        if (v65)
        {
          if (ARShouldUseLogTypeError_onceToken_11 != -1)
          {
            [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
          }

          v66 = ARShouldUseLogTypeError_internalOSVersion_11;
          v67 = _ARLogTechnique_6();
          v28 = v67;
          if (v66 == 1)
          {
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              v68 = objc_opt_class();
              v69 = NSStringFromClass(v68);
              *buf = 138543874;
              v108 = v69;
              v109 = 2048;
              selfCopy16 = self;
              v111 = 1024;
              v112 = v65;
              _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Configuration of VTPixelRotationSession failed with error %d", buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            v84 = objc_opt_class();
            v85 = NSStringFromClass(v84);
            *buf = 138543874;
            v108 = v85;
            v109 = 2048;
            selfCopy16 = self;
            v111 = 1024;
            v112 = v65;
            _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Configuration of VTPixelRotationSession failed with error %d", buf, 0x1Cu);
          }

          goto LABEL_84;
        }
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    if (self->_useExplicitBGRAConversion)
    {
      if (pixelBuffer)
      {
        v19 = CVPixelBufferGetWidth(pixelBuffer);
        v20 = CVPixelBufferGetHeight(pixelBuffer);
        v21 = v19;
        v22 = v20;
      }

      else
      {
        v21 = *MEMORY[0x1E695F060];
        v22 = *(MEMORY[0x1E695F060] + 8);
      }

      v41 = ARCreateCVPixelBufferFromPool(&self->_conversionBufferPool, 1111970369, self, @"conversion buffer pool", v21, v22);
      v104[3] = v41;
      v42 = VTPixelTransferSessionTransferImage(self->_conversionSession, pixelBuffer, v41);
      if (v42)
      {
        if (ARShouldUseLogTypeError_onceToken_11 != -1)
        {
          [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
        }

        v43 = ARShouldUseLogTypeError_internalOSVersion_11;
        v44 = _ARLogTechnique_6();
        v28 = v44;
        if (v43 == 1)
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = objc_opt_class();
            v46 = NSStringFromClass(v45);
            *buf = 138543874;
            v108 = v46;
            v109 = 2048;
            selfCopy16 = self;
            v111 = 1024;
            v112 = v42;
            _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to convert image to BGRA: %d", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v62 = objc_opt_class();
          v63 = NSStringFromClass(v62);
          *buf = 138543874;
          v108 = v63;
          v109 = 2048;
          selfCopy16 = self;
          v111 = 1024;
          v112 = v42;
          _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to convert image to BGRA: %d", buf, 0x1Cu);
        }

        goto LABEL_84;
      }
    }

    else
    {
      v23 = CVPixelBufferRetain(pixelBuffer);
      v104[3] = v23;
    }

    if (useOptimalMSRCoefficients)
    {
      v47 = ARCreateCVPixelBufferFromPool(&self->_scaledBufferPool, 1111970369, self, @"downscale buffer pool", self->_scaledSize.width, self->_scaledSize.height);
      v100[3] = v47;
      v48 = VTPixelTransferSessionTransferImage(self->_scalingSession, v104[3], v47);
      if (v48)
      {
        if (ARShouldUseLogTypeError_onceToken_11 != -1)
        {
          [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
        }

        v49 = ARShouldUseLogTypeError_internalOSVersion_11;
        v50 = _ARLogTechnique_6();
        v28 = v50;
        if (v49 == 1)
        {
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            *buf = 138543874;
            v108 = v52;
            v109 = 2048;
            selfCopy16 = self;
            v111 = 1024;
            v112 = v48;
            _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to scale: %d", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v76 = objc_opt_class();
          v77 = NSStringFromClass(v76);
          *buf = 138543874;
          v108 = v77;
          v109 = 2048;
          selfCopy16 = self;
          v111 = 1024;
          v112 = v48;
          _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to scale: %d", buf, 0x1Cu);
        }

        goto LABEL_84;
      }
    }

    else
    {
      v53 = CVPixelBufferRetain(v104[3]);
      v100[3] = v53;
    }

    if (v17)
    {
      v54 = ARCreateCVPixelBufferFromPool(&self->_resultBufferPool, 1111970369, self, @"rotate pass buffer pool", width, height);
      v96[3] = v54;
      v55 = VTPixelRotationSessionRotateImage(self->_rotationSession, v100[3], v54);
      if (v55)
      {
        if (ARShouldUseLogTypeError_onceToken_11 != -1)
        {
          [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
        }

        v56 = ARShouldUseLogTypeError_internalOSVersion_11;
        v57 = _ARLogTechnique_6();
        v28 = v57;
        if (v56 == 1)
        {
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            *buf = 138543874;
            v108 = v59;
            v109 = 2048;
            selfCopy16 = self;
            v111 = 1024;
            v112 = v55;
            _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to scale+rotate+convert: %d", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v82 = objc_opt_class();
          v83 = NSStringFromClass(v82);
          *buf = 138543874;
          v108 = v83;
          v109 = 2048;
          selfCopy16 = self;
          v111 = 1024;
          v112 = v55;
          _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to scale+rotate+convert: %d", buf, 0x1Cu);
        }

        goto LABEL_84;
      }
    }

    else
    {
      v60 = CVPixelBufferRetain(v100[3]);
      v96[3] = v60;
    }

    v61 = [[ARModifiedImageData alloc] initWithImageData:dataCopy];
    [(ARImageData *)v61 setPixelBuffer:v96[3]];
    [dataCopy timestamp];
    [(ARImageData *)v61 setTimestamp:?];
    goto LABEL_85;
  }

  CFRelease(*p_conversionSession);
  *p_conversionSession = 0;
  if (ARShouldUseLogTypeError_onceToken_11 != -1)
  {
    [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
  }

  v31 = ARShouldUseLogTypeError_internalOSVersion_11;
  v32 = _ARLogTechnique_6();
  v28 = v32;
  if (v31 == 1)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138543618;
      v108 = v34;
      v109 = 2048;
      selfCopy16 = self;
      _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create pixel transfer session for bgra conversion", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v78 = objc_opt_class();
    v79 = NSStringFromClass(v78);
    *buf = 138543618;
    v108 = v79;
    v109 = 2048;
    selfCopy16 = self;
    _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create pixel transfer session for bgra conversion", buf, 0x16u);
  }

LABEL_84:

  v61 = 0;
LABEL_85:
  v90(v89);
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v103, 8);

  return v61;
}

void __99__ARMLImageTransform__applyFinalTransformToScaledImage_rotation_finalResultSize_originalImageData___block_invoke(void *a1)
{
  CVPixelBufferRelease(*(*(a1[4] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[5] + 8) + 24));
  v2 = *(*(a1[6] + 8) + 24);

  CVPixelBufferRelease(v2);
}

@end