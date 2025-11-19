@interface XMattingBoxTensorFilter
+ (id)supportedPixelFormats;
- (XMattingBoxTensorFilter)initWithDevice:(id)a3 library:(id)a4;
- (int)_compileShadersWithLibrary:(id)a3;
- (int)allocateResources:(id)a3;
- (int)encodeOnCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5;
- (int)encodeSeparableSlidingStackOnCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5;
- (void)releaseResources;
@end

@implementation XMattingBoxTensorFilter

- (XMattingBoxTensorFilter)initWithDevice:(id)a3 library:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = XMattingBoxTensorFilter;
  v9 = [(XMattingBoxTensorFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_library, a4);
    v10->_supportsReadWriteTextures = [v7 readWriteTextureSupport] > 1;
  }

  return v10;
}

- (int)allocateResources:(id)a3
{
  v5 = [objc_alloc(MEMORY[0x1E6974580]) initWithDevice:self->_device kernelWidth:(2 * (a3.var0 & 0x7FFFFFFF)) | 1 kernelHeight:(2 * (a3.var0 & 0x7FFFFFFF)) | 1];
  boxfilter = self->_boxfilter;
  self->_boxfilter = v5;

  [(MPSImageBox *)self->_boxfilter setEdgeMode:0];
  *&self->_radius = a3;
  v7 = [(XMattingBoxTensorFilter *)self _compileShadersWithLibrary:self->_library];
  if (v7)
  {
    [(XMattingBoxTensorFilter *)self releaseResources];
  }

  return v7;
}

- (void)releaseResources
{
  boxfilter = self->_boxfilter;
  self->_boxfilter = 0;

  tmpTexture = self->_tmpTexture;
  self->_tmpTexture = 0;

  depthFilterSeparableSlidingStacks_arrayKernel = self->_depthFilterSeparableSlidingStacks_arrayKernel;
  self->_depthFilterSeparableSlidingStacks_arrayKernel = 0;

  renormalizeFromMPSImageEdgeModeZeroKernel = self->_renormalizeFromMPSImageEdgeModeZeroKernel;
  self->_renormalizeFromMPSImageEdgeModeZeroKernel = 0;
}

+ (id)supportedPixelFormats
{
  if (supportedPixelFormats_onceToken != -1)
  {
    +[XMattingBoxTensorFilter supportedPixelFormats];
  }

  v3 = _supportedPixelFormats;

  return v3;
}

uint64_t __48__XMattingBoxTensorFilter_supportedPixelFormats__block_invoke()
{
  _supportedPixelFormats = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1085698];

  return MEMORY[0x1EEE66BB8]();
}

- (int)encodeSeparableSlidingStackOnCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_depthFilterSeparableSlidingStacks_arrayKernel];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];

  [v10 setBytes:&self->_depthRadius length:4 atIndex:0];
  LODWORD(a3) = [(MTLComputePipelineState *)self->_depthFilterSeparableSlidingStacks_arrayKernel threadExecutionWidth];
  LODWORD(v8) = [(MTLComputePipelineState *)self->_depthFilterSeparableSlidingStacks_arrayKernel maxTotalThreadsPerThreadgroup]/ a3;
  v11 = (a3 + [v9 width] - 1) / a3;
  LODWORD(self) = [v9 height];

  v14[0] = v11;
  v14[1] = (v8 + self - 1) / v8;
  v14[2] = 1;
  v13[0] = a3;
  v13[1] = v8;
  v13[2] = 1;
  [v10 dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [v10 endEncoding];

  return 0;
}

- (int)_compileShadersWithLibrary:(id)a3
{
  v4 = a3;
  v5 = [v4 newFunctionWithName:@"depthFilterSeparableSlidingStacks_array"];
  v6 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v5 error:0];
  depthFilterSeparableSlidingStacks_arrayKernel = self->_depthFilterSeparableSlidingStacks_arrayKernel;
  self->_depthFilterSeparableSlidingStacks_arrayKernel = v6;

  if (self->_depthFilterSeparableSlidingStacks_arrayKernel)
  {
    if (self->_supportsReadWriteTextures)
    {
      v8 = @"renormalizeFromMPSImageEdgeModeZero_RWS";
    }

    else
    {
      v8 = @"renormalizeFromMPSImageEdgeModeZero";
    }

    v9 = [v4 newFunctionWithName:v8];

    v10 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v9 error:0];
    renormalizeFromMPSImageEdgeModeZeroKernel = self->_renormalizeFromMPSImageEdgeModeZeroKernel;
    self->_renormalizeFromMPSImageEdgeModeZeroKernel = v10;

    if (self->_renormalizeFromMPSImageEdgeModeZeroKernel)
    {
      v12 = 0;
    }

    else
    {
      v12 = -12786;
    }

    v5 = v9;
  }

  else
  {
    v12 = -12786;
  }

  return v12;
}

