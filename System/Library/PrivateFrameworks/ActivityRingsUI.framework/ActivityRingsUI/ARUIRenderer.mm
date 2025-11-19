@interface ARUIRenderer
- (ARUIRenderer)initWithRenderStyle:(unint64_t)a3 commandQueue:(id)a4;
- (id)_snapshotRings:(id)a3 spriteSheet:(id)a4 withContext:(id)a5;
- (id)renderPipelineFactoryWithDevice:(id)a3 library:(id)a4;
- (id)renderPipelineFactoryWithDeviceSPI:(id)a3 librarySPI:(id)a4;
- (id)ringsRenderPipelineConfigurationForRings:(id)a3 context:(id)a4;
- (id)snapshotRingGroupControllers:(id)a3 withSize:;
- (void)_renderRings:(id)a3 commandEncoder:(id)a4 passDescriptor:(id)a5 commandBuffer:(id)a6 withContext:(id)a7;
- (void)_renderRings:(id)a3 passDescriptor:(id)a4 commandBuffer:(id)a5 withContext:(id)a6;
- (void)_renderRings:(id)a3 spriteSheet:(id)a4 intoTexture:(id)a5 presentingDrawable:(id)a6 withContext:(id)a7 waitUntilCompleted:(BOOL)a8 completion:(id)a9;
- (void)renderRingGroupControllers:(id)a3 withSize:(id)a4 intoTexture:(id)a5 withDrawable:(BOOL)a6 waitUntilCompleted:(id)a7 completionHandler:;
- (void)renderRings:(id)a3 intoDrawable:(id)a4 withContext:(id)a5;
- (void)renderRings:(id)a3 intoDrawable:(id)a4 withContext:(id)a5 completion:(id)a6;
- (void)renderRings:(id)a3 spriteSheet:(id)a4 intoDrawable:(id)a5 withContext:(id)a6;
- (void)renderRings:(id)a3 spriteSheet:(id)a4 intoDrawable:(id)a5 withContext:(id)a6 completion:(id)a7;
@end

@implementation ARUIRenderer

- (ARUIRenderer)initWithRenderStyle:(unint64_t)a3 commandQueue:(id)a4
{
  v6 = a4;
  v32.receiver = self;
  v32.super_class = ARUIRenderer;
  v7 = [(ARUIRenderer *)&v32 init];
  v8 = v7;
  if (v7)
  {
    v7->_renderStyle = a3;
    v9 = MTLCreateSystemDefaultDevice();
    device = v8->_device;
    v8->_device = v9;

    if (v8->_device)
    {
      v11 = MGGetBoolAnswer();
      if (v6)
      {
        v12 = v6;
      }

      else
      {
        v12 = [(MTLDeviceSPI *)v8->_device newCommandQueue];
      }

      commandQueue = v8->_commandQueue;
      v8->_commandQueue = v12;

      v14 = [[ARUIRingsRenderer alloc] initWithDevice:v8->_device];
      ringsRenderer = v8->_ringsRenderer;
      v8->_ringsRenderer = v14;

      if (v11)
      {
        v16 = v8->_device;
        v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v18 = [(MTLDeviceSPI *)v16 newDefaultLibraryWithBundle:v17 error:0];

        v19 = [(ARUIRenderer *)v8 renderPipelineFactoryWithDevice:v8->_device library:v18];
        ringsRenderPipelineFactory = v8->_ringsRenderPipelineFactory;
        v8->_ringsRenderPipelineFactory = v19;

        v21 = [[ARUISpritesRenderer alloc] initWithDevice:v8->_device library:v18];
        spritesRenderer = v8->_spritesRenderer;
        v8->_spritesRenderer = v21;
      }

      else
      {
        v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v24 = [v23 bundlePath];
        v18 = [v24 stringByAppendingPathComponent:@"ARUIPrecompiledPipeline.pipelinelib"];

        spritesRenderer = [(MTLDeviceSPI *)v8->_device newPipelineLibraryWithFilePath:v18 error:0];
        v25 = [(ARUIRenderer *)v8 renderPipelineFactoryWithDeviceSPI:v8->_device librarySPI:spritesRenderer];
        v26 = v8->_ringsRenderPipelineFactory;
        v8->_ringsRenderPipelineFactory = v25;

        v27 = [[ARUISpritesRenderer alloc] initWithDeviceSPI:v8->_device librarySPI:spritesRenderer];
        v28 = v8->_spritesRenderer;
        v8->_spritesRenderer = v27;
      }

      v29 = [[ARUICelebrationsRenderer alloc] initWithDevice:v8->_device commandQueue:v8->_commandQueue];
      celebrationsRenderer = v8->_celebrationsRenderer;
      v8->_celebrationsRenderer = v29;
    }
  }

  return v8;
}

