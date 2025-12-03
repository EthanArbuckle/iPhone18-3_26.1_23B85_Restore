@interface GlobalReductionAverage
- (GlobalReductionAverage)initWithFigMetalContext:(id)context textureSize:(CGSize)size;
- (void)parallelReductionAverage:(id)average inTexture:(id)texture outGlobalAverage:(id)globalAverage;
@end

@implementation GlobalReductionAverage

- (void)parallelReductionAverage:(id)average inTexture:(id)texture outGlobalAverage:(id)globalAverage
{
  v25[3] = *MEMORY[0x1E69E9840];
  averageCopy = average;
  textureCopy = texture;
  globalAverageCopy = globalAverage;
  if (([textureCopy width] != self->_textureSize.width || objc_msgSend(textureCopy, "height") != self->_textureSize.height) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    width = self->_textureSize.width;
    height = self->_textureSize.height;
    *buf = 67109888;
    *&buf[4] = width;
    LOWORD(v24) = 1024;
    *(&v24 + 2) = height;
    HIWORD(v24) = 1024;
    LODWORD(v25[0]) = [textureCopy width];
    WORD2(v25[0]) = 1024;
    *(v25 + 6) = [textureCopy height];
    _os_log_error_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "TextureSize does not mathc input, expected w:%i h:%i got w:%i h:%i", buf, 0x1Au);
  }

  computeCommandEncoder = [averageCopy computeCommandEncoder];
  for (i = 0; i <= [(NSArray *)self->_simdTextures count]; ++i)
  {
    if (i)
    {
      v12 = [(NSArray *)self->_simdTextures objectAtIndexedSubscript:i - 1];
    }

    else
    {
      v12 = textureCopy;
    }

    v13 = v12;
    if (i == [(NSArray *)self->_simdTextures count])
    {
      v14 = 0;
    }

    else
    {
      v14 = [(NSArray *)self->_simdTextures objectAtIndexedSubscript:i];
    }

    width = [v13 width];
    height = [v13 height];
    [computeCommandEncoder setComputePipelineState:self->_parallelReductionAverageSimd];
    [computeCommandEncoder setTexture:v13 atIndex:0];
    [computeCommandEncoder setTexture:v14 atIndex:1];
    [computeCommandEncoder setBytes:&self->_numberOfElements length:4 atIndex:0];
    [computeCommandEncoder setBuffer:globalAverageCopy offset:0 atIndex:1];
    *buf = (width + 1) >> 1;
    v24 = (height + 1) >> 1;
    v25[0] = 1;
    v21 = *&self->_simdReductionThreadsPerGroup.width;
    depth = self->_simdReductionThreadsPerGroup.depth;
    [computeCommandEncoder dispatchThreads:buf threadsPerThreadgroup:&v21];
  }

  [computeCommandEncoder endEncoding];

  v17 = *MEMORY[0x1E69E9840];
}

- (GlobalReductionAverage)initWithFigMetalContext:(id)context textureSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  v33.receiver = self;
  v33.super_class = GlobalReductionAverage;
  v8 = [(GlobalReductionAverage *)&v33 init];
  if (v8 && ([contextCopy device], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "supportsFamily:", 1007), v9, (v10 & 1) != 0))
  {
    device = [contextCopy device];
    device = v8->_device;
    v8->_device = device;

    library = [contextCopy library];
    library = v8->_library;
    v8->_library = library;

    pipelineLibrary = [contextCopy pipelineLibrary];
    pipelineLibrary = v8->_pipelineLibrary;
    v8->_pipelineLibrary = pipelineLibrary;

    v8->_textureSize.width = width;
    v8->_textureSize.height = height;
    sub_1DED422A0(&v8->_parallelReductionAverageSimd, contextCopy, @"parallelReductionAverageSimd", 0);
    parallelReductionAverageSimd = v8->_parallelReductionAverageSimd;
    if (width <= height)
    {
      v19 = [(MTLComputePipelineState *)parallelReductionAverageSimd threadExecutionWidth]>> 2;
      v18 = 4;
    }

    else
    {
      v18 = [(MTLComputePipelineState *)parallelReductionAverageSimd threadExecutionWidth]>> 2;
      v19 = 4;
    }

    v8->_simdReductionThreadsPerGroup.width = v18;
    v8->_simdReductionThreadsPerGroup.height = v19;
    v8->_simdReductionThreadsPerGroup.depth = 1;
    v21 = width * height;
    v8->_numberOfElements = v21;
    v22 = objc_opt_new();
    v23 = width;
    v24 = height;
    v25 = 2 * v8->_simdReductionThreadsPerGroup.width;
    v26 = 2 * v8->_simdReductionThreadsPerGroup.height;
    if (v25 < width || v26 < v24)
    {
      do
      {
        v23 = vcvtps_s32_f32(v23 / v25);
        v24 = vcvtps_s32_f32(v24 / v26);
        v27 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:v23 height:v24 mipmapped:0];
        [v27 setUsage:19];
        [v27 setResourceOptions:0];
        v28 = [(MTLDevice *)v8->_device newTextureWithDescriptor:v27];
        [v22 addObject:v28];

        v25 = 2 * v8->_simdReductionThreadsPerGroup.width;
        v26 = 2 * v8->_simdReductionThreadsPerGroup.height;
      }

      while (v25 < v23 || v26 < v24);
    }

    v30 = [v22 copy];
    simdTextures = v8->_simdTextures;
    v8->_simdTextures = v30;

    v20 = v8;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end