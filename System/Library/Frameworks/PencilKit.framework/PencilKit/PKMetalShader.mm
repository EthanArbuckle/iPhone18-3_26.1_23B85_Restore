@interface PKMetalShader
- (id)msaaPipelineStateWithSampleCount:(id *)count;
- (id)pipelineStateDescriptorSampleCount:(uint64_t)count;
- (uint64_t)initWithVertexFunction:(void *)function fragmentFunction:(uint64_t)fragmentFunction blendMode:(uint64_t)mode colorAttachmentIndex:(void *)index sharedPipelineDescriptor:(uint64_t)descriptor numColorAttachments:;
- (uint64_t)newShaderWithBlendMode:(void *)mode;
- (void)shaderWithBlendMode:(void *)mode;
@end

@implementation PKMetalShader

- (uint64_t)initWithVertexFunction:(void *)function fragmentFunction:(uint64_t)fragmentFunction blendMode:(uint64_t)mode colorAttachmentIndex:(void *)index sharedPipelineDescriptor:(uint64_t)descriptor numColorAttachments:
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = a2;
  functionCopy = function;
  indexCopy = index;
  if (self)
  {
    v25.receiver = self;
    v25.super_class = PKMetalShader;
    v17 = objc_msgSendSuper2(&v25, sel_init);
    self = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 1, a2);
      objc_storeStrong((self + 16), function);
      *(self + 64) = fragmentFunction;
      *(self + 72) = mode;
      objc_storeStrong((self + 80), index);
      *(self + 88) = descriptor;
      device = [*(self + 8) device];
      v19 = [(PKMetalShader *)self pipelineStateDescriptorSampleCount:?];
      v26 = 0;
      v20 = [device newRenderPipelineStateWithDescriptor:v19 error:&v26];
      v21 = v26;
      v22 = *(self + 24);
      *(self + 24) = v20;

      if (!*(self + 24))
      {
        v23 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v21;
          _os_log_error_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_ERROR, "Error creating pipeline state: %@", buf, 0xCu);
        }
      }
    }
  }

  return self;
}

- (id)pipelineStateDescriptorSampleCount:(uint64_t)count
{
  v4 = objc_alloc_init(MEMORY[0x1E6974148]);
  pipelineLibrary = [*(count + 80) pipelineLibrary];
  [v4 setPipelineLibrary:pipelineLibrary];

  [v4 setLabel:@"Pipeline State"];
  [v4 setVertexFunction:*(count + 8)];
  [v4 setFragmentFunction:*(count + 16)];
  if (*(count + 88))
  {
    v6 = 0;
    do
    {
      colorAttachments = [*(count + 80) colorAttachments];
      v8 = [colorAttachments objectAtIndexedSubscript:v6];
      pixelFormat = [v8 pixelFormat];
      colorAttachments2 = [v4 colorAttachments];
      v11 = [colorAttachments2 objectAtIndexedSubscript:v6];
      [v11 setPixelFormat:pixelFormat];

      ++v6;
    }

    while (v6 < *(count + 88));
  }

  [v4 setStencilAttachmentPixelFormat:objc_msgSend(*(count + 80), "stencilAttachmentPixelFormat")];
  if (*(count + 64))
  {
    colorAttachments3 = [v4 colorAttachments];
    v13 = [colorAttachments3 objectAtIndexedSubscript:*(count + 72)];

    [v13 setBlendingEnabled:1];
    v14 = *(count + 64);
    if (v14 <= 4)
    {
      if ((v14 - 2) >= 3)
      {
        if (v14 == 1)
        {
          [v13 setRgbBlendOperation:4];
          [v13 setAlphaBlendOperation:4];
        }

        goto LABEL_26;
      }

      v15 = 2 * (v14 == 4);
      [v13 setRgbBlendOperation:v15];
      [v13 setAlphaBlendOperation:v15];
      [v13 setSourceRGBBlendFactor:1];
      [v13 setSourceAlphaBlendFactor:1];
      if (*(count + 64) == 3)
      {
        v16 = 3;
      }

      else
      {
        v16 = 5;
      }

      [v13 setDestinationRGBBlendFactor:v16];
      if (*(count + 64) == 3)
      {
        v17 = 1;
      }

      else
      {
        v17 = 5;
      }

      v18 = v13;
      goto LABEL_25;
    }

    if (v14 > 6)
    {
      if (v14 == 7)
      {
        [v13 setRgbBlendOperation:0];
        [v13 setAlphaBlendOperation:0];
        [v13 setSourceRGBBlendFactor:6];
        [v13 setSourceAlphaBlendFactor:0];
        [v13 setDestinationRGBBlendFactor:5];
        v18 = v13;
        v17 = 1;
        goto LABEL_25;
      }

      if (v14 != 8)
      {
LABEL_26:

        goto LABEL_27;
      }

      [v13 setRgbBlendOperation:0];
      [v13 setAlphaBlendOperation:0];
      [v13 setSourceRGBBlendFactor:1];
      [v13 setSourceAlphaBlendFactor:1];
      v19 = v13;
      v20 = 5;
    }

    else
    {
      if (v14 == 5)
      {
        [v13 setRgbBlendOperation:0];
        [v13 setAlphaBlendOperation:0];
        [v13 setSourceRGBBlendFactor:7];
        [v13 setSourceAlphaBlendFactor:9];
        [v13 setDestinationRGBBlendFactor:0];
        v18 = v13;
        v17 = 0;
        goto LABEL_25;
      }

      [v13 setRgbBlendOperation:0];
      [v13 setAlphaBlendOperation:0];
      [v13 setSourceRGBBlendFactor:1];
      [v13 setSourceAlphaBlendFactor:1];
      v19 = v13;
      v20 = 1;
    }

    [v19 setDestinationRGBBlendFactor:v20];
    v18 = v13;
    v17 = 5;
LABEL_25:
    [v18 setDestinationAlphaBlendFactor:v17];
    goto LABEL_26;
  }

LABEL_27:
  [v4 setRasterSampleCount:a2];

  return v4;
}