- (id)renderPipelineFactoryWithDeviceSPI:(id)a3 librarySPI:(id)a4
{
  v6 = a3;
  v7 = a4;
  renderStyle = self->_renderStyle;
  if (renderStyle)
  {
    if (renderStyle != 1)
    {
      goto LABEL_6;
    }

    v9 = off_1E83CDD20;
  }

  else
  {
    v9 = off_1E83CDD40;
  }

  self = [objc_alloc(*v9) initWithDeviceSPI:v6 librarySPI:v7];
LABEL_6:

  return self;
}

- (id)renderPipelineFactoryWithDevice:(id)a3 library:(id)a4
{
  v6 = a3;
  v7 = a4;
  renderStyle = self->_renderStyle;
  if (renderStyle)
  {
    if (renderStyle != 1)
    {
      goto LABEL_6;
    }

    v9 = off_1E83CDD20;
  }

  else
  {
    v9 = off_1E83CDD40;
  }

  self = [objc_alloc(*v9) initWithDevice:v6 library:v7];
LABEL_6:

  return self;
}

- (id)ringsRenderPipelineConfigurationForRings:(id)a3 context:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v8)
  {
    v9 = *v46;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v45 + 1) + 8 * i) percentage];
        if (v11 == *&ARUIRingPercentageValueNoRing)
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v13)
  {
    v14 = *v42;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v41 + 1) + 8 * j) percentage];
        if (v16 != *&ARUIRingPercentageValueNoRing)
        {
          v13 = 1;
          goto LABEL_21;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v17 = [v6 opaque];
  v18 = [v12 count];
  v19 = v18;
  if (v18)
  {
    if (v17)
    {
      v20 = 0;
      v21 = v18 - 1;
      do
      {
        v22 = [v12 objectAtIndex:{v20, v41}];
        [v22 opacity];
        v24 = v23;

        v25 = v24 > 0.0;
      }

      while (v24 <= 0.0 && v21 != v20++);
      v27 = 0;
    }

    else
    {
      v25 = 0;
      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = [v12 objectAtIndex:{v28, v41}];
        [v29 opacity];
        v25 |= v30 > 0.0;
        [v29 opacity];
        v27 |= v31 < 1.0;

        if (v25 & 1) != 0 && (v27)
        {
          break;
        }

        if (v19 == ++v28)
        {
          goto LABEL_37;
        }
      }

      v27 = 1;
      v25 = 1;
    }

LABEL_37:
    v32 = 0;
    v33 = v19 - 1;
    do
    {
      v34 = [v12 objectAtIndex:v32];
      [v34 percentage];
      v36 = v35;
      v37 = *&ARUIRingsRenderPipelineConfigurationOverlappingThreshold;

      v19 = v37 < v36;
    }

    while (v37 >= v36 && v33 != v32++);
  }

  else
  {
    v27 = 0;
    v25 = 0;
  }

  v39 = objc_alloc_init(ARUIRingsRenderPipelineConfiguration);
  [(ARUIRingsRenderPipelineConfiguration *)v39 setHasVisibleRings:v25 & 1];
  [(ARUIRingsRenderPipelineConfiguration *)v39 setHasEmptyRing:v8];
  [(ARUIRingsRenderPipelineConfiguration *)v39 setHasFilledRing:v13];
  [(ARUIRingsRenderPipelineConfiguration *)v39 setNeedsAlphaReductionPass:v27 & 1];
  [(ARUIRingsRenderPipelineConfiguration *)v39 setHasOverlappingRing:v19];

  return v39;
}

