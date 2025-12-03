@interface HDRMetalContext
+ (BOOL)useSharedContext;
+ (id)metalContext;
+ (id)selectMetalDevice;
+ (id)sharedMetalContext;
- (HDRMetalContext)init;
- (__CVBuffer)metalTextureFromBuffer:(__CVBuffer *)buffer plane:(unsigned int)plane;
- (id)metalBinaryArchiveFileForHarvest;
- (id)metalComputePipelineStateWithFunction:(id)function;
- (id)metalLibraryFunctionWithName:(id)name;
- (id)metalLibraryFunctionWithName:(id)name functionConstant:(id)constant;
- (id)metalTextureFromCubeData:(id)data;
- (id)metalTextureFromTableData:(id)data;
- (unint64_t)metalPixelFormatForPixelFormat:(unsigned int)format plane:(unsigned int)plane;
- (void)dealloc;
@end

@implementation HDRMetalContext

+ (BOOL)useSharedContext
{
  v2 = IIO_XPCServer();
  v3 = CFPreferencesCopyValue(@"IIOHDRMetalUseSharedContext", @"com.apple.ImageIO", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = v2 ^ 1;
  }

  return bOOLValue;
}

+ (id)sharedMetalContext
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__HDRMetalContext_sharedMetalContext__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[HDRMetalContext sharedMetalContext]::onceToken != -1)
  {
    dispatch_once(&+[HDRMetalContext sharedMetalContext]::onceToken, block);
  }

  v2 = +[HDRMetalContext sharedMetalContext]::g_sharedContext;

  return v2;
}

