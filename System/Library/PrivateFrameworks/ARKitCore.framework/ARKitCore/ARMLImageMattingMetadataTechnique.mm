@interface ARMLImageMattingMetadataTechnique
- (ARMLImageMattingMetadataTechnique)init;
- (id)_generateMattingMetadata:(id)a3;
- (id)processData:(id)a3;
- (id)resultDataClasses;
- (void)_processDataInBackgound:(id)a3;
- (void)dealloc;
- (void)prepare:(BOOL)a3;
- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)a3;
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

- (void)prepare:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ARMLImageMattingMetadataTechnique;
  [(ARTechnique *)&v5 prepare:?];
  self->_deterministic = a3;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)processData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v4;
  v7 = v6;
  if (isKindOfClass)
  {
    v8 = [v6 originalImageData];
    if ([v8 cameraPosition] != 2)
    {
      v9 = [v8 cameraType];
      if (ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(v9))
      {
      }

      else
      {
        v10 = [v8 cameraType];
        v11 = [v10 isEqualToString:*MEMORY[0x1E6986940]];

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

- (void)_processDataInBackgound:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_processingQueue);
  [v7 timestamp];
  kdebug_trace();
  v4 = [(ARMLImageMattingMetadataTechnique *)self _generateMattingMetadata:v7];
  v5 = objc_opt_new();
  v6 = v5;
  if (v4)
  {
    [v5 addObject:v4];
  }

  [v7 timestamp];
  [(ARImageBasedTechnique *)self pushResultData:v6 forTimestamp:?];
  [v7 timestamp];
  kdebug_trace();
}

- (id)_generateMattingMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 originalImageData];
  v6 = [[ARModifiedImageData alloc] initWithImageData:v5];
  -[ARImageData setPixelBuffer:](v6, "setPixelBuffer:", [v4 pixelBuffer]);
  [(ARImageData *)v6 imageResolution];
  v8 = v7;
  v10 = v9;
  [v5 imageResolution];
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
    [v4 timestamp];
    [v5 imageResolution];
    [v5 imageResolution];
    kdebug_trace();
    v29 = [(ARImageScalingTechnique *)self->_mattingImageScalingTechnique processData:v5];
    [v5 timestamp];
    kdebug_trace();
  }

  v30 = [ARMattingImageMetaData alloc];
  [v4 timestamp];
  v32 = -[ARMattingImageMetaData initWithTimestamp:downSampledImageBuffer:mattingScaleImageBuffer:](v30, "initWithTimestamp:downSampledImageBuffer:mattingScaleImageBuffer:", [v4 pixelBuffer], -[ARImageData pixelBuffer](v29, "pixelBuffer"), v31);

  return v32;
}

- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)a3
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ARMLImageMattingMetadataTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke;
  block[3] = &unk_1E817C4E8;
  objc_copyWeak(v7, &location);
  v7[1] = *&a3;
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