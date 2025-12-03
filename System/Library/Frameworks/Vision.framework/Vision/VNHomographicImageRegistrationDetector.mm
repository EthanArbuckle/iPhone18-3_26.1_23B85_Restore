@interface VNHomographicImageRegistrationDetector
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)_calculateHomographicWarpTransform:(id *)transform ofFloatingImagePixelBuffer:(__CVBuffer *)buffer ontoReferenceImagePixelBuffer:(__CVBuffer *)pixelBuffer usingImageRegistrationContext:(ImageRegistrationCtx_s *)context seededWithPreviousWarpTransform:(id *)warpTransform error:(id *)error;
- (BOOL)_createN:(unint64_t)n CVPixelBuffers:(__CVBuffer *)buffers withPixelFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (__CVBuffer)_createHomographicPixelBufferFromImageBuffer:(id)buffer cropRect:(CGRect)rect options:(id)options error:(id *)error;
- (id)_validatedImageBufferForKey:(id)key inOptions:(id)options error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNHomographicImageRegistrationDetector

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v30[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  Context = ImageRegistrationCreateContext();
  if (!Context)
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"failed to create image registration context"];
      *error = v25 = 0;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v18 = [optionsCopy objectForKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImagePixelBufferRef"];
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  v20 = [(VNHomographicImageRegistrationDetector *)self _calculateHomographicWarpTransform:&v27 ofFloatingImagePixelBuffer:buffer ontoReferenceImagePixelBuffer:unsignedIntegerValue usingImageRegistrationContext:Context seededWithPreviousWarpTransform:0 error:error];
  ImageRegistrationDestroyContext(Context);
  CVPixelBufferRelease(unsignedIntegerValue);
  if (!v20)
  {
LABEL_9:
    v25 = 0;
    goto LABEL_16;
  }

  v21 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v21)
  {
    v22 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImageRegistrationSignature" inOptions:optionsCopy error:error];
    if (v22)
    {
      v23 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNHomographicImageRegistrationDetectorProcessOption_FloatingImageRegistrationSignature" inOptions:optionsCopy error:error];
      if (v23)
      {
        v24 = [(VNObservation *)[VNImageHomographicAlignmentObservation alloc] initWithOriginatingRequestSpecifier:v21];
        [(VNImageAlignmentObservation *)v24 setReferenceImageSignature:v22];
        [(VNImageAlignmentObservation *)v24 setFloatingImageSignature:v23];
        [(VNImageHomographicAlignmentObservation *)v24 setWarpTransform:*&v27, *&v28, *&v29];
        v30[0] = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_16:

  return v25;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v17 = [(VNHomographicImageRegistrationDetector *)self _validatedImageBufferForKey:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImageBuffer" inOptions:optionsCopy error:error];
  if (v17)
  {
    v18 = [(VNHomographicImageRegistrationDetector *)self _validatedImageBufferForKey:@"VNHomographicImageRegistrationDetectorProcessOption_FloatingImageBuffer" inOptions:optionsCopy error:error];
    v19 = v18;
    if (v18)
    {
      width = [v18 width];
      height = [v19 height];
      v39.origin.x = x * width;
      v39.size.width = width * width;
      v39.origin.y = y * height;
      v39.size.height = height * height;
      v40 = CGRectIntegral(v39);
      v22 = v40.origin.x;
      v23 = v40.origin.y;
      v24 = v40.size.width;
      v25 = v40.size.height;
      v37 = y;
      v38 = x;
      width2 = [v17 width];
      height2 = [v17 height];
      v28 = v25 == height2 && v24 == width2;
      if (v28)
      {
        v29 = [(VNHomographicImageRegistrationDetector *)self _createHomographicPixelBufferFromImageBuffer:v19 cropRect:optionsCopy options:error error:v22, v23, v24, v25];
        *buffer = v29;
        if (v29)
        {
          v30 = [(VNHomographicImageRegistrationDetector *)self _createHomographicPixelBufferFromImageBuffer:v17 cropRect:optionsCopy options:error error:0.0, 0.0, width2, height2];
          if (v30)
          {
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
            [optionsCopy setObject:v31 forKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImagePixelBufferRef"];
LABEL_13:

LABEL_15:
            goto LABEL_16;
          }
        }
      }

      else if (error)
      {
        v32 = MEMORY[0x1E696AEC0];
        v33 = VNHumanReadableCGRect(v22, v23, v24, v25);
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g, %g, %g, %g]", *&v38, *&v37, *&width, *&height];
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%g x %g", *&width2, *&height2];
        v31 = [v32 stringWithFormat:@"registration of region of interest %@ (%@) cannot be performed on reference image of size %@", v33, v34, v35];

        *error = [VNError errorForInvalidOperationWithLocalizedDescription:v31];
        goto LABEL_13;
      }
    }

    v28 = 0;
    goto LABEL_15;
  }

  v28 = 0;
LABEL_16:

  return v28;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v5.receiver = self;
  v5.super_class = VNHomographicImageRegistrationDetector;
  return [(VNDetector *)&v5 completeInitializationForSession:session error:error];
}

- (BOOL)_calculateHomographicWarpTransform:(id *)transform ofFloatingImagePixelBuffer:(__CVBuffer *)buffer ontoReferenceImagePixelBuffer:(__CVBuffer *)pixelBuffer usingImageRegistrationContext:(ImageRegistrationCtx_s *)context seededWithPreviousWarpTransform:(id *)warpTransform error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  texture = 0;
  v35 = 0;
  if ([(VNHomographicImageRegistrationDetector *)self _createN:2 CVPixelBuffers:&texture withPixelFormat:875704422 width:WidthOfPlane height:HeightOfPlane error:error])
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    *v36 = buffer;
    v31 = 0;
    v17 = ImageRegister(context, pixelBuffer, v36, 1u, 1, warpTransform != 0, v32, 0, &v31, 0, 0, 0, 0, 0, 0, &texture, 2);
    v18 = v17 == 0;
    if (error && v17)
    {
      *error = [VNError errorForOSStatus:v17 localizedDescription:@"failed to warp image"];
    }

    CVPixelBufferRelease(texture);
    CVPixelBufferRelease(v35);
    if (v18)
    {
      GeomTransform_fromUnityToImageSize(v36, v32, WidthOfPlane - 1, HeightOfPlane - 1, 1);
      v41.columns[0] = *v36;
      v41.columns[2] = *&v36[8];
      v41.columns[0].i32[1] = *&v36[12];
      v41.columns[0].i32[2] = v37;
      v41.columns[1] = *&v36[4];
      v41.columns[1].i32[1] = *&v36[16];
      v41.columns[1].i32[2] = v38;
      v41.columns[2].i32[1] = *&v36[20];
      v41.columns[2].i32[2] = v39;
      v42 = __invert_f3(v41);
      *(transform + 2) = v42.columns[0].i32[2];
      *&v19 = -v42.columns[1].f32[0];
      _S16 = HeightOfPlane;
      *&v21 = v42.columns[2].f32[0] + (HeightOfPlane * v42.columns[1].f32[0]);
      __asm { FMLA            S3, S16, V0.S[2] }

      v42.columns[0].i32[1] = _S3;
      __asm { FMLS            S4, S16, V1.S[2] }

      HIDWORD(v19) = _S4;
      _S3 = (HeightOfPlane * HeightOfPlane);
      __asm
      {
        FMLA            S2, S3, V1.S[2]
        FMLS            S2, S16, V1.S[1]
      }

      *transform = v42.columns[0].i64[0];
      *(transform + 6) = vnegq_f32(*(&v42 + 16)).i32[2];
      *(transform + 2) = v19;
      *(&v21 + 1) = v42.columns[2].f32[0] - v42.columns[2].f32[1];
      __asm { FMLA            S6, S16, V1.S[2] }

      *(transform + 10) = _S6;
      *(transform + 4) = v21;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (__CVBuffer)_createHomographicPixelBufferFromImageBuffer:(id)buffer cropRect:(CGRect)rect options:(id)options error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bufferCopy = buffer;
  optionsCopy = options;
  v14 = [bufferCopy croppedBufferWithWidth:objc_msgSend(bufferCopy height:"width") format:objc_msgSend(bufferCopy cropRect:"height") options:875704422 error:{optionsCopy, error, x, y, width, height}];

  return v14;
}

- (BOOL)_createN:(unint64_t)n CVPixelBuffers:(__CVBuffer *)buffers withPixelFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height error:(id *)error
{
  v11 = *&format;
  bzero(buffers, 8 * n);
  if (n)
  {
    v14 = 0;
    v15 = 0;
    v25 = v11;
    v26 = (v11 >> 8);
    v27 = ((v11 << 8) >> 24);
    errorCopy = error;
    v24 = (v11 >> 24);
    while (1)
    {
      v29 = 0;
      v16 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:v11 error:&v29];
      v17 = v29;
      v18 = v17;
      buffers[v15] = v16;
      if (!v16)
      {
        break;
      }

      v14 = ++v15 >= n;
      if (n == v15)
      {
        return 1;
      }
    }

    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        CVPixelBufferRelease(buffers[i]);
        buffers[i] = 0;
      }
    }

    if (errorCopy)
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      localizedDescription = [v18 localizedDescription];
      v22 = [v20 initWithFormat:@"failed to create a %lu x %lu pixel buffer of type '%c%c%c%c' with error: %@", width, height, v24, v27, v26, v25, localizedDescription];

      *errorCopy = [VNError errorForInternalErrorWithLocalizedDescription:v22 underlyingError:v18];
    }
  }

  else
  {
    return 1;
  }

  return v14;
}

- (id)_validatedImageBufferForKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v10 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:keyCopy inOptions:optionsCopy error:error];
  if (v10 && [(VNDetector *)self validateImageBuffer:v10 error:error])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

@end