uint64_t __37__HDRMetalContext_sharedMetalContext__block_invoke(uint64_t a1)
{
  +[HDRMetalContext sharedMetalContext]::g_sharedContext = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

+ (id)metalContext
{
  if ([self useSharedContext])
  {
    sharedMetalContext = [self sharedMetalContext];
  }

  else
  {
    sharedMetalContext = objc_alloc_init(self);
  }

  return sharedMetalContext;
}

- (HDRMetalContext)init
{
  v50[1] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = HDRMetalContext;
  v2 = [(HDRMetalContext *)&v48 init];
  v3 = v2;
  selectMetalDevice = [objc_opt_class() selectMetalDevice];
  device = v2->_device;
  v2->_device = selectMetalDevice;

  v6 = v2->_device;
  if (v6)
  {
    name = [(MTLDevice *)v6 name];
    v8 = [name rangeOfString:@"virtual" options:3] == 0x7FFFFFFFFFFFFFFFLL;

    if (v8)
    {
      name2 = [(MTLDevice *)v2->_device name];
      v10 = [name2 rangeOfString:@"Intel" options:3] == 0x7FFFFFFFFFFFFFFFLL;

      if (v10)
      {
        v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.ImageIO"];
        v12 = v2->_device;
        v47 = 0;
        v13 = [(MTLDevice *)v12 newDefaultLibraryWithBundle:v11 error:&v47];
        v14 = v47;
        library = v2->_library;
        v2->_library = v13;

        if (!v2->_library)
        {
          v16 = [v11 description];
          v24 = v16;
          uTF8String = [v16 UTF8String];
          v17 = [v14 description];
          v26 = v17;
          LogError("-[HDRMetalContext init]", 119, "*** Failed to load metal library from bundle: %s, error: %s", uTF8String, [v17 UTF8String]);
          v22 = 0;
LABEL_30:

          goto LABEL_15;
        }

        v16 = [v11 URLForResource:@"archive" withExtension:@"metallib"];
        if (v16)
        {
          v17 = objc_alloc_init(MEMORY[0x1E6973FE0]);
          [v17 setUrl:v16];
          v18 = v2->_device;
          v46 = v14;
          v19 = [(MTLDevice *)v18 newBinaryArchiveWithDescriptor:v17 error:&v46];
          v20 = v46;

          archive = v2->_archive;
          v2->_archive = v19;

          if (!v2->_archive)
          {
            v42 = v16;
            fileSystemRepresentation = [v16 fileSystemRepresentation];
            metalBinaryArchiveFileForHarvest = [v20 description];
            v44 = metalBinaryArchiveFileForHarvest;
            LogError("-[HDRMetalContext init]", 130, "*** Failed to load metal archive from bundle: %s, error: %s", fileSystemRepresentation, [metalBinaryArchiveFileForHarvest UTF8String]);
            v22 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          v20 = v14;
        }

        v49 = *gIIO_kCVMetalTextureCacheMaximumTextureAgeKey;
        v50[0] = &unk_1EF545508;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
        if (gFunc_CVMetalTextureCacheCreate(0, v17, v2->_device, 0, &v2->_textureCache))
        {
          LogError("[HDRMetalContext init]", 142, "Failed to create Metal texture cache");
          v22 = 0;
LABEL_29:
          v14 = v20;
          goto LABEL_30;
        }

        newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
        commandQueue = v2->_commandQueue;
        v2->_commandQueue = newCommandQueue;

        [(MTLCommandQueue *)v2->_commandQueue setBackgroundGPUPriority:2];
        metalBinaryArchiveFileForHarvest = [(HDRMetalContext *)v2 metalBinaryArchiveFileForHarvest];
        if (metalBinaryArchiveFileForHarvest)
        {
          v30 = objc_alloc_init(MEMORY[0x1E6973FE0]);
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          path = [metalBinaryArchiveFileForHarvest path];
          v33 = [defaultManager fileExistsAtPath:path];

          if (v33)
          {
            [v30 setUrl:metalBinaryArchiveFileForHarvest];
          }

          v34 = v3->_device;
          v45 = v20;
          v35 = [(MTLDevice *)v34 newBinaryArchiveWithDescriptor:v30 error:&v45];
          v36 = v45;

          binaryArchive = v3->_binaryArchive;
          v3->_binaryArchive = v35;

          if (!v3->_binaryArchive)
          {
            v38 = metalBinaryArchiveFileForHarvest;
            fileSystemRepresentation2 = [metalBinaryArchiveFileForHarvest fileSystemRepresentation];
            v40 = [v36 description];
            v41 = v40;
            LogError("-[HDRMetalContext init]", 159, "Failed to create Metal binary archive at path: '%s', error: '%s'", fileSystemRepresentation2, [v40 UTF8String]);
          }

          v20 = v36;
        }

        v22 = v3;
LABEL_28:

        goto LABEL_29;
      }

      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️ Metal converter not available: Intel GPU does not support argument buffers [128179728]");
      }
    }

    else if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️ Metal converter not available: VM does not support argument buffers [100784848]");
    }
  }

  else if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️ Metal converter not available: no device!");
  }

  v22 = 0;
LABEL_15:

  return v22;
}

