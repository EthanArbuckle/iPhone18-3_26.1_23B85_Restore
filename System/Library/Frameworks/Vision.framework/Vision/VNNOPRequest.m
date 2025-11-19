@interface VNNOPRequest
- (BOOL)_performNOPForRevision:(unint64_t)a3 inContext:(id)a4 detectorCompletionSemaphore:(id)a5 error:(id *)a6;
- (BOOL)detectorWantsAnisotropicScaling;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (CGSize)_actualSizeForDesiredSize:(id)a3 ofSourceImageWidth:(unint64_t)a4 height:(unint64_t)a5;
- (VNSupportedImageSize)detectorPreferredImageSize;
- (__CVBuffer)_createScaledImagePixelBufferFromCropRect:(CGRect)a3 ofImageBuffer:(id)a4 inPixelFormat:(unsigned int)a5 forDetectorInputImageSize:(CGSize)a6 usingAnisotropicScaling:(BOOL)a7 error:(id *)a8;
- (__CVBuffer)_createScaledImagePixelBufferFromImageBuffer:(id)a3 inPixelFormat:(unsigned int)a4 forDetectorInputImageSize:(CGSize)a5 usingAnisotropicScaling:(BOOL)a6 error:(id *)a7;
- (double)detectorExecutionTimeInterval;
- (id)supportedComputeStageDevicesAndReturnError:(id *)a3;
- (id)supportedImageSizeSet;
- (void)setDetectorExecutionTimeInterval:(double)a3;
- (void)setDetectorPreferredImageSize:(id)a3;
- (void)setDetectorWantsAnisotropicScaling:(BOOL)a3;
@end

@implementation VNNOPRequest

- (id)supportedImageSizeSet
{
  v3 = objc_alloc(MEMORY[0x1E695DEC8]);
  v4 = [(VNNOPRequest *)self detectorPreferredImageSize];
  v5 = [v3 initWithObjects:{v4, 0}];

  return v5;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(VNRequest *)self cancellerAndReturnError:a5];
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
    v22 = a3;
    v18 = v8;
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

      if (a5)
      {
        v13 = v28[5];
        goto LABEL_10;
      }
    }

    else if (a5)
    {
      v13 = [VNError errorForCancellationOfRequest:self];
LABEL_10:
      v12 = 0;
      *a5 = v13;
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

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  [v4 detectorExecutionTimeInterval];
  if (v5 <= 0.0)
  {
    v8.receiver = self;
    v8.super_class = VNNOPRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"VNComputeStageMain";
  v3 = +[VNComputeDeviceUtilities allCPUComputeDevices];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)setDetectorExecutionTimeInterval:(double)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setDetectorExecutionTimeInterval:a3];
}

- (double)detectorExecutionTimeInterval
{
  v2 = [(VNRequest *)self configuration];
  [v2 detectorExecutionTimeInterval];
  v4 = v3;

  return v4;
}

- (void)setDetectorWantsAnisotropicScaling:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setDetectorWantsAnisotropicScaling:v3];
}

- (BOOL)detectorWantsAnisotropicScaling
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 detectorWantsAnisotropicScaling];

  return v3;
}

- (void)setDetectorPreferredImageSize:(id)a3
{
  v4 = a3;
  v5 = [(VNRequest *)self configuration];
  [v5 setDetectorPreferredImageSize:v4];
}

- (VNSupportedImageSize)detectorPreferredImageSize
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 detectorPreferredImageSize];

  return v3;
}

