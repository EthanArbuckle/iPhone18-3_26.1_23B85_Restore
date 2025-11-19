@interface VNMetalContext
+ (void)metalContextForDevice:(void *)a3 error:;
- (BOOL)upsampleTextures:(void *)a3 referenceTexture:(void *)a4 constraintsTextures:(void *)a5 upsampledTextures:(void *)a6 filter:(int)a7 waitForCompletion:(void *)a8 error:;
- (id)bindIOSurfaceToMTL2DTexture:(uint64_t)a1 pixelFormat:(uint64_t)a2 width:(uint64_t)a3 height:(uint64_t)a4 plane:(uint64_t)a5 error:(void *)a6;
- (id)bindPixelBufferToMTL2DTexture:(uint64_t)a3 pixelFormat:(void *)a4 textureSize:(double)a5 plane:(double)a6 error:;
- (id)bindPixelBufferToMTL2DTexture:(void *)a1 pixelFormat:(CVPixelBufferRef)pixelBuffer plane:(uint64_t)a3 error:(void *)a4;
- (id)bindPixelBufferToMTL2DTexture:(void *)a3 error:;
- (id)bindPixelBuffersToTextures:(void *)a3 error:;
- (id)commandQueueReturnError:(uint64_t)a1;
- (id)computePipelineStateForFunctionWithName:(uint64_t)a3 error:;
- (id)libraryReturnError:(uint64_t)a1;
- (void)createGuidedFilterForTextures:(void *)a3 referenceTexture:(void *)a4 error:;
- (void)encodeCommandsForBuffer:(void *)a3 state:(uint64_t)a4 label:(uint64_t)a5 width:(void *)a6 height:(void *)a7 textures:buffers:block:;
@end

@implementation VNMetalContext

+ (void)metalContextForDevice:(void *)a3 error:
{
  v4 = a2;
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MTLCreateSystemDefaultDevice();
    if (!v6)
    {
      if (a3)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create MTLDevice"];
        *a3 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_13;
    }
  }

  v7 = +[VNFrameworkManager manager];
  v8 = [v7 wisdomParameterForMTLDevice:v6 error:0];

  v9 = [v5 alloc];
  v10 = v6;
  v11 = v8;
  if (v9 && (v18.receiver = v9, v18.super_class = VNMetalContext, v12 = objc_msgSendSuper2(&v18, sel_init), (v13 = v12) != 0))
  {
    *(v12 + 4) = 0;
    objc_storeStrong(v12 + 1, v6);
    v14 = [v11 copy];
    v15 = v13[5];
    v13[5] = v14;

    v16 = v13;
  }

  else
  {

    if (a3)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a3 = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

LABEL_13:

  return v16;
}

- (id)commandQueueReturnError:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    v4 = *(a1 + 24);
    if (!v4)
    {
      v5 = [*(a1 + 8) newCommandQueue];
      v6 = *(a1 + 24);
      *(a1 + 24) = v5;

      v7 = *(a1 + 24);
      if (!v7)
      {
        if (a2)
        {
          [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to create MTLCommandQueue"];
          *a2 = v8 = 0;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_6;
      }

      [v7 setBackgroundGPUPriority:2];
      v4 = *(a1 + 24);
    }

    v8 = v4;
LABEL_6:
    os_unfair_lock_unlock((a1 + 16));
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)libraryReturnError:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    v4 = *(a1 + 32);
    if (!v4)
    {
      v5 = *(a1 + 8);
      v6 = VNFrameworkBundle();
      v7 = [v5 newDefaultLibraryWithBundle:v6 error:a2];
      v8 = *(a1 + 32);
      *(a1 + 32) = v7;

      v4 = *(a1 + 32);
    }

    v9 = v4;
    os_unfair_lock_unlock((a1 + 16));
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bindPixelBufferToMTL2DTexture:(void *)a3 error:
{
  if (a1)
  {
    v6 = a1;
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    objc_opt_self();
    if (PixelFormatType > 1278226533)
    {
      if (PixelFormatType == 1278226536)
      {
        v8 = 25;
        goto LABEL_13;
      }

      if (PixelFormatType == 1278226534)
      {
        v8 = 55;
        goto LABEL_13;
      }
    }

    else
    {
      if (PixelFormatType == 1111970369)
      {
        v8 = 80;
        goto LABEL_13;
      }

      if (PixelFormatType == 1278226488)
      {
        v8 = 10;
LABEL_13:
        a1 = [VNMetalContext bindPixelBufferToMTL2DTexture:v6 pixelFormat:pixelBuffer plane:v8 error:a3];
LABEL_14:
        v3 = vars8;
        goto LABEL_15;
      }
    }

    if (a3)
    {
      v9 = [VNError errorForInternalErrorWithLocalizedDescription:@"Unimplemented conversion"];
      v10 = v9;
      a1 = 0;
      *a3 = v9;
    }

    else
    {
      a1 = 0;
    }

    goto LABEL_14;
  }

LABEL_15:

  return a1;
}

- (id)bindPixelBufferToMTL2DTexture:(void *)a1 pixelFormat:(CVPixelBufferRef)pixelBuffer plane:(uint64_t)a3 error:(void *)a4
{
  if (a1)
  {
    v7 = a1;
    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    if (IOSurface)
    {
      v9 = IOSurface;
      WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, 0);
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v9, 0);
      a1 = [VNMetalContext bindIOSurfaceToMTL2DTexture:v7 pixelFormat:v9 width:a3 height:WidthOfPlane plane:HeightOfPlane error:a4];
    }

    else if (a4)
    {
      v12 = [VNError errorForInternalErrorWithLocalizedDescription:@"pixel buffer does not have an IOSurface"];
      v13 = v12;
      a1 = 0;
      *a4 = v12;
    }

    else
    {
      a1 = 0;
    }

    v4 = vars8;
  }

  return a1;
}

