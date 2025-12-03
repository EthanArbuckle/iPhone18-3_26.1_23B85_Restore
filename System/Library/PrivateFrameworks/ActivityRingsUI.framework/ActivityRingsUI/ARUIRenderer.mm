@interface ARUIRenderer
- (ARUIRenderer)initWithRenderStyle:(unint64_t)style commandQueue:(id)queue;
- (id)_snapshotRings:(id)rings spriteSheet:(id)sheet withContext:(id)context;
- (id)renderPipelineFactoryWithDevice:(id)device library:(id)library;
- (id)renderPipelineFactoryWithDeviceSPI:(id)i librarySPI:(id)pI;
- (id)ringsRenderPipelineConfigurationForRings:(id)rings context:(id)context;
- (id)snapshotRingGroupControllers:(id)controllers withSize:;
- (void)_renderRings:(id)rings commandEncoder:(id)encoder passDescriptor:(id)descriptor commandBuffer:(id)buffer withContext:(id)context;
- (void)_renderRings:(id)rings passDescriptor:(id)descriptor commandBuffer:(id)buffer withContext:(id)context;
- (void)_renderRings:(id)rings spriteSheet:(id)sheet intoTexture:(id)texture presentingDrawable:(id)drawable withContext:(id)context waitUntilCompleted:(BOOL)completed completion:(id)completion;
- (void)renderRingGroupControllers:(id)controllers withSize:(id)size intoTexture:(id)texture withDrawable:(BOOL)drawable waitUntilCompleted:(id)completed completionHandler:;
- (void)renderRings:(id)rings intoDrawable:(id)drawable withContext:(id)context;
- (void)renderRings:(id)rings intoDrawable:(id)drawable withContext:(id)context completion:(id)completion;
- (void)renderRings:(id)rings spriteSheet:(id)sheet intoDrawable:(id)drawable withContext:(id)context;
- (void)renderRings:(id)rings spriteSheet:(id)sheet intoDrawable:(id)drawable withContext:(id)context completion:(id)completion;
@end

@implementation ARUIRenderer