- (id)metalBinaryArchiveFileForHarvest
{
  v2 = CFPreferencesCopyValue(@"IIOHDRMetalHarvestBinaryArchive", @"com.apple.ImageIO", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v4.receiver = self;
  v4.super_class = HDRMetalContext;
  [(HDRMetalContext *)&v4 dealloc];
}

+ (id)selectMetalDevice
{
  v2 = MTLCreateSystemDefaultDevice();

  return v2;
}

- (id)metalLibraryFunctionWithName:(id)name
{
  nameCopy = name;
  library = [(HDRMetalContext *)self library];
  v6 = [library newFunctionWithName:nameCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    LogError("-[HDRMetalContext metalLibraryFunctionWithName:]", 204, "Failed to load Metal kernel function named '%s'", [nameCopy UTF8String]);
  }

  return v6;
}

- (id)metalLibraryFunctionWithName:(id)name functionConstant:(id)constant
{
  v29[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  constantCopy = constant;
  v8 = objc_alloc_init(MEMORY[0x1E6974078]);
  [v8 setName:nameCopy];
  [v8 setConstantValues:constantCopy];
  if (self->_archive)
  {
    [v8 setOptions:4];
    v29[0] = self->_archive;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [v8 setBinaryArchives:v9];
  }

  library = [(HDRMetalContext *)self library];
  v28 = 0;
  v11 = [library newFunctionWithDescriptor:v8 error:&v28];
  v12 = v28;

  if (v11 || self->_archive && (v13 = nameCopy, v14 = [nameCopy UTF8String], objc_msgSend(constantCopy, "description"), v15 = objc_claimAutoreleasedReturnValue(), v16 = v15, v17 = objc_msgSend(v15, "UTF8String"), objc_msgSend(v12, "description"), v18 = objc_claimAutoreleasedReturnValue(), v19 = v18, LogWarning("-[HDRMetalContext metalLibraryFunctionWithName:functionConstant:]", 221, "Failed to load precompiled Metal kernel function named '%s' with constants values: '%s', error: %s. Will retry and allow compile, this is costly!", v14, v17, objc_msgSend(v18, "UTF8String")), v18, v15, objc_msgSend(v8, "setOptions:", 0), objc_msgSend(v8, "setBinaryArchives:", 0), -[HDRMetalContext library](self, "library"), v20 = objc_claimAutoreleasedReturnValue(), v27 = v12, v11 = objc_msgSend(v20, "newFunctionWithDescriptor:error:", v8, &v27), v21 = v27, v12, v20, v12 = v21, v11))
  {
    [v11 setLabel:nameCopy];
  }

  else
  {
    v22 = nameCopy;
    uTF8String = [nameCopy UTF8String];
    v24 = [v12 description];
    v25 = v24;
    LogError("-[HDRMetalContext metalLibraryFunctionWithName:functionConstant:]", 227, "Failed to load Metal kernel function named '%s', error: %s", uTF8String, [v24 UTF8String]);

    v11 = 0;
  }

  return v11;
}

- (id)metalComputePipelineStateWithFunction:(id)function
{
  v41[1] = *MEMORY[0x1E69E9840];
  functionCopy = function;
  v5 = objc_alloc_init(MEMORY[0x1E6974038]);
  [v5 setComputeFunction:functionCopy];
  label = [functionCopy label];
  [v5 setLabel:label];

  if (self->_archive)
  {
    v41[0] = self->_archive;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    [v5 setBinaryArchives:v7];

    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  device = [(HDRMetalContext *)self device];
  v40 = 0;
  v10 = [device newComputePipelineStateWithDescriptor:v5 options:v8 reflection:0 error:&v40];
  v11 = v40;

  if (v10 || self->_archive && ([functionCopy name], v19 = objc_claimAutoreleasedReturnValue(), v20 = v19, v21 = objc_msgSend(v19, "UTF8String"), objc_msgSend(v11, "description"), v22 = objc_claimAutoreleasedReturnValue(), v23 = v22, LogWarning("-[HDRMetalContext metalComputePipelineStateWithFunction:]", 246, "Failed to create precompiled MTLComputePipelineState for function '%s', error: %s, will retry and allow compiling, this is inefficient!", v21, objc_msgSend(v22, "UTF8String")), v22, v19, objc_msgSend(v5, "setBinaryArchives:", 0), -[HDRMetalContext device](self, "device"), v24 = objc_claimAutoreleasedReturnValue(), v39 = v11, v10 = objc_msgSend(v24, "newComputePipelineStateWithDescriptor:options:reflection:error:", v5, 0, 0, &v39), v25 = v39, v11, v24, v11 = v25, v10))
  {
    binaryArchive = self->_binaryArchive;
    if (!binaryArchive)
    {
      goto LABEL_17;
    }

    v38 = v11;
    v13 = [(MTLBinaryArchive *)binaryArchive addComputePipelineFunctionsWithDescriptor:v5 error:&v38];
    v14 = v38;

    if (v13)
    {
      metalBinaryArchiveFileForHarvest = [(HDRMetalContext *)self metalBinaryArchiveFileForHarvest];
      v16 = self->_binaryArchive;
      v37 = v14;
      v17 = [(MTLBinaryArchive *)v16 serializeToURL:metalBinaryArchiveFileForHarvest error:&v37];
      v11 = v37;

      if (v17)
      {
        if ((gIIODebugFlags & 0x300000) != 0)
        {
          v18 = metalBinaryArchiveFileForHarvest;
          ImageIOLog("Saved Metal binary archive to  '%s'", [metalBinaryArchiveFileForHarvest fileSystemRepresentation]);
        }

        goto LABEL_16;
      }

      v33 = metalBinaryArchiveFileForHarvest;
      fileSystemRepresentation = [metalBinaryArchiveFileForHarvest fileSystemRepresentation];
      v28 = [v11 description];
      v35 = v28;
      LogError("-[HDRMetalContext metalComputePipelineStateWithFunction:]", 264, "Failed to save Metal binary archive to '%s', error: %s", fileSystemRepresentation, [v28 UTF8String]);
    }

    else
    {
      metalBinaryArchiveFileForHarvest = [v5 label];
      v30 = metalBinaryArchiveFileForHarvest;
      uTF8String = [metalBinaryArchiveFileForHarvest UTF8String];
      v28 = [v14 description];
      v32 = v28;
      LogError("-[HDRMetalContext metalComputePipelineStateWithFunction:]", 259, "Failed to add compute pipeline state '%s' to binary archive, error: %s", uTF8String, [v28 UTF8String]);
      v11 = v14;
    }
  }

  else
  {
    metalBinaryArchiveFileForHarvest = [functionCopy name];
    v26 = metalBinaryArchiveFileForHarvest;
    uTF8String2 = [metalBinaryArchiveFileForHarvest UTF8String];
    v28 = [v11 description];
    v29 = v28;
    LogError("-[HDRMetalContext metalComputePipelineStateWithFunction:]", 252, "Failed to create MTLComputePipelineState for function '%s', error: %s", uTF8String2, [v28 UTF8String]);
    v10 = 0;
  }

LABEL_16:
LABEL_17:

  return v10;
}

- (__CVBuffer)metalTextureFromBuffer:(__CVBuffer *)buffer plane:(unsigned int)plane
{
  result = [(HDRMetalContext *)self metalPixelFormatForPixelFormat:gFunc_CVPixelBufferGetPixelFormatType(buffer) plane:*&plane];
  if (result)
  {
    v8 = result;
    v26 = 0;
    WidthOfPlane = gFunc_CVPixelBufferGetWidthOfPlane(buffer, plane);
    HeightOfPlane = gFunc_CVPixelBufferGetHeightOfPlane(buffer, plane);
    v11 = (gFunc_CVMetalTextureCacheCreateTextureFromImage)(0, [(HDRMetalContext *)self textureCache], buffer, 0, v8, WidthOfPlane, HeightOfPlane, plane, &v26);
    if (v11)
    {
      v12 = v11;
      PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(buffer);
      v14 = PixelFormatType;
      v15 = PixelFormatType >> 24;
      v16 = MEMORY[0x1E69E9830];
      if ((PixelFormatType >> 24) <= 0x7F)
      {
        v17 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
      }

      else
      {
        v17 = __maskrune(PixelFormatType >> 24, 0x40000uLL);
      }

      if (v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = 46;
      }

      v19 = (v14 << 8) >> 24;
      if (v19 <= 0x7F)
      {
        v20 = *(v16 + 4 * v19 + 60) & 0x40000;
      }

      else
      {
        v20 = __maskrune((v14 << 8) >> 24, 0x40000uLL);
      }

      if (v20)
      {
        v21 = v19;
      }

      else
      {
        v21 = 46;
      }

      LODWORD(v22) = v14 >> 8;
      if (v22 <= 0x7F)
      {
        v23 = *(v16 + 4 * v22 + 60) & 0x40000;
      }

      else
      {
        v23 = __maskrune(v14 >> 8, 0x40000uLL);
      }

      if (v23)
      {
        v22 = v22;
      }

      else
      {
        v22 = 46;
      }

      v14 = v14;
      if (v14 <= 0x7F)
      {
        v24 = *(v16 + 4 * v14 + 60) & 0x40000;
      }

      else
      {
        v24 = __maskrune(v14, 0x40000uLL);
      }

      if (v24)
      {
        v25 = v14;
      }

      else
      {
        v25 = 46;
      }

      LogError("[HDRMetalContext metalTextureFromBuffer:plane:]", 290, "Failed to create Metal texture err: %d   '%c%c%c%c'  mtl:%d\n", v12, v18, v21, v22, v25, v8);
      return 0;
    }

    else
    {
      return v26;
    }
  }

  return result;
}

- (id)metalTextureFromTableData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  v6 = objc_alloc_init(MEMORY[0x1E69741B8]);
  [v6 setTextureType:0];
  [v6 setPixelFormat:25];
  v5 >>= 1;
  [v6 setWidth:v5];
  [v6 setResourceOptions:0];
  [v6 setUsage:1];
  device = [(HDRMetalContext *)self device];
  v8 = [device newTextureWithDescriptor:v6];

  memset(v10, 0, 24);
  v10[3] = v5;
  v11 = vdupq_n_s64(1uLL);
  [v8 replaceRegion:v10 mipmapLevel:0 withBytes:objc_msgSend(dataCopy bytesPerRow:{"bytes", 0, 0, 0, v5, *&v11), objc_msgSend(dataCopy, "length")}];

  return v8;
}

- (id)metalTextureFromCubeData:(id)data
{
  dataCopy = data;
  v6 = vcvtas_u32_f32(cbrtf(([dataCopy length] >> 3)));
  if (8 * v6 * v6 * v6 != [dataCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDRImageConverter_Metal.mm" lineNumber:318 description:{@"Invalid grid size: %lu for cube data size: %lu", v6, objc_msgSend(dataCopy, "length")}];
  }

  v7 = objc_alloc_init(MEMORY[0x1E69741B8]);
  [v7 setTextureType:7];
  [v7 setPixelFormat:115];
  [v7 setWidth:v6];
  [v7 setHeight:v6];
  [v7 setDepth:v6];
  [v7 setResourceOptions:0];
  [v7 setUsage:1];
  device = [(HDRMetalContext *)self device];
  v9 = [device newTextureWithDescriptor:v7];

  memset(v12, 0, 24);
  v12[3] = v6;
  v12[4] = v6;
  v12[5] = v6;
  [v9 replaceRegion:v12 mipmapLevel:0 slice:0 withBytes:objc_msgSend(dataCopy bytesPerRow:"bytes") bytesPerImage:{8 * v6, 8 * v6 * v6}];

  return v9;
}

- (unint64_t)metalPixelFormatForPixelFormat:(unsigned int)format plane:(unsigned int)plane
{
  formatCopy = format;
  if (format <= 1380410944)
  {
    if (format <= 875836517)
    {
      if (format > 875704933)
      {
        if (format == 875704934)
        {
          goto LABEL_28;
        }

        v12 = 12918;
      }

      else
      {
        if (format == 875704422)
        {
          goto LABEL_28;
        }

        v12 = 12406;
      }

      v13 = v12 | 0x34320000;
    }

    else
    {
      if (format > 1111970368)
      {
        switch(format)
        {
          case 0x42475241u:
            if (!plane)
            {
              goto LABEL_46;
            }

            goto LABEL_58;
          case 0x4C303038u:
            if (!plane)
            {
              goto LABEL_46;
            }

            goto LABEL_58;
          case 0x4C303130u:
            device = [(HDRMetalContext *)self device];
            MTLPixelFormatGetInfoForDevice();

            v9 = 20;
            if (plane)
            {
              v9 = 0;
            }

            v10 = v9;
            goto LABEL_45;
        }

        goto LABEL_83;
      }

      if (format == 875836518)
      {
LABEL_28:
        if (plane == 1)
        {
          v10 = 30;
        }

        else
        {
          v10 = 0;
        }

        if (!plane)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v13 = 875836534;
    }

    if (format != v13)
    {
      goto LABEL_83;
    }

    goto LABEL_28;
  }

  if (format <= 2016686641)
  {
    if (format > 1815162993)
    {
      if (format == 1815162994)
      {
        if (!plane)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (format != 1815491698)
        {
          v7 = 12848;
LABEL_39:
          v11 = v7 | 0x78340000;
          goto LABEL_40;
        }

        if (!plane)
        {
          goto LABEL_46;
        }
      }

LABEL_58:
      v10 = 0;
      goto LABEL_59;
    }

    if (format == 1380410945)
    {
      if (!plane)
      {
        goto LABEL_46;
      }

      goto LABEL_58;
    }

    if (format == 1380411457)
    {
      if (!plane)
      {
        goto LABEL_46;
      }

      goto LABEL_58;
    }

LABEL_83:
    if ((format >> 24) > 0x7F)
    {
      __maskrune(format >> 24, 0x40000uLL);
    }

    if (((formatCopy << 8) >> 24) > 0x7F)
    {
      __maskrune((formatCopy << 8) >> 24, 0x40000uLL);
    }

    if ((formatCopy >> 8) > 0x7F)
    {
      __maskrune(formatCopy >> 8, 0x40000uLL);
    }

    formatCopy = formatCopy;
    if (formatCopy > 0x7F)
    {
      __maskrune(formatCopy, 0x40000uLL);
    }

    LogError("[HDRMetalContext metalPixelFormatForPixelFormat:plane:]", 388, "Unsupported pixel format: '%c%c%c%c'");
    return 0;
  }

  if (format <= 2019963439)
  {
    if (format == 2016686642)
    {
      goto LABEL_41;
    }

    v7 = 13364;
    goto LABEL_39;
  }

  if (format == 2019963440 || format == 2019963442)
  {
    goto LABEL_41;
  }

  v11 = 2019963956;
LABEL_40:
  if (format != v11)
  {
    goto LABEL_83;
  }

LABEL_41:
  device2 = [(HDRMetalContext *)self device];
  MTLPixelFormatGetInfoForDevice();

  if (plane == 1)
  {
    v10 = 60;
  }

  else
  {
    v10 = 0;
  }

  if (!plane)
  {
    goto LABEL_46;
  }

LABEL_45:
  if (v10)
  {
LABEL_46:
    device3 = [(HDRMetalContext *)self device];
    MTLPixelFormatGetInfoForDevice();

    LogError("[HDRMetalContext metalPixelFormatForPixelFormat:plane:]", 393, "Unsupported Metal pixel format: %lu");
    return 0;
  }

LABEL_59:
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v16 = MEMORY[0x1E69E9830];
    if ((*(MEMORY[0x1E69E9830] + 4 * HIBYTE(formatCopy) + 60) & 0x40000) != 0)
    {
      v17 = HIBYTE(formatCopy);
    }

    else
    {
      v17 = 46;
    }

    v18 = (formatCopy << 8) >> 24;
    if (v18 <= 0x7F)
    {
      v19 = *(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x40000;
    }

    else
    {
      v19 = __maskrune((formatCopy << 8) >> 24, 0x40000uLL);
    }

    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 46;
    }

    LODWORD(v21) = formatCopy >> 8;
    if (v21 <= 0x7F)
    {
      v22 = *(v16 + 4 * v21 + 60) & 0x40000;
    }

    else
    {
      v22 = __maskrune(formatCopy >> 8, 0x40000uLL);
    }

    if (v22)
    {
      v21 = v21;
    }

    else
    {
      v21 = 46;
    }

    formatCopy = formatCopy;
    if (formatCopy <= 0x7F)
    {
      v23 = *(v16 + 4 * formatCopy + 60) & 0x40000;
    }

    else
    {
      v23 = __maskrune(formatCopy, 0x40000uLL);
    }

    if (v23)
    {
      v24 = formatCopy;
    }

    else
    {
      v24 = 46;
    }

    ImageIOLog("☀️  metalPixelFormatForPixelFormat: '%c%c%c%c' plane: %u -> %lu\n", v17, v20, v21, v24, plane, v10);
  }

  return v10;
}

@end