- (int)encodeOnCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[XMattingBoxTensorFilter supportedPixelFormats];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "pixelFormat")}];
  v13 = [v11 containsObject:v12];

  if (v13 && (+[XMattingBoxTensorFilter supportedPixelFormats](XMattingBoxTensorFilter, "supportedPixelFormats"), v14 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "pixelFormat")}], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "containsObject:", v15), v15, v14, v16) && (v17 = objc_msgSend(v9, "width"), v17 == objc_msgSend(v10, "width")) && (v18 = objc_msgSend(v9, "height"), v18 == objc_msgSend(v10, "height")) && (v19 = objc_msgSend(v9, "arrayLength"), v19 == objc_msgSend(v10, "arrayLength")) && objc_msgSend(v9, "textureType") == 3 && objc_msgSend(v10, "textureType") == 3)
  {
    v20 = v10;
    [v8 pushDebugGroup:@"encode"];
    v56 = v10;
    if (self->_depthRadius)
    {
      v21 = [MEMORY[0x1E6974468] imageDescriptorWithChannelFormat:4 width:objc_msgSend(v9 height:"width") featureChannels:objc_msgSend(v9 numberOfImages:"height") usage:4, objc_msgSend(v9, "arrayLength"), 19];
      v22 = [MEMORY[0x1E6974498] temporaryImageWithCommandBuffer:v8 imageDescriptor:v21];
      v23 = [v22 textureType];
      v55 = v22;
      v24 = [v22 texture];
      if (v23 == 3)
      {
        v25 = v20;
      }

      else
      {
        v26 = [v24 newTextureViewWithPixelFormat:objc_msgSend(v9 textureType:"pixelFormat") levels:3 slices:0, 1, 0, objc_msgSend(v9, "arrayLength")];

        v25 = v24;
        v24 = v26;
      }
    }

    else
    {
      v55 = 0;
      v24 = v20;
    }

    if ([v9 arrayLength])
    {
      v27 = 0;
      v57 = v8;
      do
      {
        v28 = [v9 pixelFormat];
        v30 = OUTLINED_FUNCTION_0_7(v9, v29, v28);
        v31 = [v24 pixelFormat];
        v33 = OUTLINED_FUNCTION_0_7(v24, v32, v31);
        [(MPSImageBox *)self->_boxfilter encodeToCommandBuffer:v8 sourceTexture:v30 destinationTexture:v33];
        if (!self->_supportsReadWriteTextures)
        {
          tmpTexture = self->_tmpTexture;
          if (!tmpTexture || (v35 = -[MTLTexture width](tmpTexture, "width"), v35 != [v33 width]) || (v36 = -[MTLTexture height](self->_tmpTexture, "height"), v36 != objc_msgSend(v33, "height")) || (v37 = -[MTLTexture pixelFormat](self->_tmpTexture, "pixelFormat"), v37 != objc_msgSend(v33, "pixelFormat")))
          {
            v38 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:objc_msgSend(v33 width:"pixelFormat") height:objc_msgSend(v33 mipmapped:"width"), objc_msgSend(v33, "height"), 0];
            if (!v38 || (v39 = v38, [v38 setUsage:3], objc_msgSend(v24, "device"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "newTextureWithDescriptor:", v39), v42 = self->_tmpTexture, self->_tmpTexture = v41, v42, v40, v43 = self->_tmpTexture, v39, !v43))
            {

              v52 = -12786;
              v51 = v55;
              v10 = v56;
              goto LABEL_32;
            }
          }

          v44 = [v8 blitCommandEncoder];
          [v44 copyFromTexture:v33 toTexture:self->_tmpTexture];
          [v44 endEncoding];
        }

        v45 = [v8 computeCommandEncoder];
        [v45 setComputePipelineState:self->_renormalizeFromMPSImageEdgeModeZeroKernel];
        if (self->_supportsReadWriteTextures)
        {
          v46 = 0;
        }

        else
        {
          [v45 setTexture:self->_tmpTexture atIndex:0];
          v46 = 1;
        }

        [v45 setTexture:v33 atIndex:v46];
        [v45 setBytes:&self->_radius length:4 atIndex:0];
        v47 = [(MTLComputePipelineState *)self->_renormalizeFromMPSImageEdgeModeZeroKernel threadExecutionWidth];
        v48 = [(MTLComputePipelineState *)self->_renormalizeFromMPSImageEdgeModeZeroKernel maxTotalThreadsPerThreadgroup]/ v47;
        v49 = (v47 + [v9 width] - 1) / v47;
        v50 = [v9 height];
        v59[0] = v49;
        v59[1] = (v48 + v50 - 1) / v48;
        v59[2] = 1;
        v58[0] = v47;
        v58[1] = v48;
        v58[2] = 1;
        [v45 dispatchThreadgroups:v59 threadsPerThreadgroup:v58];
        [v45 endEncoding];

        ++v27;
        v8 = v57;
      }

      while (v27 < [v9 arrayLength]);
    }

    v51 = v55;
    if (self->_depthRadius)
    {
      [(XMattingBoxTensorFilter *)self encodeSeparableSlidingStackOnCommandBuffer:v8 sourceTexture:v24 destinationTexture:v54];
      [v55 setReadCount:0];
    }

    [v8 popDebugGroup];
    v52 = 0;
    v10 = v56;
LABEL_32:
  }

  else
  {
    v52 = -12780;
  }

  return v52;
}

@end