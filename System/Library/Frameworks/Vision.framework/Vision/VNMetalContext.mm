@interface VNMetalContext
+ (void)metalContextForDevice:(void *)device error:;
- (BOOL)upsampleTextures:(void *)textures referenceTexture:(void *)texture constraintsTextures:(void *)constraintsTextures upsampledTextures:(void *)upsampledTextures filter:(int)filter waitForCompletion:(void *)completion error:;
- (id)bindIOSurfaceToMTL2DTexture:(uint64_t)texture pixelFormat:(uint64_t)format width:(uint64_t)width height:(uint64_t)height plane:(uint64_t)plane error:(void *)error;
- (id)bindPixelBufferToMTL2DTexture:(uint64_t)texture pixelFormat:(void *)format textureSize:(double)size plane:(double)plane error:;
- (id)bindPixelBufferToMTL2DTexture:(void *)texture error:;
- (id)bindPixelBufferToMTL2DTexture:(void *)texture pixelFormat:(CVPixelBufferRef)pixelBuffer plane:(uint64_t)plane error:(void *)error;
- (id)bindPixelBuffersToTextures:(void *)textures error:;
- (id)commandQueueReturnError:(uint64_t)error;
- (id)computePipelineStateForFunctionWithName:(uint64_t)name error:;
- (id)libraryReturnError:(uint64_t)error;
- (void)createGuidedFilterForTextures:(void *)textures referenceTexture:(void *)texture error:;
- (void)encodeCommandsForBuffer:(void *)buffer state:(uint64_t)state label:(uint64_t)label width:(void *)width height:(void *)height textures:buffers:block:;
@end

@implementation VNMetalContext

+ (void)metalContextForDevice:(void *)device error:
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
      if (device)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create MTLDevice"];
        *device = v16 = 0;
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

    if (device)
    {
      +[VNError errorForMemoryAllocationFailure];
      *device = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

LABEL_13:

  return v16;
}

- (id)commandQueueReturnError:(uint64_t)error
{
  if (error)
  {
    os_unfair_lock_lock((error + 16));
    v4 = *(error + 24);
    if (!v4)
    {
      newCommandQueue = [*(error + 8) newCommandQueue];
      v6 = *(error + 24);
      *(error + 24) = newCommandQueue;

      v7 = *(error + 24);
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
      v4 = *(error + 24);
    }

    v8 = v4;
LABEL_6:
    os_unfair_lock_unlock((error + 16));
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)libraryReturnError:(uint64_t)error
{
  if (error)
  {
    os_unfair_lock_lock((error + 16));
    v4 = *(error + 32);
    if (!v4)
    {
      v5 = *(error + 8);
      v6 = VNFrameworkBundle();
      v7 = [v5 newDefaultLibraryWithBundle:v6 error:a2];
      v8 = *(error + 32);
      *(error + 32) = v7;

      v4 = *(error + 32);
    }

    v9 = v4;
    os_unfair_lock_unlock((error + 16));
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bindPixelBufferToMTL2DTexture:(void *)texture error:
{
  if (self)
  {
    selfCopy = self;
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
        self = [VNMetalContext bindPixelBufferToMTL2DTexture:selfCopy pixelFormat:pixelBuffer plane:v8 error:texture];
LABEL_14:
        v3 = vars8;
        goto LABEL_15;
      }
    }

    if (texture)
    {
      v9 = [VNError errorForInternalErrorWithLocalizedDescription:@"Unimplemented conversion"];
      v10 = v9;
      self = 0;
      *texture = v9;
    }

    else
    {
      self = 0;
    }

    goto LABEL_14;
  }

LABEL_15:

  return self;
}

- (id)bindPixelBufferToMTL2DTexture:(void *)texture pixelFormat:(CVPixelBufferRef)pixelBuffer plane:(uint64_t)plane error:(void *)error
{
  if (texture)
  {
    textureCopy = texture;
    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    if (IOSurface)
    {
      v9 = IOSurface;
      WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, 0);
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v9, 0);
      texture = [VNMetalContext bindIOSurfaceToMTL2DTexture:textureCopy pixelFormat:v9 width:plane height:WidthOfPlane plane:HeightOfPlane error:error];
    }

    else if (error)
    {
      v12 = [VNError errorForInternalErrorWithLocalizedDescription:@"pixel buffer does not have an IOSurface"];
      v13 = v12;
      texture = 0;
      *error = v12;
    }

    else
    {
      texture = 0;
    }

    v4 = vars8;
  }

  return texture;
}

