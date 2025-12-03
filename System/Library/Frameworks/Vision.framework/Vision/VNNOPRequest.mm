@interface VNNOPRequest
- (BOOL)_performNOPForRevision:(unint64_t)revision inContext:(id)context detectorCompletionSemaphore:(id)semaphore error:(id *)error;
- (BOOL)detectorWantsAnisotropicScaling;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (CGSize)_actualSizeForDesiredSize:(id)size ofSourceImageWidth:(unint64_t)width height:(unint64_t)height;
- (VNSupportedImageSize)detectorPreferredImageSize;
- (__CVBuffer)_createScaledImagePixelBufferFromCropRect:(CGRect)rect ofImageBuffer:(id)buffer inPixelFormat:(unsigned int)format forDetectorInputImageSize:(CGSize)size usingAnisotropicScaling:(BOOL)scaling error:(id *)error;
- (__CVBuffer)_createScaledImagePixelBufferFromImageBuffer:(id)buffer inPixelFormat:(unsigned int)format forDetectorInputImageSize:(CGSize)size usingAnisotropicScaling:(BOOL)scaling error:(id *)error;
- (double)detectorExecutionTimeInterval;
- (id)supportedComputeStageDevicesAndReturnError:(id *)error;
- (id)supportedImageSizeSet;
- (void)setDetectorExecutionTimeInterval:(double)interval;
- (void)setDetectorPreferredImageSize:(id)size;
- (void)setDetectorWantsAnisotropicScaling:(BOOL)scaling;
@end

@implementation VNNOPRequest

- (id)supportedImageSizeSet
{
  v3 = objc_alloc(MEMORY[0x1E695DEC8]);
  detectorPreferredImageSize = [(VNNOPRequest *)self detectorPreferredImageSize];
  v5 = [v3 initWithObjects:{detectorPreferredImageSize, 0}];

  return v5;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [(VNRequest *)self cancellerAndReturnError:error];
  if (v9)
  {
    v10 = dispatch_semaphore_create(0);
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__13883;
    v31 = __Block_byref_object_dispose__13884;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__VNNOPRequest_internalPerformRevision_inContext_error___block_invoke;
    v17[3] = &unk_1E77B3BB8;
    v20 = &v23;
    v17[4] = self;
    revisionCopy = revision;
    v18 = contextCopy;
    v19 = v10;
    v21 = &v27;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__VNNOPRequest_internalPerformRevision_inContext_error___block_invoke_2;
    v15[3] = &unk_1E77B3BE0;
    v11 = v19;
    v16 = v11;
    if ([v9 tryToPerformBlock:v17 usingSignallingBlock:v15])
    {
      if (v24[3])
      {
        v12 = 1;
LABEL_12:

        _Block_object_dispose(&v23, 8);
        _Block_object_dispose(&v27, 8);

        goto LABEL_13;
      }

      if (error)
      {
        v13 = v28[5];
        goto LABEL_10;
      }
    }

    else if (error)
    {
      v13 = [VNError errorForCancellationOfRequest:self];
LABEL_10:
      v12 = 0;
      *error = v13;
      goto LABEL_12;
    }

    v12 = 0;
    goto LABEL_12;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

void __56__VNNOPRequest_internalPerformRevision_inContext_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v2 _performNOPForRevision:v5 inContext:v3 detectorCompletionSemaphore:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy detectorExecutionTimeInterval];
  if (v5 <= 0.0)
  {
    v8.receiver = self;
    v8.super_class = VNNOPRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)error
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"VNComputeStageMain";
  v3 = +[VNComputeDeviceUtilities allCPUComputeDevices];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)setDetectorExecutionTimeInterval:(double)interval
{
  configuration = [(VNRequest *)self configuration];
  [configuration setDetectorExecutionTimeInterval:interval];
}

- (double)detectorExecutionTimeInterval
{
  configuration = [(VNRequest *)self configuration];
  [configuration detectorExecutionTimeInterval];
  v4 = v3;

  return v4;
}

- (void)setDetectorWantsAnisotropicScaling:(BOOL)scaling
{
  scalingCopy = scaling;
  configuration = [(VNRequest *)self configuration];
  [configuration setDetectorWantsAnisotropicScaling:scalingCopy];
}

- (BOOL)detectorWantsAnisotropicScaling
{
  configuration = [(VNRequest *)self configuration];
  detectorWantsAnisotropicScaling = [configuration detectorWantsAnisotropicScaling];

  return detectorWantsAnisotropicScaling;
}

