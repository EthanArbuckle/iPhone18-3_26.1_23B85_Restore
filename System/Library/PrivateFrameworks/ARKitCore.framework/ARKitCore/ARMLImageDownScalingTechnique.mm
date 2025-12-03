@interface ARMLImageDownScalingTechnique
- (ARMLImageDownScalingTechnique)initWithSize:(CGSize)size requiredTimeInterval:(double)interval;
- (BOOL)isEqual:(id)equal;
- (CGSize)imageSize;
- (id)_fastPassDownscaledResultDataFromImageData:(id)data croppedRect:(CGRect)rect fastPassScaler:(id)scaler;
- (id)_fullDescription;
- (id)_rotateImageDataForNeuralNetwork:(id)network deviceOrientation:(int64_t)orientation pRegionOfInterest:(CGSize *)interest pRotationOfResultTensor:(int64_t *)tensor;
- (id)_scaleImageDataForNeuralNetwork:(id)network scaledSize:(CGSize)size;
- (id)_twoPassDownscaledResultDataFromImageData:(id)data croppedRect:(CGRect)rect;
- (id)processData:(id)data;
- (id)resultDataClasses;
- (int64_t)getDeviceOrientationFromImageData:(id)data;
- (void)_processImageDataInBackground:(id)background;
- (void)dealloc;
- (void)prepare:(BOOL)prepare;
@end

@implementation ARMLImageDownScalingTechnique