- (id)bindIOSurfaceToMTL2DTexture:(uint64_t)texture pixelFormat:(uint64_t)format width:(uint64_t)width height:(uint64_t)height plane:(uint64_t)plane error:(void *)error
{
  v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:width width:height height:plane mipmapped:0];
  v10 = v9;
  if (v9)
  {
    [v9 setUsage:23];
    v11 = [*(texture + 8) newTextureWithDescriptor:v10 iosurface:format plane:0];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to create MTLTexture"];
    }
  }

  else if (error)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to create MTLTextureDescriptor"];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)bindPixelBufferToMTL2DTexture:(uint64_t)texture pixelFormat:(void *)format textureSize:(double)size plane:(double)plane error:
{
  if (self)
  {
    selfCopy = self;
    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    if (IOSurface)
    {
      v13 = IOSurface;
      if (IOSurfaceGetWidthOfPlane(IOSurface, 0) >= size)
      {
        if (IOSurfaceGetHeightOfPlane(v13, 0) >= plane)
        {
          self = [VNMetalContext bindIOSurfaceToMTL2DTexture:selfCopy pixelFormat:v13 width:texture height:size plane:plane error:format];
          goto LABEL_14;
        }

        if (format)
        {
          v14 = @"IOsurface height is smaller than texture height";
          goto LABEL_11;
        }
      }

      else if (format)
      {
        v14 = @"IOsurface width is smaller than texture width";
LABEL_11:
        v15 = [VNError errorForInternalErrorWithLocalizedDescription:v14];
        v16 = v15;
        self = 0;
        *format = v15;
LABEL_14:
        v6 = vars8;
        goto LABEL_15;
      }
    }

    else if (format)
    {
      v14 = @"Pixel buffer does not have an IOSurface";
      goto LABEL_11;
    }

    self = 0;
    goto LABEL_14;
  }

LABEL_15:

  return self;
}

- (id)bindPixelBuffersToTextures:(void *)textures error:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
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

          v11 = [(VNMetalContext *)self bindPixelBufferToMTL2DTexture:textures error:?];
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