- (void)setDetectorPreferredImageSize:(id)size
{
  sizeCopy = size;
  configuration = [(VNRequest *)self configuration];
  [configuration setDetectorPreferredImageSize:sizeCopy];
}

- (VNSupportedImageSize)detectorPreferredImageSize
{
  configuration = [(VNRequest *)self configuration];
  detectorPreferredImageSize = [configuration detectorPreferredImageSize];

  return detectorPreferredImageSize;
}

- (BOOL)_performNOPForRevision:(unint64_t)revision inContext:(id)context detectorCompletionSemaphore:(id)semaphore error:(id *)error
{
  contextCopy = context;
  semaphoreCopy = semaphore;
  if ([(VNRequest *)self cancellationTriggeredAndReturnError:error])
  {
    v11 = 0;
  }

  else
  {
    v12 = [contextCopy imageBufferAndReturnError:error];
    if (v12 && (v28 = 0, v29 = 0, [(VNRequest *)self validateImageBuffer:v12 ofNonZeroWidth:&v29 andHeight:&v28 error:error]))
    {
      detectorPreferredImageSize = [(VNNOPRequest *)self detectorPreferredImageSize];
      [(VNNOPRequest *)self _actualSizeForDesiredSize:detectorPreferredImageSize ofSourceImageWidth:v29 height:v28];
      v16 = v15;
      v17 = v14;
      if (v15 == *MEMORY[0x1E695F060] && v14 == *(MEMORY[0x1E695F060] + 8))
      {
        if (error)
        {
          [VNError errorForInvalidOperationWithLocalizedDescription:@"unable to determine preferred image size for detection"];
          *error = v11 = 0;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        [(VNImageBasedRequest *)self regionOfInterest];
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        v31.origin.x = 0.0;
        v31.origin.y = 0.0;
        v31.size.width = 1.0;
        v31.size.height = 1.0;
        if (CGRectEqualToRect(v30, v31))
        {
          v23 = -[VNNOPRequest _createScaledImagePixelBufferFromImageBuffer:inPixelFormat:forDetectorInputImageSize:usingAnisotropicScaling:error:](self, "_createScaledImagePixelBufferFromImageBuffer:inPixelFormat:forDetectorInputImageSize:usingAnisotropicScaling:error:", v12, [detectorPreferredImageSize idealImageFormat], -[VNNOPRequest detectorWantsAnisotropicScaling](self, "detectorWantsAnisotropicScaling"), error, v16, v17);
        }

        else
        {
          v23 = -[VNNOPRequest _createScaledImagePixelBufferFromCropRect:ofImageBuffer:inPixelFormat:forDetectorInputImageSize:usingAnisotropicScaling:error:](self, "_createScaledImagePixelBufferFromCropRect:ofImageBuffer:inPixelFormat:forDetectorInputImageSize:usingAnisotropicScaling:error:", v12, [detectorPreferredImageSize idealImageFormat], -[VNNOPRequest detectorWantsAnisotropicScaling](self, "detectorWantsAnisotropicScaling"), error, x * v29, y * v28, width * v29, height * v28, v16, v17);
        }

        v24 = v23;
        v11 = 0;
        if (v23)
        {
          [(VNNOPRequest *)self detectorExecutionTimeInterval];
          if (v25 <= 0.0 || (v26 = dispatch_time(0, (v25 * 1000000000.0)), dispatch_semaphore_wait(semaphoreCopy, v26), ![(VNRequest *)self cancellationTriggeredAndReturnError:error]))
          {
            v11 = 1;
          }
        }

        CVPixelBufferRelease(v24);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (__CVBuffer)_createScaledImagePixelBufferFromImageBuffer:(id)buffer inPixelFormat:(unsigned int)format forDetectorInputImageSize:(CGSize)size usingAnisotropicScaling:(BOOL)scaling error:(id *)error
{
  scalingCopy = scaling;
  height = size.height;
  width = size.width;
  v11 = *&format;
  bufferCopy = buffer;
  width = [bufferCopy width];
  height = [bufferCopy height];
  if (scalingCopy)
  {
    v23 = 0;
    v15 = [bufferCopy bufferWithWidth:width height:height format:v11 options:0 error:&v23];
    v16 = v23;
    if (error && !v15)
    {
      v17 = @"Failed to scale the input image";
LABEL_14:
      [VNError errorWithCode:9 message:v17 underlyingError:v16];
      *error = v15 = 0;
    }
  }

  else
  {
    v18 = (height - width) * 0.5 + 0.0;
    if (width < height)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = (width - height) * 0.5 + 0.0;
    }

    if (width < height)
    {
      v20 = width;
    }

    else
    {
      v18 = 0.0;
      v20 = height;
    }

    v22 = 0;
    v15 = [bufferCopy croppedBufferWithWidth:width height:height format:v11 cropRect:0 options:&v22 error:{trunc(v19), trunc(v18), v20, v20}];
    v16 = v22;
    if (error && !v15)
    {
      v17 = @"Failed to center square crop the input image";
      goto LABEL_14;
    }
  }

  return v15;
}

- (__CVBuffer)_createScaledImagePixelBufferFromCropRect:(CGRect)rect ofImageBuffer:(id)buffer inPixelFormat:(unsigned int)format forDetectorInputImageSize:(CGSize)size usingAnisotropicScaling:(BOOL)scaling error:(id *)error
{
  height = size.height;
  width = size.width;
  v11 = *&format;
  v12 = rect.size.height;
  v13 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (scaling)
  {
    v27 = 0;
    bufferCopy = buffer;
    v17 = [bufferCopy croppedBufferWithWidth:width height:height format:v11 cropRect:0 options:&v27 error:{x, y, v13, v12}];

    v18 = v27;
    if (error && !v17)
    {
      v19 = @"Failed to scale the input image";
LABEL_14:
      [VNError errorWithCode:9 message:v19 underlyingError:v18];
      *error = v17 = 0;
    }
  }

  else
  {
    bufferCopy2 = buffer;
    v21 = bufferCopy2;
    v22 = x + (v13 - v12) * 0.5;
    v23 = y + (v12 - v13) * 0.5;
    if (v13 >= v12)
    {
      v23 = y;
    }

    else
    {
      v22 = x;
    }

    if (v13 < v12)
    {
      v24 = v13;
    }

    else
    {
      v24 = v12;
    }

    v26 = 0;
    v17 = [bufferCopy2 croppedBufferWithWidth:width height:height format:v11 cropRect:0 options:&v26 error:{trunc(v22), trunc(v23), v24, v24}];

    v18 = v26;
    if (error && !v17)
    {
      v19 = @"Failed to center square crop the input image";
      goto LABEL_14;
    }
  }

  return v17;
}

- (CGSize)_actualSizeForDesiredSize:(id)size ofSourceImageWidth:(unint64_t)width height:(unint64_t)height
{
  sizeCopy = size;
  v8 = sizeCopy;
  if (!sizeCopy || [sizeCopy isAllowedPixelsWide:width pixelsHigh:height])
  {
    widthCopy = width;
    heightCopy = height;
    goto LABEL_4;
  }

  aspectRatioHandling = [v8 aspectRatioHandling];
  if (aspectRatioHandling == 2)
  {
    pixelsWideRange = [v8 pixelsWideRange];
    if (width < height)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (aspectRatioHandling == 1)
  {
    pixelsWideRange = [v8 pixelsWideRange];
    if (width > height)
    {
LABEL_10:
      v17 = _bestDimensionForSizeRange(pixelsWideRange, height);

      heightCopy3 = height;
      v19 = v17 / height;
      widthCopy = trunc(v19 * width);
LABEL_13:
      heightCopy = trunc(v19 * heightCopy3);
      goto LABEL_4;
    }

LABEL_12:
    v20 = _bestDimensionForSizeRange(pixelsWideRange, width);

    v19 = v20 / width;
    widthCopy = trunc(v19 * width);
    heightCopy3 = height;
    goto LABEL_13;
  }

  if (aspectRatioHandling)
  {
    widthCopy = *MEMORY[0x1E695F060];
    heightCopy = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    pixelsWideRange2 = [v8 pixelsWideRange];
    widthCopy = _bestDimensionForSizeRange(pixelsWideRange2, width);
    pixelsHighRange = [v8 pixelsHighRange];
    heightCopy = _bestDimensionForSizeRange(pixelsHighRange, height);
  }

LABEL_4:

  v11 = widthCopy;
  v12 = heightCopy;
  result.height = v12;
  result.width = v11;
  return result;
}

@end