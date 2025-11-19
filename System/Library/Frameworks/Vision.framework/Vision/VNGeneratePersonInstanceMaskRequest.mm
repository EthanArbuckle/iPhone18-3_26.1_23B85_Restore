@interface VNGeneratePersonInstanceMaskRequest
+ (unint64_t)applicableRevisionForDependentRequestOfClass:(Class)a3 beingPerformedByRevision:(unint64_t)a4;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)warmUpSession:(id)a3 error:(id *)a4;
- (__CVBuffer)_createInstanceMaskFromMaskArray:(id)a3 error:(id *)a4;
- (id)_newConfiguredDependentRequestForRevision:(unint64_t)a3 error:(id *)a4;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)supportedComputeStageDevicesAndReturnError:(id *)a3;
- (id)supportedImageSizeSet;
@end

@implementation VNGeneratePersonInstanceMaskRequest

- (id)supportedImageSizeSet
{
  if ([(VNRequest *)self resolvedRevision]== 1)
  {
    v3 = [(VNGeneratePersonInstanceMaskRequest *)self _newConfiguredDependentRequestForRevision:[(VNRequest *)self revision] error:0];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 supportedImageSizeSet];
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VNGeneratePersonInstanceMaskRequest;
    v5 = [(VNImageBasedRequest *)&v7 supportedImageSizeSet];
  }

  return v5;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(VNGeneratePersonInstanceMaskRequest *)self _newConfiguredDependentRequestForRevision:a3 error:a5];
  if (v9)
  {
    v10 = [v8 requestPerformerAndReturnError:a5];
    if (!v10 || (v32[0] = v9, [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "performDependentRequests:onBehalfOfRequest:inContext:error:", v11, self, v8, a5), v11, !v12))
    {
      v29 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [v9 results];
    v15 = [v14 count];

    if (v15)
    {
      v31 = v13;
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = 0;
      v18 = 1.0;
      do
      {
        v19 = [v9 results];
        v20 = [v19 objectAtIndexedSubscript:v17];

        [v16 addObject:{objc_msgSend(v20, "pixelBuffer")}];
        [v20 confidence];
        if (v21 < v18)
        {
          [v20 confidence];
          v18 = v22;
        }

        ++v17;
      }

      while (v15 != v17);
      v23 = [(VNGeneratePersonInstanceMaskRequest *)self _createInstanceMaskFromMaskArray:v16 error:a5];
      if (!v23)
      {

        v29 = 0;
        v13 = v31;
        goto LABEL_15;
      }

      v24 = v23;
      v25 = [VNInstanceMaskObservation alloc];
      v26 = [(VNRequest *)self specifier];
      [(VNImageBasedRequest *)self regionOfInterest];
      v27 = [(VNInstanceMaskObservation *)v25 initWithOriginatingRequestSpecifier:v26 instanceLowResMaskArray:v16 instanceMask:v24 numComponents:v15 + 1 regionOfInterest:?];

      CVPixelBufferRelease(v24);
      *&v28 = v18;
      [(VNObservation *)v27 setConfidence:v28];
      v13 = v31;
      [v31 addObject:v27];
    }

    [(VNRequest *)self setResults:v13];
    v29 = 1;
LABEL_15:

    goto LABEL_16;
  }

  v29 = 0;
LABEL_17:

  return v29;
}