- (void)renderRings:(id)a3 intoDrawable:(id)a4 withContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 texture];
  [(ARUIRenderer *)self _renderRings:v10 spriteSheet:0 intoTexture:v11 presentingDrawable:v9 withContext:v8 waitUntilCompleted:0 completion:0];
}

- (void)renderRings:(id)a3 intoDrawable:(id)a4 withContext:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 texture];
  [(ARUIRenderer *)self _renderRings:v13 spriteSheet:0 intoTexture:v14 presentingDrawable:v12 withContext:v11 waitUntilCompleted:0 completion:v10];
}

- (void)renderRings:(id)a3 spriteSheet:(id)a4 intoDrawable:(id)a5 withContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v11 texture];
  [(ARUIRenderer *)self _renderRings:v13 spriteSheet:v12 intoTexture:v14 presentingDrawable:v11 withContext:v10 waitUntilCompleted:0 completion:0];
}

- (void)renderRings:(id)a3 spriteSheet:(id)a4 intoDrawable:(id)a5 withContext:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v14 texture];
  [(ARUIRenderer *)self _renderRings:v16 spriteSheet:v15 intoTexture:v17 presentingDrawable:v14 withContext:v13 waitUntilCompleted:0 completion:v12];
}

- (void)_renderRings:(id)a3 spriteSheet:(id)a4 intoTexture:(id)a5 presentingDrawable:(id)a6 withContext:(id)a7 waitUntilCompleted:(BOOL)a8 completion:(id)a9
{
  v31 = a8;
  v30 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v20 = [MEMORY[0x1E6974128] renderPassDescriptor];
  v21 = [v20 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript:0];
  [v22 setTexture:v15];

  v23 = [v20 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript:0];
  [v24 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  v25 = [v20 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript:0];
  [v26 setStoreAction:1];

  v27 = [v20 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript:0];
  [v28 setLoadAction:2];

  v29 = [v19 renderCommandEncoderWithDescriptor:v20];
  [(ARUIRenderer *)self _renderRings:v30 commandEncoder:v29 passDescriptor:v20 commandBuffer:v19 withContext:v17];
  if (v14)
  {
    [(ARUISpritesRenderer *)self->_spritesRenderer renderSpriteSheet:v14 intoContext:v17 withCommandEncoder:v29];
  }

  [v29 endEncoding];
  [(ARUICelebrationsRenderer *)self->_celebrationsRenderer renderCelebrationsForRings:v30 withCommandBuffer:v19 intoTexture:v15 withContext:v17];
  if (v18)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __114__ARUIRenderer__renderRings_spriteSheet_intoTexture_presentingDrawable_withContext_waitUntilCompleted_completion___block_invoke;
    v32[3] = &unk_1E83CE040;
    v33 = v18;
    [v19 addCompletedHandler:v32];
  }

  if ([v17 presentsWithTransaction])
  {
    [v19 commit];
    if (v16)
    {
      [v19 waitUntilScheduled];
      [v16 present];
    }
  }

  else
  {
    if (v16)
    {
      [v19 presentDrawable:v16];
    }

    [v19 commit];
  }

  if (v31)
  {
    [v19 waitUntilCompleted];
  }
}

- (void)_renderRings:(id)a3 passDescriptor:(id)a4 commandBuffer:(id)a5 withContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v11 renderCommandEncoderWithDescriptor:v12];
  [(ARUIRenderer *)self _renderRings:v13 commandEncoder:v14 passDescriptor:v12 commandBuffer:v11 withContext:v10];

  [v14 endEncoding];
}