- (ARMLImageDownScalingTechnique)initWithSize:(CGSize)size requiredTimeInterval:(double)interval
{
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = ARMLImageDownScalingTechnique;
  v7 = [(ARImageBasedTechnique *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_lockedOrientation = -1;
    v7->_imageSize.width = width;
    v7->_imageSize.height = height;
    v9 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.matting.doubleMLResolutionForIPad"];
    if (v9)
    {
      LOBYTE(v9) = ARDeviceIsiPad();
    }

    v8->_enableDoubleMLResolutionForIPad = v9;
    v10 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.mldownsampling");
    processingQueue = v8->_processingQueue;
    v8->_processingQueue = v10;

    v8->_resultLatency = interval;
    v8->_resizeUltraWideImage = 0;
    v8->_saveIntermediateScaleResultData = 0;
    v8->_prepared = 0;
  }

  return v8;
}

- (void)dealloc
{
  cvImageFormatRef = self->_cvImageFormatRef;
  if (cvImageFormatRef)
  {
    MEMORY[0x1C691B950](cvImageFormatRef, a2);
  }

  bgraPixelBufferPool = self->_bgraPixelBufferPool;
  if (bgraPixelBufferPool)
  {
    CVPixelBufferPoolRelease(bgraPixelBufferPool);
    self->_bgraPixelBufferPool = 0;
  }

  v5.receiver = self;
  v5.super_class = ARMLImageDownScalingTechnique;
  [(ARMLImageDownScalingTechnique *)&v5 dealloc];
}

- (void)prepare:(BOOL)prepare
{
  v9.receiver = self;
  v9.super_class = ARMLImageDownScalingTechnique;
  [(ARTechnique *)&v9 prepare:?];
  self->_deterministic = prepare;
  if (!self->_prepared)
  {
    v5 = [[ARMLImageTransform alloc] initWithScaledSize:[ARKitUserDefaults BOOLForKey:?], 0, self->_imageSize.width, self->_imageSize.height];
    fastPassImageScaler = self->_fastPassImageScaler;
    self->_fastPassImageScaler = v5;

    v7 = [[ARMLImageTransform alloc] initWithScaledSize:1 useOptimalMSRCoefficients:1 useExplicitBGRAConversion:self->_imageSize.width, self->_imageSize.height];
    fastPassUltraWideImageScaler = self->_fastPassUltraWideImageScaler;
    self->_fastPassUltraWideImageScaler = v7;

    self->_prepared = 1;
  }
}

- (id)resultDataClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)processData:(id)data
{
  v27[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = dataCopy;
  if (isKindOfClass)
  {
    if (self->_prepared)
    {
      if (!-[ARMLImageDownScalingTechnique restrictDownscalingToMatchingAspectRatio](self, "restrictDownscalingToMatchingAspectRatio") || ([v6 imageResolution], IsLandscape = CGSizeAspectRatioIsLandscape(v8, v9), p_imageSize = &self->_imageSize, IsLandscape == CGSizeAspectRatioIsLandscape(self->_imageSize.width, self->_imageSize.height)) || (width = p_imageSize->width, p_imageSize->width == self->_imageSize.height))
      {
        v26.receiver = self;
        v26.super_class = ARMLImageDownScalingTechnique;
        width = [(ARImageBasedTechnique *)&v26 processData:v6, width];
        objc_initWeak(&location, self);
        processingQueue = self->_processingQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__ARMLImageDownScalingTechnique_processData___block_invoke;
        block[3] = &unk_1E817BDB0;
        objc_copyWeak(&v24, &location);
        v19 = v6;
        v23 = v19;
        dispatch_async(processingQueue, block);
        if (self->_deterministic)
        {
          dispatch_sync(self->_processingQueue, &__block_literal_global_25);
        }

        v20 = v19;

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      else
      {
        [v6 timestamp];
        [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
        v12 = v6;
      }
    }

    else
    {
      v13 = [ARMLImageDownScalingResultData alloc];
      [v6 timestamp];
      v14 = [(ARMLImageDownScalingResultData *)v13 initWithResultDataArray:MEMORY[0x1E695E0F0] timestamp:90 rotationOfResultTensor:v6 originalImageData:?];
      [(ARMLImageDownScalingResultData *)v14 setIsDroppedData:1];
      v27[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [v6 timestamp];
      [(ARImageBasedTechnique *)self pushResultData:v15 forTimestamp:?];

      v16 = v6;
    }
  }

  return v6;
}

void __45__ARMLImageDownScalingTechnique_processData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processImageDataInBackground:*(a1 + 32)];
}

- (void)_processImageDataInBackground:(id)background
{
  processingQueue = self->_processingQueue;
  backgroundCopy = background;
  dispatch_assert_queue_V2(processingQueue);
  v41 = [[ARModifiedImageData alloc] initWithImageData:backgroundCopy];

  [(ARImageData *)v41 timestamp];
  cameraType = [(ARImageData *)v41 cameraType];
  [cameraType isEqualToString:*MEMORY[0x1E6986948]];
  kdebug_trace();

  if ([(ARMLImageDownScalingTechnique *)self centerCropImage])
  {
    [(ARImageData *)v41 timestamp];
    kdebug_trace();
    [(ARImageData *)v41 imageResolution];
    [(ARImageData *)v41 imageResolution];
    kdebug_trace();
    [(ARImageData *)v41 cameraIntrinsics];
    [(ARImageData *)v41 cameraIntrinsics];
    [(ARImageData *)v41 cameraIntrinsics];
    kdebug_trace();
    [(ARImageData *)v41 imageResolution];
    v8 = v7;
    [(ARImageData *)v41 imageResolution];
    v10 = v9;
    v11 = fminf(v8, v10);
    imageCroppingTechnique = self->_imageCroppingTechnique;
    if (!imageCroppingTechnique || ([(ARImageCroppingTechnique *)imageCroppingTechnique croppedImageSize], v14 = v13, [(ARImageCroppingTechnique *)self->_imageCroppingTechnique croppedImageSize], v14 != v15) || ([(ARImageCroppingTechnique *)self->_imageCroppingTechnique croppedImageSize], v16 != v11))
    {
      v17 = [[ARImageCroppingTechnique alloc] initWithCroppedImageSize:v11, v11];
      v18 = self->_imageCroppingTechnique;
      self->_imageCroppingTechnique = v17;
    }

    v19 = [(ARImageCroppingTechnique *)self->_imageCroppingTechnique processData:v41];
    metaData = [v19 metaData];
    v21 = [metaData objectForKey:@"croppedRect"];

    if (v21)
    {
      [v21 rectValue];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
    }

    else
    {
      v25 = 0.0;
      v29 = 1.0;
      v27 = 1.0;
      v23 = 0.0;
    }

    v30 = v19;

    [(ARImageData *)v30 imageResolution];
    [(ARImageData *)v30 imageResolution];
    kdebug_trace();
    [(ARImageData *)v30 cameraIntrinsics];
    [(ARImageData *)v30 cameraIntrinsics];
    [(ARImageData *)v30 cameraIntrinsics];
    kdebug_trace();
    [(ARImageData *)v30 timestamp];

    kdebug_trace();
    v41 = v30;
  }

  else
  {
    v25 = 0.0;
    v29 = 1.0;
    v27 = 1.0;
    v23 = 0.0;
  }

  if ([(ARMLImageDownScalingTechnique *)self saveIntermediateScaleResultData])
  {
    [(ARMLImageDownScalingTechnique *)self _twoPassDownscaledResultDataFromImageData:v41 croppedRect:v23, v25, v27, v29];
  }

  else
  {
    [(ARMLImageDownScalingTechnique *)self _fastPassDownscaledResultDataFromImageData:v41 croppedRect:self->_fastPassImageScaler fastPassScaler:v23, v25, v27, v29];
  }
  v31 = ;
  downSamplingResultData = self->_downSamplingResultData;
  self->_downSamplingResultData = v31;

  latestUltraWideImage = [(ARImageData *)v41 latestUltraWideImage];
  latestUltraWideImage2 = latestUltraWideImage;
  if (latestUltraWideImage && self->_resizeUltraWideImage)
  {
    v35 = self->_downSamplingResultData;

    if (!v35)
    {
      goto LABEL_19;
    }

    latestUltraWideImage2 = [(ARImageData *)v41 latestUltraWideImage];
    v36 = [(ARMLImageDownScalingTechnique *)self _fastPassDownscaledResultDataFromImageData:latestUltraWideImage2 croppedRect:self->_fastPassUltraWideImageScaler fastPassScaler:0.0, 0.0, 1.0, 1.0];
    [(ARMLImageDownScalingResultData *)self->_downSamplingResultData setLatestResizedUltraWideImageData:v36];
  }

LABEL_19:
  [(ARImageData *)v41 timestamp];
  kdebug_trace();
  v37 = objc_opt_new();
  v38 = v37;
  if (self->_downSamplingResultData)
  {
    [v37 addObject:?];
    v39 = self->_downSamplingResultData;
    self->_downSamplingResultData = 0;
  }

  if (self->_intermediateDownSamplingResultData)
  {
    [v38 addObject:?];
    intermediateDownSamplingResultData = self->_intermediateDownSamplingResultData;
    self->_intermediateDownSamplingResultData = 0;
  }

  [(ARImageData *)v41 timestamp];
  kdebug_trace();
  [(ARImageData *)v41 timestamp];
  [(ARImageBasedTechnique *)self pushResultData:v38 forTimestamp:?];
}

- (int64_t)getDeviceOrientationFromImageData:(id)data
{
  dataCopy = data;
  if (![dataCopy deviceOrientation])
  {
    lockedOrientation = self->_lockedOrientation;
    if ((lockedOrientation & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = +[ARBKSAccelerometer sharedWeakAccelerometerHandle];
    if (v6)
    {
      v7 = v6;
      lockedOrientation = [v6 currentOrientation];

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = ARMLImageDownScalingTechnique;
  lockedOrientation = [(ARImageBasedTechnique *)&v9 getDeviceOrientationFromImageData:dataCopy];
LABEL_6:

  return lockedOrientation;
}

void __56__ARMLImageDownScalingTechnique_defaultRotationStrategy__block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  switch(a2)
  {
    case 4:
      v4 = 180;
      *a4 = 180;
      goto LABEL_7;
    case 3:
      *a4 = 0;
      *a3 = 0;
      return;
    case 2:
      *a4 = 90;
      v4 = -90;
LABEL_7:
      *a3 = v4;
      return;
  }

  *a3 = 90;
  *a4 = -90;
}

- (id)_twoPassDownscaledResultDataFromImageData:(id)data croppedRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31[1] = *MEMORY[0x1E69E9840];
  v9 = self->_imageSize.width;
  v10 = self->_imageSize.height;
  dataCopy = data;
  v12 = [(ARMLImageDownScalingTechnique *)self _scaleImageDataForNeuralNetwork:dataCopy scaledSize:v9, v10];
  v13 = [ARMLImageDownScalingResult alloc];
  pixelBuffer = [v12 pixelBuffer];
  [v12 imageResolution];
  v15 = [ARMLImageDownScalingResult initWithPixelBuffer:v13 regionOfInterest:"initWithPixelBuffer:regionOfInterest:cropRegion:" cropRegion:pixelBuffer];
  v16 = [ARMLIntermediateDownScalingResultData alloc];
  pixelBuffer2 = [(ARMLImageDownScalingResult *)v15 pixelBuffer];
  [dataCopy timestamp];
  v18 = [(ARMLIntermediateDownScalingResultData *)v16 initWithPixelBuffer:pixelBuffer2 timestamp:dataCopy originalImageData:?];
  intermediateDownSamplingResultData = self->_intermediateDownSamplingResultData;
  self->_intermediateDownSamplingResultData = v18;

  v29 = 0.0;
  v30 = 0.0;
  v28 = 0;
  v20 = [(ARMLImageDownScalingTechnique *)self _rotateImageDataForNeuralNetwork:v12 deviceOrientation:[(ARMLImageDownScalingTechnique *)self getDeviceOrientationFromImageData:dataCopy] pRegionOfInterest:&v29 pRotationOfResultTensor:&v28];
  v21 = [ARMLImageDownScalingResult alloc];
  pixelBuffer3 = [v20 pixelBuffer];
  height = [(ARMLImageDownScalingResult *)v21 initWithPixelBuffer:pixelBuffer3 regionOfInterest:v29 cropRegion:v30, x, y, width, height];
  v24 = [ARMLImageDownScalingResultData alloc];
  v31[0] = height;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [dataCopy timestamp];
  v26 = [(ARMLImageDownScalingResultData *)v24 initWithResultDataArray:v25 timestamp:v28 rotationOfResultTensor:dataCopy originalImageData:?];

  return v26;
}

- (id)_scaleImageDataForNeuralNetwork:(id)network scaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  networkCopy = network;
  imageScalingTechnique = self->_imageScalingTechnique;
  if (!imageScalingTechnique || (([(ARImageScalingTechnique *)imageScalingTechnique scaledSize], v10 == width) ? (v11 = v9 == height) : (v11 = 0), !v11))
  {
    height = [[ARImageScalingTechnique alloc] initWithScaledSize:width, height];
    v13 = self->_imageScalingTechnique;
    self->_imageScalingTechnique = height;

    [(ARImageScalingTechnique *)self->_imageScalingTechnique setConversionPixelFormatType:1111970369];
  }

  [networkCopy timestamp];
  cameraType = [networkCopy cameraType];
  [cameraType isEqualToString:*MEMORY[0x1E6986948]];
  [networkCopy imageResolution];
  [networkCopy imageResolution];
  kdebug_trace();

  [networkCopy cameraIntrinsics];
  [networkCopy cameraIntrinsics];
  [networkCopy cameraIntrinsics];
  kdebug_trace();
  v15 = [(ARImageScalingTechnique *)self->_imageScalingTechnique processData:networkCopy];
  [v15 cameraIntrinsics];
  [v15 cameraIntrinsics];
  [v15 cameraIntrinsics];
  kdebug_trace();
  [networkCopy timestamp];
  kdebug_trace();
  v16 = [[ARModifiedImageData alloc] initWithImageData:networkCopy];
  [networkCopy timestamp];
  [(ARImageData *)v16 setTimestamp:?];
  -[ARImageData setPixelBuffer:](v16, "setPixelBuffer:", [v15 pixelBuffer]);

  return v16;
}

- (id)_rotateImageDataForNeuralNetwork:(id)network deviceOrientation:(int64_t)orientation pRegionOfInterest:(CGSize *)interest pRotationOfResultTensor:(int64_t *)tensor
{
  v48[2] = *MEMORY[0x1E69E9840];
  networkCopy = network;
  originalImage = [networkCopy originalImage];
  v46 = 0;
  wideRotationStrategy = [(ARMLImageDownScalingTechnique *)self wideRotationStrategy];
  v13 = MEMORY[0x1E6986948];
  if (wideRotationStrategy && (v14 = wideRotationStrategy, [originalImage cameraType], v15 = objc_claimAutoreleasedReturnValue(), v16 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v15), v15, v14, v16))
  {
    wideRotationStrategy2 = [(ARMLImageDownScalingTechnique *)self wideRotationStrategy];
  }

  else
  {
    ultrawideRotationStrategy = [(ARMLImageDownScalingTechnique *)self ultrawideRotationStrategy];
    if (ultrawideRotationStrategy && (v19 = ultrawideRotationStrategy, [originalImage cameraType], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", *v13), v20, v19, v21))
    {
      wideRotationStrategy2 = [(ARMLImageDownScalingTechnique *)self ultrawideRotationStrategy];
    }

    else
    {
      wideRotationStrategy2 = [(ARMLImageDownScalingTechnique *)self defaultRotationStrategy];
    }
  }

  v22 = wideRotationStrategy2;
  (*(wideRotationStrategy2 + 16))(wideRotationStrategy2, orientation, &v46, tensor);

  imageRotationTechnique = self->_imageRotationTechnique;
  if (!imageRotationTechnique || (v24 = [(ARImageRotationTechnique *)imageRotationTechnique rotationAngle], v24 != v46) || [(ARImageRotationTechnique *)self->_imageRotationTechnique mirrorMode])
  {
    v25 = [ARImageRotationTechnique alloc];
    v26 = [(ARImageRotationTechnique *)v25 initWithRotation:v46 mirror:0];
    v27 = self->_imageRotationTechnique;
    self->_imageRotationTechnique = v26;
  }

  [originalImage timestamp];
  cameraType = [originalImage cameraType];
  [cameraType isEqualToString:*v13];
  kdebug_trace();

  [networkCopy imageResolution];
  [networkCopy imageResolution];
  kdebug_trace();
  v29 = [(ARImageRotationTechnique *)self->_imageRotationTechnique processData:networkCopy];
  [v29 imageResolution];
  [v29 imageResolution];
  kdebug_trace();
  [originalImage timestamp];
  kdebug_trace();
  pixelBuffer = [originalImage pixelBuffer];
  if (pixelBuffer)
  {
    v31 = pixelBuffer;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(v31);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  [networkCopy imageResolution];
  *&v34 = v34 / Width;
  v35 = *&v34;
  v36 = (Width * v35);
  if (v46 == 90 || v46 == -90)
  {
    v37 = (Height * v35);
  }

  else
  {
    v37 = (Width * v35);
    v36 = (Height * v35);
  }

  interest->width = v37;
  interest->height = v36;
  [originalImage timestamp];
  [v29 setTimestamp:?];
  v47[0] = @"imageDownScalingRotationOfResultTensorKey";
  v38 = [MEMORY[0x1E696AD98] numberWithInteger:*tensor];
  v47[1] = @"imageDownScalingRegionOfInterest";
  v48[0] = v38;
  v45 = *interest;
  v39 = [MEMORY[0x1E696B098] valueWithBytes:&v45 objCType:"{CGSize=dd}"];
  v48[1] = v39;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

  metaData = [v29 metaData];

  if (metaData)
  {
    metaData2 = [v29 metaData];
    v43 = [metaData2 mutableCopy];

    [v43 addEntriesFromDictionary:v40];
    [v29 setMetaData:v43];
  }

  else
  {
    [v29 setMetaData:v40];
  }

  [v29 setDeviceOrientation:orientation];

  return v29;
}

- (id)_fastPassDownscaledResultDataFromImageData:(id)data croppedRect:(CGRect)rect fastPassScaler:(id)scaler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  scalerCopy = scaler;
  v13 = [(ARMLImageDownScalingTechnique *)self getDeviceOrientationFromImageData:dataCopy];
  v26 = 0;
  v27 = 0;
  wideRotationStrategy = [(ARMLImageDownScalingTechnique *)self wideRotationStrategy];
  if (wideRotationStrategy && (v15 = wideRotationStrategy, [dataCopy cameraType], v16 = objc_claimAutoreleasedReturnValue(), v17 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v16), v16, v15, v17))
  {
    wideRotationStrategy2 = [(ARMLImageDownScalingTechnique *)self wideRotationStrategy];
  }

  else
  {
    ultrawideRotationStrategy = [(ARMLImageDownScalingTechnique *)self ultrawideRotationStrategy];
    if (ultrawideRotationStrategy && (v20 = ultrawideRotationStrategy, [dataCopy cameraType], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", *MEMORY[0x1E6986948]), v21, v20, v22))
    {
      wideRotationStrategy2 = [(ARMLImageDownScalingTechnique *)self ultrawideRotationStrategy];
    }

    else
    {
      wideRotationStrategy2 = [(ARMLImageDownScalingTechnique *)self defaultRotationStrategy];
    }
  }

  v23 = wideRotationStrategy2;
  (*(wideRotationStrategy2 + 16))(wideRotationStrategy2, v13, &v27, &v26);

  v24 = [scalerCopy fastPassDownscaledResultDataFromImageData:dataCopy croppedRect:v27 rotation:v26 rotationOfResultTensor:{x, y, width, height}];

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = ARMLImageDownScalingTechnique;
  if ([(ARTechnique *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = self->_imageSize.width == v5[27] && self->_imageSize.height == v5[28];
    v7 = v6 && self->_centerCropImage == *(v5 + 194) && self->_resizeUltraWideImage == *(v5 + 195) && self->_saveIntermediateScaleResultData == *(v5 + 196) && self->_restrictDownscalingToMatchingAspectRatio == *(v5 + 197);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = ARMLImageDownScalingTechnique;
  _fullDescription = [(ARImageBasedTechnique *)&v8 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", _fullDescription];

  v6 = CVPixelBufferPoolGetPixelBufferAttributes(self->_bgraPixelBufferPool);
  [v5 appendFormat:@"\tPixelBufferPool attr: %@\n", v6];

  return v5;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end