- (__CVBuffer)_createInstanceMaskFromMaskArray:(id)a3 error:(id *)a4
{
  v5 = a3;
  pixelBuffer = 0;
  texture = 0;
  v6 = [v5 objectAtIndexedSubscript:0];

  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v6);
  v10 = [v5 count];
  v11 = VNCVPixelBufferCreateUsingIOSurface(Width, Height, 0x4C303038u, 0, &texture);
  if (v11)
  {
    v18 = v11;
    VNValidatedLog(4, @"Failed to create instance mask", v12, v13, v14, v15, v16, v17, pixelBuffer);
    if (a4)
    {
      v19 = @"Can't create the instance mask";
      v20 = v18;
LABEL_7:
      [VNError errorForCVReturnCode:v20 width:Width height:Height pixelFormat:1278226488 localizedDescription:v19];
      *a4 = v23 = 0;
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
  v22 = VNCVPixelBufferCreateUsingIOSurface(Width, Height, PixelFormatType, 0, &pixelBuffer);
  if (v22)
  {
    CVPixelBufferRelease(texture);
    if (a4)
    {
      v19 = @"Can't create internal temporary buffer";
      v20 = v22;
      goto LABEL_7;
    }

LABEL_8:
    v23 = 0;
    goto LABEL_21;
  }

  v24 = CVPixelBufferGetBytesPerRow(texture);
  CVPixelBufferLockBaseAddress(texture, 0);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(texture);
  bzero(BaseAddress, v24 * Height);
  v26 = CVPixelBufferGetBaseAddress(pixelBuffer);
  bzero(v26, BytesPerRow * Height);
  v27 = 0;
  while (v27 != v10)
  {
    v28 = [v5 objectAtIndexedSubscript:v27];

    CVPixelBufferLockBaseAddress(v28, 0);
    v29 = CVPixelBufferGetBaseAddress(v28);
    ++v27;
    if (Height)
    {
      for (i = 0; i != Height; ++i)
      {
        if (Width)
        {
          v31 = &BaseAddress[i * v24];
          v32 = &v26[i * BytesPerRow];
          v33 = &v29[i * BytesPerRow];
          v34 = Width;
          do
          {
            if (*v33 > *v32)
            {
              *v32 = *v33;
              *v31 = v27;
            }

            ++v33;
            ++v32;
            ++v31;
            --v34;
          }

          while (v34);
        }
      }
    }

    CVPixelBufferUnlockBaseAddress(v28, 0);
  }

  CVPixelBufferUnlockBaseAddress(texture, 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CVPixelBufferRelease(pixelBuffer);
  v23 = texture;
LABEL_21:

  return v23;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)a3
{
  v4 = [(VNGeneratePersonInstanceMaskRequest *)self _newConfiguredDependentRequestForRevision:[(VNRequest *)self resolvedRevision] error:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 supportedComputeStageDevicesAndReturnError:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)warmUpSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = VNGeneratePersonInstanceMaskRequest;
  if ([(VNRequest *)&v11 warmUpSession:v6 error:a4])
  {
    v7 = [(VNGeneratePersonInstanceMaskRequest *)self _newConfiguredDependentRequestForRevision:[(VNRequest *)self resolvedRevision] error:a4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 warmUpSession:v6 error:a4];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = &stru_1F1976900;
    v5 = &stru_1F1976900;
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_newConfiguredDependentRequestForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 != 1)
  {
    v7 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (!v7)
    {
      *a4 = [VNError errorForUnsupportedRevision:a3 ofRequest:self];
    }

    goto LABEL_8;
  }

  v7 = objc_alloc_init(VNGeneratePersonSegmentationRequest);
  [(VNGeneratePersonSegmentationRequest *)v7 applyConfigurationOfRequest:self];
  if (![(VNRequest *)v7 setRevision:3737841664 error:a4])
  {
    v8 = 0;
    goto LABEL_10;
  }

  [(VNGeneratePersonSegmentationRequest *)v7 setQualityLevel:1];
  [(VNGeneratePersonSegmentationRequest *)v7 setOutputPixelFormat:1278226534];
  [(VNGeneratePersonSegmentationRequest *)v7 setUseTiling:1];
  if (a4)
  {
    goto LABEL_6;
  }

LABEL_8:
  v7 = v7;
  v8 = v7;
LABEL_10:

  return v8;
}

+ (unint64_t)applicableRevisionForDependentRequestOfClass:(Class)a3 beingPerformedByRevision:(unint64_t)a4
{
  if ([(objc_class *)a3 isEqual:objc_opt_class()])
  {
    return 3737841664;
  }

  else
  {
    return 0;
  }
}

@end