- (id)bindIOSurfaceToMTL2DTexture:(uint64_t)a1 pixelFormat:(uint64_t)a2 width:(uint64_t)a3 height:(uint64_t)a4 plane:(uint64_t)a5 error:(void *)a6
{
  v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a3 width:a4 height:a5 mipmapped:0];
  v10 = v9;
  if (v9)
  {
    [v9 setUsage:23];
    v11 = [*(a1 + 8) newTextureWithDescriptor:v10 iosurface:a2 plane:0];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else if (a6)
    {
      *a6 = [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to create MTLTexture"];
    }
  }

  else if (a6)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to create MTLTextureDescriptor"];
    *a6 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)bindPixelBufferToMTL2DTexture:(uint64_t)a3 pixelFormat:(void *)a4 textureSize:(double)a5 plane:(double)a6 error:
{
  if (a1)
  {
    v11 = a1;
    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    if (IOSurface)
    {
      v13 = IOSurface;
      if (IOSurfaceGetWidthOfPlane(IOSurface, 0) >= a5)
      {
        if (IOSurfaceGetHeightOfPlane(v13, 0) >= a6)
        {
          a1 = [VNMetalContext bindIOSurfaceToMTL2DTexture:v11 pixelFormat:v13 width:a3 height:a5 plane:a6 error:a4];
          goto LABEL_14;
        }

        if (a4)
        {
          v14 = @"IOsurface height is smaller than texture height";
          goto LABEL_11;
        }
      }

      else if (a4)
      {
        v14 = @"IOsurface width is smaller than texture width";
LABEL_11:
        v15 = [VNError errorForInternalErrorWithLocalizedDescription:v14];
        v16 = v15;
        a1 = 0;
        *a4 = v15;
LABEL_14:
        v6 = vars8;
        goto LABEL_15;
      }
    }

    else if (a4)
    {
      v14 = @"Pixel buffer does not have an IOSurface";
      goto LABEL_11;
    }

    a1 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return a1;
}

- (id)bindPixelBuffersToTextures:(void *)a3 error:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [(VNMetalContext *)a1 bindPixelBufferToMTL2DTexture:a3 error:?];
          if (!v11)
          {

            v12 = 0;
            goto LABEL_12;
          }

          [v6 addObject:{v11, v14}];
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = [v6 copy];
LABEL_12:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)computePipelineStateForFunctionWithName:(uint64_t)a3 error:
{
  v5 = a2;
  if (a1)
  {
    v6 = [(VNMetalContext *)a1 libraryReturnError:a3];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 newFunctionWithName:v5];
      v9 = [*(a1 + 8) newComputePipelineStateWithFunction:v8 error:a3];
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

- (void)encodeCommandsForBuffer:(void *)a3 state:(uint64_t)a4 label:(uint64_t)a5 width:(void *)a6 height:(void *)a7 textures:buffers:block:
{
  v13 = a2;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  if (a1)
  {
    v17 = [v13 computeCommandEncoder];
    [v17 setComputePipelineState:v14];
    if (v15)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __90__VNMetalContext_encodeCommandsForBuffer_state_label_width_height_textures_buffers_block___block_invoke;
      v25[3] = &unk_1E77B3CC8;
      v26 = v17;
      [v15 enumerateObjectsUsingBlock:v25];
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __90__VNMetalContext_encodeCommandsForBuffer_state_label_width_height_textures_buffers_block___block_invoke_2;
    v23[3] = &unk_1E77B3CF0;
    v18 = v17;
    v24 = v18;
    [0 enumerateObjectsUsingBlock:v23];
    if (v16)
    {
      v16[2](v16, v18);
    }

    v19 = [v14 threadExecutionWidth];
    v20 = [v14 maxTotalThreadsPerThreadgroup];
    v22[0] = (a4 + v19 - 1) / v19;
    v22[1] = (a5 + v20 / v19 - 1) / (v20 / v19);
    v22[2] = 1;
    v21[0] = v19;
    v21[1] = v20 / v19;
    v21[2] = 1;
    [v18 dispatchThreadgroups:v22 threadsPerThreadgroup:v21];
    [v18 endEncoding];
  }
}

- (void)createGuidedFilterForTextures:(void *)a3 referenceTexture:(void *)a4 error:
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v27 = a3;
  if (!a1)
  {
    goto LABEL_30;
  }

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 pixelFormat];

    v9 = [v6 objectAtIndexedSubscript:0];
    v10 = [v9 width];

    v11 = [v6 objectAtIndexedSubscript:0];
    v12 = [v11 height];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = *v30;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v30 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v29 + 1) + 8 * v16);
      if (v10 != [v17 width] || v12 != objc_msgSend(v17, "height"))
      {
        break;
      }

      if (v8 != [v17 pixelFormat])
      {
        if (a4)
        {
          v20 = @"Texture pixel formats do not match";
LABEL_23:
          *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v20];
        }

        goto LABEL_24;
      }

      if (v14 == ++v16)
      {
        v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

LABEL_13:

        v18 = [v27 pixelFormat];
        if (v18 > 69)
        {
          if (v18 != 80 && v18 != 70)
          {
            goto LABEL_33;
          }

          v19 = 3;
        }

        else
        {
          v19 = 1;
          if (v18 != 10 && v18 != 55)
          {
LABEL_33:
            if (a4)
            {
              v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unimplemented format for guided upsampling"];
              *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v26];
            }

LABEL_25:
            a1 = 0;
            goto LABEL_30;
          }
        }

        v21 = MEMORY[0x1E6974620];
        v22 = [v13 count];
        LODWORD(v23) = 953267991;
        v24 = [v21 filterDescriptorWithWidth:v10 height:v12 arrayLength:1 kernelSpatialDiameter:3 kernelTemporalDiameter:1 epsilon:v22 sourceChannels:v23 guideChannels:v19];
        a1 = [objc_alloc(MEMORY[0x1E6974618]) initWithDevice:a1[1] filterDescriptor:v24];

        goto LABEL_30;
      }
    }

    if (a4)
    {
      v20 = @"Texture sizes do not match";
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (!a4)
  {
    goto LABEL_25;
  }

  [VNError errorForInternalErrorWithLocalizedDescription:@"Texture array cannot be empty"];
  *a4 = a1 = 0;
LABEL_30:

  return a1;
}