- (BOOL)_performNOPForRevision:(unint64_t)a3 inContext:(id)a4 detectorCompletionSemaphore:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  if ([(VNRequest *)self cancellationTriggeredAndReturnError:a6])
  {
    v11 = 0;
  }

  else
  {
    v12 = [v9 imageBufferAndReturnError:a6];
    if (v12 && (v28 = 0, v29 = 0, [(VNRequest *)self validateImageBuffer:v12 ofNonZeroWidth:&v29 andHeight:&v28 error:a6]))
    {
      v13 = [(VNNOPRequest *)self detectorPreferredImageSize];
      [(VNNOPRequest *)self _actualSizeForDesiredSize:v13 ofSourceImageWidth:v29 height:v28];
      v16 = v15;
      v17 = v14;
      if (v15 == *MEMORY[0x1E695F060] && v14 == *(MEMORY[0x1E695F060] + 8))
      {
        if (a6)
        {
          [VNError errorForInvalidOperationWithLocalizedDescription:@"unable to determine preferred image size for detection"];
          *a6 = v11 = 0;
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
          v23 = -[VNNOPRequest _createScaledImagePixelBufferFromImageBuffer:inPixelFormat:forDetectorInputImageSize:usingAnisotropicScaling:error:](self, "_createScaledImagePixelBufferFromImageBuffer:inPixelFormat:forDetectorInputImageSize:usingAnisotropicScaling:error:", v12, [v13 idealImageFormat], -[VNNOPRequest detectorWantsAnisotropicScaling](self, "detectorWantsAnisotropicScaling"), a6, v16, v17);
        }

        else
        {
          v23 = -[VNNOPRequest _createScaledImagePixelBufferFromCropRect:ofImageBuffer:inPixelFormat:forDetectorInputImageSize:usingAnisotropicScaling:error:](self, "_createScaledImagePixelBufferFromCropRect:ofImageBuffer:inPixelFormat:forDetectorInputImageSize:usingAnisotropicScaling:error:", v12, [v13 idealImageFormat], -[VNNOPRequest detectorWantsAnisotropicScaling](self, "detectorWantsAnisotropicScaling"), a6, x * v29, y * v28, width * v29, height * v28, v16, v17);
        }

        v24 = v23;
        v11 = 0;
        if (v23)
        {
          [(VNNOPRequest *)self detectorExecutionTimeInterval];
          if (v25 <= 0.0 || (v26 = dispatch_time(0, (v25 * 1000000000.0)), dispatch_semaphore_wait(v10, v26), ![(VNRequest *)self cancellationTriggeredAndReturnError:a6]))
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

- (__CVBuffer)_createScaledImagePixelBufferFromImageBuffer:(id)a3 inPixelFormat:(unsigned int)a4 forDetectorInputImageSize:(CGSize)a5 usingAnisotropicScaling:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  height = a5.height;
  width = a5.width;
  v11 = *&a4;
  v12 = a3;
  v13 = [v12 width];
  v14 = [v12 height];
  if (v8)
  {
    v23 = 0;
    v15 = [v12 bufferWithWidth:width height:height format:v11 options:0 error:&v23];
    v16 = v23;
    if (a7 && !v15)
    {
      v17 = @"Failed to scale the input image";
LABEL_14:
      [VNError errorWithCode:9 message:v17 underlyingError:v16];
      *a7 = v15 = 0;
    }
  }

  else
  {
    v18 = (v14 - v13) * 0.5 + 0.0;
    if (v13 < v14)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = (v13 - v14) * 0.5 + 0.0;
    }

    if (v13 < v14)
    {
      v20 = v13;
    }

    else
    {
      v18 = 0.0;
      v20 = v14;
    }

    v22 = 0;
    v15 = [v12 croppedBufferWithWidth:width height:height format:v11 cropRect:0 options:&v22 error:{trunc(v19), trunc(v18), v20, v20}];
    v16 = v22;
    if (a7 && !v15)
    {
      v17 = @"Failed to center square crop the input image";
      goto LABEL_14;
    }
  }

  return v15;
}

- (__CVBuffer)_createScaledImagePixelBufferFromCropRect:(CGRect)a3 ofImageBuffer:(id)a4 inPixelFormat:(unsigned int)a5 forDetectorInputImageSize:(CGSize)a6 usingAnisotropicScaling:(BOOL)a7 error:(id *)a8
{
  height = a6.height;
  width = a6.width;
  v11 = *&a5;
  v12 = a3.size.height;
  v13 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a7)
  {
    v27 = 0;
    v16 = a4;
    v17 = [v16 croppedBufferWithWidth:width height:height format:v11 cropRect:0 options:&v27 error:{x, y, v13, v12}];

    v18 = v27;
    if (a8 && !v17)
    {
      v19 = @"Failed to scale the input image";
LABEL_14:
      [VNError errorWithCode:9 message:v19 underlyingError:v18];
      *a8 = v17 = 0;
    }
  }

  else
  {
    v20 = a4;
    v21 = v20;
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
    v17 = [v20 croppedBufferWithWidth:width height:height format:v11 cropRect:0 options:&v26 error:{trunc(v22), trunc(v23), v24, v24}];

    v18 = v26;
    if (a8 && !v17)
    {
      v19 = @"Failed to center square crop the input image";
      goto LABEL_14;
    }
  }

  return v17;
}

- (CGSize)_actualSizeForDesiredSize:(id)a3 ofSourceImageWidth:(unint64_t)a4 height:(unint64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (!v7 || [v7 isAllowedPixelsWide:a4 pixelsHigh:a5])
  {
    v9 = a4;
    v10 = a5;
    goto LABEL_4;
  }

  v13 = [v8 aspectRatioHandling];
  if (v13 == 2)
  {
    v16 = [v8 pixelsWideRange];
    if (a4 < a5)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v13 == 1)
  {
    v16 = [v8 pixelsWideRange];
    if (a4 > a5)
    {
LABEL_10:
      v17 = _bestDimensionForSizeRange(v16, a5);

      v18 = a5;
      v19 = v17 / a5;
      v9 = trunc(v19 * a4);
LABEL_13:
      v10 = trunc(v19 * v18);
      goto LABEL_4;
    }

LABEL_12:
    v20 = _bestDimensionForSizeRange(v16, a4);

    v19 = v20 / a4;
    v9 = trunc(v19 * a4);
    v18 = a5;
    goto LABEL_13;
  }

  if (v13)
  {
    v9 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v14 = [v8 pixelsWideRange];
    v9 = _bestDimensionForSizeRange(v14, a4);
    v15 = [v8 pixelsHighRange];
    v10 = _bestDimensionForSizeRange(v15, a5);
  }

LABEL_4:

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end