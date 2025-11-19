@interface VNHomographicImageRegistrationDetector
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)_calculateHomographicWarpTransform:(id *)a3 ofFloatingImagePixelBuffer:(__CVBuffer *)a4 ontoReferenceImagePixelBuffer:(__CVBuffer *)a5 usingImageRegistrationContext:(ImageRegistrationCtx_s *)a6 seededWithPreviousWarpTransform:(id *)a7 error:(id *)a8;
- (BOOL)_createN:(unint64_t)a3 CVPixelBuffers:(__CVBuffer *)a4 withPixelFormat:(unsigned int)a5 width:(unint64_t)a6 height:(unint64_t)a7 error:(id *)a8;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (__CVBuffer)_createHomographicPixelBufferFromImageBuffer:(id)a3 cropRect:(CGRect)a4 options:(id)a5 error:(id *)a6;
- (id)_validatedImageBufferForKey:(id)a3 inOptions:(id)a4 error:(id *)a5;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNHomographicImageRegistrationDetector

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v30[1] = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = a7;
  v16 = a9;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  Context = ImageRegistrationCreateContext();
  if (!Context)
  {
    if (a8)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"failed to create image registration context"];
      *a8 = v25 = 0;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v18 = [v14 objectForKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImagePixelBufferRef"];
  v19 = [v18 unsignedIntegerValue];

  v20 = [(VNHomographicImageRegistrationDetector *)self _calculateHomographicWarpTransform:&v27 ofFloatingImagePixelBuffer:a4 ontoReferenceImagePixelBuffer:v19 usingImageRegistrationContext:Context seededWithPreviousWarpTransform:0 error:a8];
  ImageRegistrationDestroyContext(Context);
  CVPixelBufferRelease(v19);
  if (!v20)
  {
LABEL_9:
    v25 = 0;
    goto LABEL_16;
  }

  v21 = [VNValidationUtilities originatingRequestSpecifierInOptions:v14 error:a8];
  if (v21)
  {
    v22 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImageRegistrationSignature" inOptions:v14 error:a8];
    if (v22)
    {
      v23 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNHomographicImageRegistrationDetectorProcessOption_FloatingImageRegistrationSignature" inOptions:v14 error:a8];
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

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = [(VNHomographicImageRegistrationDetector *)self _validatedImageBufferForKey:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImageBuffer" inOptions:v16 error:a8];
  if (v17)
  {
    v18 = [(VNHomographicImageRegistrationDetector *)self _validatedImageBufferForKey:@"VNHomographicImageRegistrationDetectorProcessOption_FloatingImageBuffer" inOptions:v16 error:a8];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 width];
      v21 = [v19 height];
      v39.origin.x = x * v20;
      v39.size.width = width * v20;
      v39.origin.y = y * v21;
      v39.size.height = height * v21;
      v40 = CGRectIntegral(v39);
      v22 = v40.origin.x;
      v23 = v40.origin.y;
      v24 = v40.size.width;
      v25 = v40.size.height;
      v37 = y;
      v38 = x;
      v26 = [v17 width];
      v27 = [v17 height];
      v28 = v25 == v27 && v24 == v26;
      if (v28)
      {
        v29 = [(VNHomographicImageRegistrationDetector *)self _createHomographicPixelBufferFromImageBuffer:v19 cropRect:v16 options:a8 error:v22, v23, v24, v25];
        *a7 = v29;
        if (v29)
        {
          v30 = [(VNHomographicImageRegistrationDetector *)self _createHomographicPixelBufferFromImageBuffer:v17 cropRect:v16 options:a8 error:0.0, 0.0, v26, v27];
          if (v30)
          {
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
            [v16 setObject:v31 forKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImagePixelBufferRef"];
LABEL_13:

LABEL_15:
            goto LABEL_16;
          }
        }
      }

      else if (a8)
      {
        v32 = MEMORY[0x1E696AEC0];
        v33 = VNHumanReadableCGRect(v22, v23, v24, v25);
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g, %g, %g, %g]", *&v38, *&v37, *&width, *&height];
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%g x %g", *&v26, *&v27];
        v31 = [v32 stringWithFormat:@"registration of region of interest %@ (%@) cannot be performed on reference image of size %@", v33, v34, v35];

        *a8 = [VNError errorForInvalidOperationWithLocalizedDescription:v31];
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

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = VNHomographicImageRegistrationDetector;
  return [(VNDetector *)&v5 completeInitializationForSession:a3 error:a4];
}

- (BOOL)_calculateHomographicWarpTransform:(id *)a3 ofFloatingImagePixelBuffer:(__CVBuffer *)a4 ontoReferenceImagePixelBuffer:(__CVBuffer *)a5 usingImageRegistrationContext:(ImageRegistrationCtx_s *)a6 seededWithPreviousWarpTransform:(id *)a7 error:(id *)a8
{
  v40 = *MEMORY[0x1E69E9840];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a5, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a5, 0);
  texture = 0;
  v35 = 0;
  if ([(VNHomographicImageRegistrationDetector *)self _createN:2 CVPixelBuffers:&texture withPixelFormat:875704422 width:WidthOfPlane height:HeightOfPlane error:a8])
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    *v36 = a4;
    v31 = 0;
    v17 = ImageRegister(a6, a5, v36, 1u, 1, a7 != 0, v32, 0, &v31, 0, 0, 0, 0, 0, 0, &texture, 2);
    v18 = v17 == 0;
    if (a8 && v17)
    {
      *a8 = [VNError errorForOSStatus:v17 localizedDescription:@"failed to warp image"];
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
      *(a3 + 2) = v42.columns[0].i32[2];
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

      *a3 = v42.columns[0].i64[0];
      *(a3 + 6) = vnegq_f32(*(&v42 + 16)).i32[2];
      *(a3 + 2) = v19;
      *(&v21 + 1) = v42.columns[2].f32[0] - v42.columns[2].f32[1];
      __asm { FMLA            S6, S16, V1.S[2] }

      *(a3 + 10) = _S6;
      *(a3 + 4) = v21;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (__CVBuffer)_createHomographicPixelBufferFromImageBuffer:(id)a3 cropRect:(CGRect)a4 options:(id)a5 error:(id *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  v14 = [v12 croppedBufferWithWidth:objc_msgSend(v12 height:"width") format:objc_msgSend(v12 cropRect:"height") options:875704422 error:{v13, a6, x, y, width, height}];

  return v14;
}

- (BOOL)_createN:(unint64_t)a3 CVPixelBuffers:(__CVBuffer *)a4 withPixelFormat:(unsigned int)a5 width:(unint64_t)a6 height:(unint64_t)a7 error:(id *)a8
{
  v11 = *&a5;
  bzero(a4, 8 * a3);
  if (a3)
  {
    v14 = 0;
    v15 = 0;
    v25 = v11;
    v26 = (v11 >> 8);
    v27 = ((v11 << 8) >> 24);
    v28 = a8;
    v24 = (v11 >> 24);
    while (1)
    {
      v29 = 0;
      v16 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a6 height:a7 pixelFormatType:v11 error:&v29];
      v17 = v29;
      v18 = v17;
      a4[v15] = v16;
      if (!v16)
      {
        break;
      }

      v14 = ++v15 >= a3;
      if (a3 == v15)
      {
        return 1;
      }
    }

    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        CVPixelBufferRelease(a4[i]);
        a4[i] = 0;
      }
    }

    if (v28)
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v21 = [v18 localizedDescription];
      v22 = [v20 initWithFormat:@"failed to create a %lu x %lu pixel buffer of type '%c%c%c%c' with error: %@", a6, a7, v24, v27, v26, v25, v21];

      *v28 = [VNError errorForInternalErrorWithLocalizedDescription:v22 underlyingError:v18];
    }
  }

  else
  {
    return 1;
  }

  return v14;
}

- (id)_validatedImageBufferForKey:(id)a3 inOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:v8 inOptions:v9 error:a5];
  if (v10 && [(VNDetector *)self validateImageBuffer:v10 error:a5])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

@end