- (ARUIRenderer)initWithRenderStyle:(unint64_t)style commandQueue:(id)queue
{
  queueCopy = queue;
  v32.receiver = self;
  v32.super_class = ARUIRenderer;
  v7 = [(ARUIRenderer *)&v32 init];
  v8 = v7;
  if (v7)
  {
    v7->_renderStyle = style;
    v9 = MTLCreateSystemDefaultDevice();
    device = v8->_device;
    v8->_device = v9;

    if (v8->_device)
    {
      v11 = MGGetBoolAnswer();
      if (queueCopy)
      {
        newCommandQueue = queueCopy;
      }

      else
      {
        newCommandQueue = [(MTLDeviceSPI *)v8->_device newCommandQueue];
      }

      commandQueue = v8->_commandQueue;
      v8->_commandQueue = newCommandQueue;

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
        bundlePath = [v23 bundlePath];
        v18 = [bundlePath stringByAppendingPathComponent:@"ARUIPrecompiledPipeline.pipelinelib"];

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

- (id)renderPipelineFactoryWithDeviceSPI:(id)i librarySPI:(id)pI
{
  iCopy = i;
  pICopy = pI;
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

  self = [objc_alloc(*v9) initWithDeviceSPI:iCopy librarySPI:pICopy];
LABEL_6:

  return self;
}

- (id)renderPipelineFactoryWithDevice:(id)device library:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
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

  self = [objc_alloc(*v9) initWithDevice:deviceCopy library:libraryCopy];
LABEL_6:

  return self;
}

- (id)ringsRenderPipelineConfigurationForRings:(id)rings context:(id)context
{
  v51 = *MEMORY[0x1E69E9840];
  ringsCopy = rings;
  contextCopy = context;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = ringsCopy;
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

  opaque = [contextCopy opaque];
  v18 = [v12 count];
  v19 = v18;
  if (v18)
  {
    if (opaque)
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

- (void)renderRings:(id)rings intoDrawable:(id)drawable withContext:(id)context
{
  contextCopy = context;
  drawableCopy = drawable;
  ringsCopy = rings;
  texture = [drawableCopy texture];
  [(ARUIRenderer *)self _renderRings:ringsCopy spriteSheet:0 intoTexture:texture presentingDrawable:drawableCopy withContext:contextCopy waitUntilCompleted:0 completion:0];
}

- (void)renderRings:(id)rings intoDrawable:(id)drawable withContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  drawableCopy = drawable;
  ringsCopy = rings;
  texture = [drawableCopy texture];
  [(ARUIRenderer *)self _renderRings:ringsCopy spriteSheet:0 intoTexture:texture presentingDrawable:drawableCopy withContext:contextCopy waitUntilCompleted:0 completion:completionCopy];
}

- (void)renderRings:(id)rings spriteSheet:(id)sheet intoDrawable:(id)drawable withContext:(id)context
{
  contextCopy = context;
  drawableCopy = drawable;
  sheetCopy = sheet;
  ringsCopy = rings;
  texture = [drawableCopy texture];
  [(ARUIRenderer *)self _renderRings:ringsCopy spriteSheet:sheetCopy intoTexture:texture presentingDrawable:drawableCopy withContext:contextCopy waitUntilCompleted:0 completion:0];
}

- (void)renderRings:(id)rings spriteSheet:(id)sheet intoDrawable:(id)drawable withContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  drawableCopy = drawable;
  sheetCopy = sheet;
  ringsCopy = rings;
  texture = [drawableCopy texture];
  [(ARUIRenderer *)self _renderRings:ringsCopy spriteSheet:sheetCopy intoTexture:texture presentingDrawable:drawableCopy withContext:contextCopy waitUntilCompleted:0 completion:completionCopy];
}

- (void)_renderRings:(id)rings spriteSheet:(id)sheet intoTexture:(id)texture presentingDrawable:(id)drawable withContext:(id)context waitUntilCompleted:(BOOL)completed completion:(id)completion
{
  completedCopy = completed;
  ringsCopy = rings;
  sheetCopy = sheet;
  textureCopy = texture;
  drawableCopy = drawable;
  contextCopy = context;
  completionCopy = completion;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v22 = [colorAttachments objectAtIndexedSubscript:0];
  [v22 setTexture:textureCopy];

  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v24 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v24 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  colorAttachments3 = [renderPassDescriptor colorAttachments];
  v26 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v26 setStoreAction:1];

  colorAttachments4 = [renderPassDescriptor colorAttachments];
  v28 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v28 setLoadAction:2];

  v29 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
  [(ARUIRenderer *)self _renderRings:ringsCopy commandEncoder:v29 passDescriptor:renderPassDescriptor commandBuffer:commandBuffer withContext:contextCopy];
  if (sheetCopy)
  {
    [(ARUISpritesRenderer *)self->_spritesRenderer renderSpriteSheet:sheetCopy intoContext:contextCopy withCommandEncoder:v29];
  }

  [v29 endEncoding];
  [(ARUICelebrationsRenderer *)self->_celebrationsRenderer renderCelebrationsForRings:ringsCopy withCommandBuffer:commandBuffer intoTexture:textureCopy withContext:contextCopy];
  if (completionCopy)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __114__ARUIRenderer__renderRings_spriteSheet_intoTexture_presentingDrawable_withContext_waitUntilCompleted_completion___block_invoke;
    v32[3] = &unk_1E83CE040;
    v33 = completionCopy;
    [commandBuffer addCompletedHandler:v32];
  }

  if ([contextCopy presentsWithTransaction])
  {
    [commandBuffer commit];
    if (drawableCopy)
    {
      [commandBuffer waitUntilScheduled];
      [drawableCopy present];
    }
  }

  else
  {
    if (drawableCopy)
    {
      [commandBuffer presentDrawable:drawableCopy];
    }

    [commandBuffer commit];
  }

  if (completedCopy)
  {
    [commandBuffer waitUntilCompleted];
  }
}

