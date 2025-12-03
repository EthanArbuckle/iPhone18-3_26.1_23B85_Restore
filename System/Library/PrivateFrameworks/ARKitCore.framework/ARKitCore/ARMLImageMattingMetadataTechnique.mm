@interface ARMLImageMattingMetadataTechnique
- (ARMLImageMattingMetadataTechnique)init;
- (id)_generateMattingMetadata:(id)metadata;
- (id)processData:(id)data;
- (id)resultDataClasses;
- (void)_processDataInBackgound:(id)backgound;
- (void)dealloc;
- (void)prepare:(BOOL)prepare;
- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)timestamp;
@end

@implementation ARMLImageMattingMetadataTechnique

- (ARMLImageMattingMetadataTechnique)init
{
  v7.receiver = self;
  v7.super_class = ARMLImageMattingMetadataTechnique;
  v2 = [(ARImageBasedTechnique *)&v7 init];
  if (v2)
  {
    v3 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.matting.doubleMLResolutionForIPad"];
    if (v3)
    {
      LOBYTE(v3) = ARDeviceIsiPad();
    }

    v2->_enableDoubleMLResolutionForIPad = v3;
    v4 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.mlmattingmetadata");
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v4;
  }

  return v2;
}

- (void)dealloc
{
  cvImageFormatRef = self->_cvImageFormatRef;
  if (cvImageFormatRef)
  {
    MEMORY[0x1C691B950](cvImageFormatRef, a2);
  }

  bgraMattingPixelBufferPool = self->_bgraMattingPixelBufferPool;
  if (bgraMattingPixelBufferPool)
  {
    CVPixelBufferPoolRelease(bgraMattingPixelBufferPool);
    self->_bgraMattingPixelBufferPool = 0;
  }

  v5.receiver = self;
  v5.super_class = ARMLImageMattingMetadataTechnique;
  [(ARMLImageMattingMetadataTechnique *)&v5 dealloc];
}

- (void)prepare:(BOOL)prepare
{
  v5.receiver = self;
  v5.super_class = ARMLImageMattingMetadataTechnique;
  [(ARTechnique *)&v5 prepare:?];
  self->_deterministic = prepare;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = dataCopy;
  v7 = v6;
  if (isKindOfClass)
  {
    originalImageData = [v6 originalImageData];
    if ([originalImageData cameraPosition] != 2)
    {
      cameraType = [originalImageData cameraType];
      if (ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(cameraType))
      {
      }

      else
      {
        cameraType2 = [originalImageData cameraType];
        v11 = [cameraType2 isEqualToString:*MEMORY[0x1E6986940]];

        if ((v11 & 1) == 0)
        {
          [v7 timestamp];
          [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
LABEL_9:

          goto LABEL_10;
        }
      }
    }

    v19.receiver = self;
    v19.super_class = ARMLImageMattingMetadataTechnique;
    v12 = [(ARImageBasedTechnique *)&v19 processData:v7];
    objc_initWeak(&location, self);
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__ARMLImageMattingMetadataTechnique_processData___block_invoke;
    block[3] = &unk_1E817BDB0;
    objc_copyWeak(&v17, &location);
    v16 = v7;
    dispatch_async(processingQueue, block);
    if (self->_deterministic)
    {
      dispatch_sync(self->_processingQueue, &__block_literal_global_26);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

void __49__ARMLImageMattingMetadataTechnique_processData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processDataInBackgound:*(a1 + 32)];
}

- (void)_processDataInBackgound:(id)backgound
{
  backgoundCopy = backgound;
  dispatch_assert_queue_V2(self->_processingQueue);
  [backgoundCopy timestamp];
  kdebug_trace();
  v4 = [(ARMLImageMattingMetadataTechnique *)self _generateMattingMetadata:backgoundCopy];
  v5 = objc_opt_new();
  v6 = v5;
  if (v4)
  {
    [v5 addObject:v4];
  }

  [backgoundCopy timestamp];
  [(ARImageBasedTechnique *)self pushResultData:v6 forTimestamp:?];
  [backgoundCopy timestamp];
  kdebug_trace();
}

- (id)_generateMattingMetadata:(id)metadata
{
  metadataCopy = metadata;
  originalImageData = [metadataCopy originalImageData];
  v6 = [[ARModifiedImageData alloc] initWithImageData:originalImageData];
  -[ARImageData setPixelBuffer:](v6, "setPixelBuffer:", [metadataCopy pixelBuffer]);
  [(ARImageData *)v6 imageResolution];
  v8 = v7;
  v10 = v9;
  [originalImageData imageResolution];
  v12 = v11;
  *&v13 = v13;
  v14 = v8 / v12;
  v15 = *&v13 * v14;
  v16 = v15;
  if (v10 == v16)
  {
    v17 = v8 + v8;
    if (self->_enableDoubleMLResolutionForIPad)
    {
      v18 = v10 + v10;
    }

    else
    {
      v18 = v10;
    }

    if (self->_enableDoubleMLResolutionForIPad)
    {
      v8 = v8 + v8;
    }
  }

  else
  {
    v19 = v12 * v14;
    v20 = v19;
    v21 = v15;
    v17 = (v19 + v19);
    v22 = (v15 + v15);
    if (self->_enableDoubleMLResolutionForIPad)
    {
      v18 = v22;
    }

    else
    {
      v18 = v21;
    }

    if (self->_enableDoubleMLResolutionForIPad)
    {
      v8 = v17;
    }

    else
    {
      v8 = v20;
    }
  }

  mattingImageScalingTechnique = self->_mattingImageScalingTechnique;
  if (!mattingImageScalingTechnique || (([(ARImageScalingTechnique *)mattingImageScalingTechnique scaledSize], v25 == v8) ? (v26 = v24 == v18) : (v26 = 0), !v26))
  {
    v27 = [[ARImageScalingTechnique alloc] initWithScaledSize:v8, v18];
    v28 = self->_mattingImageScalingTechnique;
    self->_mattingImageScalingTechnique = v27;

    [(ARImageScalingTechnique *)self->_mattingImageScalingTechnique setConversionPixelFormatType:1111970369];
  }

  if (v10 == v16 && !self->_enableDoubleMLResolutionForIPad)
  {
    v29 = v6;
  }

  else
  {
    [metadataCopy timestamp];
    [originalImageData imageResolution];
    [originalImageData imageResolution];
    kdebug_trace();
    v29 = [(ARImageScalingTechnique *)self->_mattingImageScalingTechnique processData:originalImageData];
    [originalImageData timestamp];
    kdebug_trace();
  }

  v30 = [ARMattingImageMetaData alloc];
  [metadataCopy timestamp];
  v32 = -[ARMattingImageMetaData initWithTimestamp:downSampledImageBuffer:mattingScaleImageBuffer:](v30, "initWithTimestamp:downSampledImageBuffer:mattingScaleImageBuffer:", [metadataCopy pixelBuffer], -[ARImageData pixelBuffer](v29, "pixelBuffer"), v31);

  return v32;
}

- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)timestamp
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ARMLImageMattingMetadataTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke;
  block[3] = &unk_1E817C4E8;
  objc_copyWeak(v7, &location);
  v7[1] = *&timestamp;
  dispatch_async(processingQueue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __84__ARMLImageMattingMetadataTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pushResultData:MEMORY[0x1E695E0F0] forTimestamp:*(a1 + 40)];
}

@end