- (id)computePipelineStateForFunctionWithName:(uint64_t)name error:
{
  v5 = a2;
  if (self)
  {
    v6 = [(VNMetalContext *)self libraryReturnError:name];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 newFunctionWithName:v5];
      v9 = [*(self + 8) newComputePipelineStateWithFunction:v8 error:name];
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

- (void)encodeCommandsForBuffer:(void *)buffer state:(uint64_t)state label:(uint64_t)label width:(void *)width height:(void *)height textures:buffers:block:
{
  v13 = a2;
  bufferCopy = buffer;
  widthCopy = width;
  heightCopy = height;
  if (self)
  {
    computeCommandEncoder = [v13 computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:bufferCopy];
    if (widthCopy)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __90__VNMetalContext_encodeCommandsForBuffer_state_label_width_height_textures_buffers_block___block_invoke;
      v25[3] = &unk_1E77B3CC8;
      v26 = computeCommandEncoder;
      [widthCopy enumerateObjectsUsingBlock:v25];
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __90__VNMetalContext_encodeCommandsForBuffer_state_label_width_height_textures_buffers_block___block_invoke_2;
    v23[3] = &unk_1E77B3CF0;
    v18 = computeCommandEncoder;
    v24 = v18;
    [0 enumerateObjectsUsingBlock:v23];
    if (heightCopy)
    {
      heightCopy[2](heightCopy, v18);
    }

    threadExecutionWidth = [bufferCopy threadExecutionWidth];
    maxTotalThreadsPerThreadgroup = [bufferCopy maxTotalThreadsPerThreadgroup];
    v22[0] = (state + threadExecutionWidth - 1) / threadExecutionWidth;
    v22[1] = (label + maxTotalThreadsPerThreadgroup / threadExecutionWidth - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth);
    v22[2] = 1;
    v21[0] = threadExecutionWidth;
    v21[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    v21[2] = 1;
    [v18 dispatchThreadgroups:v22 threadsPerThreadgroup:v21];
    [v18 endEncoding];
  }
}

- (void)createGuidedFilterForTextures:(void *)textures referenceTexture:(void *)texture error:
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a2;
  texturesCopy = textures;
  if (!self)
  {
    goto LABEL_30;
  }

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    pixelFormat = [v7 pixelFormat];

    v9 = [v6 objectAtIndexedSubscript:0];
    width = [v9 width];

    v11 = [v6 objectAtIndexedSubscript:0];
    height = [v11 height];

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
      if (width != [v17 width] || height != objc_msgSend(v17, "height"))
      {
        break;
      }

      if (pixelFormat != [v17 pixelFormat])
      {
        if (texture)
        {
          v20 = @"Texture pixel formats do not match";
LABEL_23:
          *texture = [VNError errorForInternalErrorWithLocalizedDescription:v20];
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

        pixelFormat2 = [texturesCopy pixelFormat];
        if (pixelFormat2 > 69)
        {
          if (pixelFormat2 != 80 && pixelFormat2 != 70)
          {
            goto LABEL_33;
          }

          v19 = 3;
        }

        else
        {
          v19 = 1;
          if (pixelFormat2 != 10 && pixelFormat2 != 55)
          {
LABEL_33:
            if (texture)
            {
              v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unimplemented format for guided upsampling"];
              *texture = [VNError errorForInternalErrorWithLocalizedDescription:v26];
            }

LABEL_25:
            self = 0;
            goto LABEL_30;
          }
        }

        v21 = MEMORY[0x1E6974620];
        v22 = [v13 count];
        LODWORD(v23) = 953267991;
        v24 = [v21 filterDescriptorWithWidth:width height:height arrayLength:1 kernelSpatialDiameter:3 kernelTemporalDiameter:1 epsilon:v22 sourceChannels:v23 guideChannels:v19];
        self = [objc_alloc(MEMORY[0x1E6974618]) initWithDevice:self[1] filterDescriptor:v24];

        goto LABEL_30;
      }
    }

    if (texture)
    {
      v20 = @"Texture sizes do not match";
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (!texture)
  {
    goto LABEL_25;
  }

  [VNError errorForInternalErrorWithLocalizedDescription:@"Texture array cannot be empty"];
  *texture = self = 0;
LABEL_30:

  return self;
}

- (BOOL)upsampleTextures:(void *)textures referenceTexture:(void *)texture constraintsTextures:(void *)constraintsTextures upsampledTextures:(void *)upsampledTextures filter:(int)filter waitForCompletion:(void *)completion error:
{
  v14 = a2;
  texturesCopy = textures;
  textureCopy = texture;
  constraintsTexturesCopy = constraintsTextures;
  upsampledTexturesCopy = upsampledTextures;
  if (!self)
  {
    goto LABEL_23;
  }

  v15 = [v14 count];
  if (!v15)
  {
    if (!completion)
    {
      goto LABEL_22;
    }

    v27 = [VNError errorForInternalErrorWithLocalizedDescription:@"Invalid texture count of 0"];
LABEL_21:
    self = 0;
    *completion = v27;
    goto LABEL_23;
  }

  if (v15 != [constraintsTexturesCopy count])
  {
    if (!completion)
    {
      goto LABEL_22;
    }

    v27 = [VNError errorForInternalErrorWithLocalizedDescription:@"Texture count mismatch between input and output textures"];
    goto LABEL_21;
  }

  v16 = [v14 objectAtIndexedSubscript:0];
  width = [v16 width];

  v18 = [v14 objectAtIndexedSubscript:0];
  height = [v18 height];

  if (v15 != 1)
  {
    v20 = 1;
    while (1)
    {
      v21 = [v14 objectAtIndexedSubscript:v20];
      if ([v21 width] != width)
      {
        break;
      }

      v22 = [v14 objectAtIndexedSubscript:v20];
      height2 = [v22 height];

      if (height2 != height)
      {
        goto LABEL_19;
      }

      if (v15 == ++v20)
      {
        goto LABEL_9;
      }
    }

LABEL_19:
    if (completion)
    {
      v27 = [VNError errorForInternalErrorWithLocalizedDescription:@"Texture size mismatch"];
      goto LABEL_21;
    }

LABEL_22:
    self = 0;
    goto LABEL_23;
  }

LABEL_9:
  v24 = [(VNMetalContext *)self commandQueueReturnError:completion];
  v25 = v24;
  self = v24 != 0;
  if (v24)
  {
    commandBuffer = [v24 commandBuffer];
    [upsampledTexturesCopy encodeToCommandBuffer:commandBuffer sourceTextureArray:v14 guidanceTexture:texturesCopy constraintsTextureArray:textureCopy numberOfIterations:20 destinationTextureArray:constraintsTexturesCopy];
    [commandBuffer commit];
    if (filter)
    {
      [commandBuffer waitUntilCompleted];
    }
  }

LABEL_23:
  return self;
}

@end