- (void)_renderRings:(id)a3 commandEncoder:(id)a4 passDescriptor:(id)a5 commandBuffer:(id)a6 withContext:(id)a7
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  [(ARUIRingsRenderer *)self->_ringsRenderer beginRenderingWithCommandEncoder:v11];
  v13 = [(ARUIRenderer *)self ringsRenderPipelineConfigurationForRings:v10 context:v12];
  v14 = [(ARUIRingsRenderPipelineFactory *)self->_ringsRenderPipelineFactory pipelineForConfiguration:v13];
  if ([v14 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(ARUIRingsRenderer *)self->_ringsRenderer renderRings:v10 intoContext:v12 withCommandEncoder:v11 forState:*(*(&v20 + 1) + 8 * v19++), v20];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v17);
    }
  }
}

- (id)_snapshotRings:(id)a3 spriteSheet:(id)a4 withContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v8 drawableSize];
  v29 = v11;
  v12 = ceilf(v11);
  [v8 drawableSize];
  v14 = ceilf(v13);
  v15 = vcvtps_u32_f32(v29);
  v16 = vcvtps_u32_f32(v13);
  v17 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:v15 height:v16 mipmapped:0];
  [v17 setUsage:4];
  [v17 setResourceOptions:0];
  v18 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v17];
  [(ARUIRenderer *)self _renderRings:v10 spriteSheet:v9 intoTexture:v18 presentingDrawable:0 withContext:v8 waitUntilCompleted:1 completion:0];

  v19 = malloc_type_malloc((v12 * 4.0 * v14), 0x70B43DC8uLL);
  v20 = vcvtd_n_u64_f64(v12, 2uLL);
  memset(v30, 0, 24);
  v30[3] = v15;
  v30[4] = v16;
  v30[5] = 1;
  [v18 getBytes:v19 bytesPerRow:v20 fromRegion:v30 mipmapLevel:0];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v22 = CGDataProviderCreateWithData(0, v19, (v12 * 4.0 * v14), freeData);
  v23 = CGImageCreate(v15, v16, 8uLL, 0x20uLL, v20, DeviceRGB, 0x2002u, v22, 0, 0, kCGRenderingIntentDefault);
  if (v23)
  {
    v24 = v23;
    v25 = MEMORY[0x1E69DCAB8];
    [v8 screenScale];
    v27 = [v25 imageWithCGImage:v24 scale:0 orientation:v26];
    CGImageRelease(v24);
  }

  else
  {
    v27 = 0;
  }

  CGDataProviderRelease(v22);
  CGColorSpaceRelease(DeviceRGB);

  return v27;
}

- (void)renderRingGroupControllers:(id)a3 withSize:(id)a4 intoTexture:(id)a5 withDrawable:(BOOL)a6 waitUntilCompleted:(id)a7 completionHandler:
{
  v32 = a6;
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v31 = a5;
  v29 = a7;
  v12 = [ARUIRenderContext alloc];
  v27 = [v11 width];
  v13 = [v11 height];
  *&v14 = v27;
  *(&v14 + 1) = v13;
  v28 = [(ARUIRenderContext *)v12 initWithDrawableSize:v14];
  v15 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v34;
    do
    {
      v21 = 0;
      v22 = v19;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v33 + 1) + 8 * v21);
        v24 = [v23 ringGroup];
        v25 = [v24 rings];
        [v15 addObjectsFromArray:v25];

        v26 = [v23 ringGroup];
        v19 = [v26 spriteSheet];

        ++v21;
        v22 = v19;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  [(ARUIRenderer *)self _renderRings:v15 spriteSheet:v19 intoTexture:v11 presentingDrawable:v31 withContext:v28 waitUntilCompleted:v32 completion:v29];
}

- (id)snapshotRingGroupControllers:(id)a3 withSize:
{
  v4 = v3;
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [[ARUIRenderContext alloc] initWithDrawableSize:v4];
  v7 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v23;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        v16 = [v15 ringGroup];
        v17 = [v16 rings];
        [v7 addObjectsFromArray:v17];

        v18 = [v15 ringGroup];
        v11 = [v18 spriteSheet];

        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v19 = [(ARUIRenderer *)self snapshotRings:v7 spriteSheet:v11 withContext:v6];

  return v19;
}

@end