- (id)msaaPipelineStateWithSampleCount:(id *)count
{
  v16 = *MEMORY[0x1E69E9840];
  if (count)
  {
    if (a2 == 1)
    {
      v3 = count[3];
    }

    else
    {
      countCopy = count;
      objc_sync_enter(countCopy);
      v5 = countCopy[5];
      if (!v5 || countCopy[21] != a2)
      {
        device = [countCopy[1] device];
        v7 = [(PKMetalShader *)countCopy pipelineStateDescriptorSampleCount:a2];
        v13 = 0;
        v8 = [device newRenderPipelineStateWithDescriptor:v7 error:&v13];
        v9 = v13;
        v10 = countCopy[5];
        countCopy[5] = v8;

        countCopy[21] = a2;
        if (!countCopy[5])
        {
          v11 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v15 = v9;
            _os_log_error_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_ERROR, "Error creating pipeline state: %@", buf, 0xCu);
          }
        }

        v5 = countCopy[5];
      }

      v3 = v5;
      objc_sync_exit(countCopy);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)newShaderWithBlendMode:(void *)mode
{
  v4 = [PKMetalShader alloc];
  v5 = mode[1];
  v6 = mode[2];
  v7 = mode[9];
  v8 = mode[10];
  v9 = mode[11];

  return [(PKMetalShader *)v4 initWithVertexFunction:v5 fragmentFunction:v6 blendMode:a2 colorAttachmentIndex:v7 sharedPipelineDescriptor:v8 numColorAttachments:v9];
}

- (void)shaderWithBlendMode:(void *)mode
{
  if (mode)
  {
    v3 = mode[8];
    modeCopy = mode;
    v5 = modeCopy;
    if (v3 == a2)
    {
      goto LABEL_33;
    }

    objc_sync_enter(modeCopy);
    if (a2 <= 3)
    {
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          v7 = v5 + 13;
          v6 = v5[13];
          if (v6)
          {
            goto LABEL_32;
          }

          v8 = [(PKMetalShader *)v5 newShaderWithBlendMode:?];
        }

        else
        {
          v7 = v5 + 14;
          v6 = v5[14];
          if (v6)
          {
            goto LABEL_32;
          }

          v8 = [(PKMetalShader *)v5 newShaderWithBlendMode:?];
        }
      }

      else
      {
        if (a2)
        {
          v6 = v5;
          if (a2 != 1)
          {
            goto LABEL_32;
          }

          v7 = v5 + 19;
          v6 = v5[19];
          if (v6)
          {
            goto LABEL_32;
          }

          v8 = [(PKMetalShader *)v5 newShaderWithBlendMode:?];
          goto LABEL_31;
        }

        v7 = v5 + 12;
        v6 = v5[12];
        if (v6)
        {
          goto LABEL_32;
        }

        v8 = [(PKMetalShader *)v5 newShaderWithBlendMode:?];
      }
    }

    else if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v7 = v5 + 18;
        v6 = v5[18];
        if (v6)
        {
          goto LABEL_32;
        }

        v8 = [(PKMetalShader *)v5 newShaderWithBlendMode:?];
      }

      else
      {
        v7 = v5 + 20;
        v6 = v5[20];
        if (v6)
        {
          goto LABEL_32;
        }

        v8 = [(PKMetalShader *)v5 newShaderWithBlendMode:?];
      }
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          v6 = v5;
          if (a2 != 8)
          {
            goto LABEL_32;
          }

          v7 = v5 + 17;
          v6 = v5[17];
          if (v6)
          {
            goto LABEL_32;
          }

          v8 = [(PKMetalShader *)v5 newShaderWithBlendMode:?];
          goto LABEL_31;
        }

        v7 = v5 + 16;
        v6 = v5[16];
        if (!v6)
        {
          v8 = [(PKMetalShader *)v5 newShaderWithBlendMode:?];
          goto LABEL_31;
        }

LABEL_32:
        v10 = v6;
        objc_sync_exit(v5);

        v5 = v10;
        goto LABEL_33;
      }

      v7 = v5 + 15;
      v6 = v5[15];
      if (v6)
      {
        goto LABEL_32;
      }

      v8 = [(PKMetalShader *)v5 newShaderWithBlendMode:?];
    }

LABEL_31:
    v9 = *v7;
    *v7 = v8;

    v6 = *v7;
    goto LABEL_32;
  }

  v5 = 0;
LABEL_33:

  return v5;
}

@end