- (void)_renderRings:(id)rings passDescriptor:(id)descriptor commandBuffer:(id)buffer withContext:(id)context
{
  contextCopy = context;
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  ringsCopy = rings;
  v14 = [bufferCopy renderCommandEncoderWithDescriptor:descriptorCopy];
  [(ARUIRenderer *)self _renderRings:ringsCopy commandEncoder:v14 passDescriptor:descriptorCopy commandBuffer:bufferCopy withContext:contextCopy];

  [v14 endEncoding];
}

- (void)_renderRings:(id)rings commandEncoder:(id)encoder passDescriptor:(id)descriptor commandBuffer:(id)buffer withContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  ringsCopy = rings;
  encoderCopy = encoder;
  contextCopy = context;
  [(ARUIRingsRenderer *)self->_ringsRenderer beginRenderingWithCommandEncoder:encoderCopy];
  v13 = [(ARUIRenderer *)self ringsRenderPipelineConfigurationForRings:ringsCopy context:contextCopy];
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

          [(ARUIRingsRenderer *)self->_ringsRenderer renderRings:ringsCopy intoContext:contextCopy withCommandEncoder:encoderCopy forState:*(*(&v20 + 1) + 8 * v19++), v20];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v17);
    }
  }
}

- (id)_snapshotRings:(id)rings spriteSheet:(id)sheet withContext:(id)context
{
  contextCopy = context;
  sheetCopy = sheet;
  ringsCopy = rings;
  [contextCopy drawableSize];
  v29 = v11;
  v12 = ceilf(v11);
  [contextCopy drawableSize];
  v14 = ceilf(v13);
  v15 = vcvtps_u32_f32(v29);
  v16 = vcvtps_u32_f32(v13);
  v17 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:v15 height:v16 mipmapped:0];
  [v17 setUsage:4];
  [v17 setResourceOptions:0];
  v18 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v17];
  [(ARUIRenderer *)self _renderRings:ringsCopy spriteSheet:sheetCopy intoTexture:v18 presentingDrawable:0 withContext:contextCopy waitUntilCompleted:1 completion:0];

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
    [contextCopy screenScale];
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

- (void)renderRingGroupControllers:(id)controllers withSize:(id)size intoTexture:(id)texture withDrawable:(BOOL)drawable waitUntilCompleted:(id)completed completionHandler:
{
  drawableCopy = drawable;
  v38 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  sizeCopy = size;
  textureCopy = texture;
  completedCopy = completed;
  v12 = [ARUIRenderContext alloc];
  width = [sizeCopy width];
  height = [sizeCopy height];
  *&v14 = width;
  *(&v14 + 1) = height;
  v28 = [(ARUIRenderContext *)v12 initWithDrawableSize:v14];
  array = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = controllersCopy;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    spriteSheet = 0;
    v20 = *v34;
    do
    {
      v21 = 0;
      v22 = spriteSheet;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v33 + 1) + 8 * v21);
        ringGroup = [v23 ringGroup];
        rings = [ringGroup rings];
        [array addObjectsFromArray:rings];

        ringGroup2 = [v23 ringGroup];
        spriteSheet = [ringGroup2 spriteSheet];

        ++v21;
        v22 = spriteSheet;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v18);
  }

  else
  {
    spriteSheet = 0;
  }

  [(ARUIRenderer *)self _renderRings:array spriteSheet:spriteSheet intoTexture:sizeCopy presentingDrawable:textureCopy withContext:v28 waitUntilCompleted:drawableCopy completion:completedCopy];
}

- (id)snapshotRingGroupControllers:(id)controllers withSize:
{
  v4 = v3;
  v27 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v6 = [[ARUIRenderContext alloc] initWithDrawableSize:v4];
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = controllersCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    spriteSheet = 0;
    v12 = *v23;
    do
    {
      v13 = 0;
      v14 = spriteSheet;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        ringGroup = [v15 ringGroup];
        rings = [ringGroup rings];
        [array addObjectsFromArray:rings];

        ringGroup2 = [v15 ringGroup];
        spriteSheet = [ringGroup2 spriteSheet];

        ++v13;
        v14 = spriteSheet;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    spriteSheet = 0;
  }

  v19 = [(ARUIRenderer *)self snapshotRings:array spriteSheet:spriteSheet withContext:v6];

  return v19;
}

@end