- (BOOL)upsampleTextures:(void *)a3 referenceTexture:(void *)a4 constraintsTextures:(void *)a5 upsampledTextures:(void *)a6 filter:(int)a7 waitForCompletion:(void *)a8 error:
{
  v14 = a2;
  v32 = a3;
  v31 = a4;
  v33 = a5;
  v30 = a6;
  if (!a1)
  {
    goto LABEL_23;
  }

  v15 = [v14 count];
  if (!v15)
  {
    if (!a8)
    {
      goto LABEL_22;
    }

    v27 = [VNError errorForInternalErrorWithLocalizedDescription:@"Invalid texture count of 0"];
LABEL_21:
    a1 = 0;
    *a8 = v27;
    goto LABEL_23;
  }

  if (v15 != [v33 count])
  {
    if (!a8)
    {
      goto LABEL_22;
    }

    v27 = [VNError errorForInternalErrorWithLocalizedDescription:@"Texture count mismatch between input and output textures"];
    goto LABEL_21;
  }

  v16 = [v14 objectAtIndexedSubscript:0];
  v17 = [v16 width];

  v18 = [v14 objectAtIndexedSubscript:0];
  v19 = [v18 height];

  if (v15 != 1)
  {
    v20 = 1;
    while (1)
    {
      v21 = [v14 objectAtIndexedSubscript:v20];
      if ([v21 width] != v17)
      {
        break;
      }

      v22 = [v14 objectAtIndexedSubscript:v20];
      v23 = [v22 height];

      if (v23 != v19)
      {
        goto LABEL_19;
      }

      if (v15 == ++v20)
      {
        goto LABEL_9;
      }
    }

LABEL_19:
    if (a8)
    {
      v27 = [VNError errorForInternalErrorWithLocalizedDescription:@"Texture size mismatch"];
      goto LABEL_21;
    }

LABEL_22:
    a1 = 0;
    goto LABEL_23;
  }

LABEL_9:
  v24 = [(VNMetalContext *)a1 commandQueueReturnError:a8];
  v25 = v24;
  a1 = v24 != 0;
  if (v24)
  {
    v26 = [v24 commandBuffer];
    [v30 encodeToCommandBuffer:v26 sourceTextureArray:v14 guidanceTexture:v32 constraintsTextureArray:v31 numberOfIterations:20 destinationTextureArray:v33];
    [v26 commit];
    if (a7)
    {
      [v26 waitUntilCompleted];
    }
  }

LABEL_23:
  return a1;
}

@end