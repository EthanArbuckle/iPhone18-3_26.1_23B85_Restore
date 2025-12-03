@interface XMattingBoxTensorFilter
+ (id)supportedPixelFormats;
- (XMattingBoxTensorFilter)initWithDevice:(id)device library:(id)library;
- (int)_compileShadersWithLibrary:(id)library;
- (int)allocateResources:(id)resources;
- (int)encodeOnCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture;
- (int)encodeSeparableSlidingStackOnCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture;
- (void)releaseResources;
@end

@implementation XMattingBoxTensorFilter

- (XMattingBoxTensorFilter)initWithDevice:(id)device library:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = XMattingBoxTensorFilter;
  v9 = [(XMattingBoxTensorFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_library, library);
    v10->_supportsReadWriteTextures = [deviceCopy readWriteTextureSupport] > 1;
  }

  return v10;
}

- (int)allocateResources:(id)resources
{
  v5 = [objc_alloc(MEMORY[0x1E6974580]) initWithDevice:self->_device kernelWidth:(2 * (resources.var0 & 0x7FFFFFFF)) | 1 kernelHeight:(2 * (resources.var0 & 0x7FFFFFFF)) | 1];
  boxfilter = self->_boxfilter;
  self->_boxfilter = v5;

  [(MPSImageBox *)self->_boxfilter setEdgeMode:0];
  *&self->_radius = resources;
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

- (int)encodeSeparableSlidingStackOnCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture
{
  destinationTextureCopy = destinationTexture;
  textureCopy = texture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_depthFilterSeparableSlidingStacks_arrayKernel];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationTextureCopy atIndex:1];

  [computeCommandEncoder setBytes:&self->_depthRadius length:4 atIndex:0];
  LODWORD(buffer) = [(MTLComputePipelineState *)self->_depthFilterSeparableSlidingStacks_arrayKernel threadExecutionWidth];
  LODWORD(destinationTextureCopy) = [(MTLComputePipelineState *)self->_depthFilterSeparableSlidingStacks_arrayKernel maxTotalThreadsPerThreadgroup]/ buffer;
  v11 = (buffer + [textureCopy width] - 1) / buffer;
  LODWORD(self) = [textureCopy height];

  v14[0] = v11;
  v14[1] = (destinationTextureCopy + self - 1) / destinationTextureCopy;
  v14[2] = 1;
  v13[0] = buffer;
  v13[1] = destinationTextureCopy;
  v13[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_compileShadersWithLibrary:(id)library
{
  libraryCopy = library;
  v5 = [libraryCopy newFunctionWithName:@"depthFilterSeparableSlidingStacks_array"];
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

    v9 = [libraryCopy newFunctionWithName:v8];

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

- (int)encodeOnCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture
{
  bufferCopy = buffer;
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  v11 = +[XMattingBoxTensorFilter supportedPixelFormats];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(textureCopy, "pixelFormat")}];
  v13 = [v11 containsObject:v12];

  if (v13 && (+[XMattingBoxTensorFilter supportedPixelFormats](XMattingBoxTensorFilter, "supportedPixelFormats"), v14 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(destinationTextureCopy, "pixelFormat")}], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "containsObject:", v15), v15, v14, v16) && (v17 = objc_msgSend(textureCopy, "width"), v17 == objc_msgSend(destinationTextureCopy, "width")) && (v18 = objc_msgSend(textureCopy, "height"), v18 == objc_msgSend(destinationTextureCopy, "height")) && (v19 = objc_msgSend(textureCopy, "arrayLength"), v19 == objc_msgSend(destinationTextureCopy, "arrayLength")) && objc_msgSend(textureCopy, "textureType") == 3 && objc_msgSend(destinationTextureCopy, "textureType") == 3)
  {
    v20 = destinationTextureCopy;
    [bufferCopy pushDebugGroup:@"encode"];
    v56 = destinationTextureCopy;
    if (self->_depthRadius)
    {
      v21 = [MEMORY[0x1E6974468] imageDescriptorWithChannelFormat:4 width:objc_msgSend(textureCopy height:"width") featureChannels:objc_msgSend(textureCopy numberOfImages:"height") usage:4, objc_msgSend(textureCopy, "arrayLength"), 19];
      v22 = [MEMORY[0x1E6974498] temporaryImageWithCommandBuffer:bufferCopy imageDescriptor:v21];
      textureType = [v22 textureType];
      v55 = v22;
      texture = [v22 texture];
      if (textureType == 3)
      {
        v25 = v20;
      }

      else
      {
        v26 = [texture newTextureViewWithPixelFormat:objc_msgSend(textureCopy textureType:"pixelFormat") levels:3 slices:0, 1, 0, objc_msgSend(textureCopy, "arrayLength")];

        v25 = texture;
        texture = v26;
      }
    }

    else
    {
      v55 = 0;
      texture = v20;
    }

    if ([textureCopy arrayLength])
    {
      v27 = 0;
      v57 = bufferCopy;
      do
      {
        pixelFormat = [textureCopy pixelFormat];
        v30 = OUTLINED_FUNCTION_0_7(textureCopy, v29, pixelFormat);
        pixelFormat2 = [texture pixelFormat];
        v33 = OUTLINED_FUNCTION_0_7(texture, v32, pixelFormat2);
        [(MPSImageBox *)self->_boxfilter encodeToCommandBuffer:bufferCopy sourceTexture:v30 destinationTexture:v33];
        if (!self->_supportsReadWriteTextures)
        {
          tmpTexture = self->_tmpTexture;
          if (!tmpTexture || (v35 = -[MTLTexture width](tmpTexture, "width"), v35 != [v33 width]) || (v36 = -[MTLTexture height](self->_tmpTexture, "height"), v36 != objc_msgSend(v33, "height")) || (v37 = -[MTLTexture pixelFormat](self->_tmpTexture, "pixelFormat"), v37 != objc_msgSend(v33, "pixelFormat")))
          {
            v38 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:objc_msgSend(v33 width:"pixelFormat") height:objc_msgSend(v33 mipmapped:"width"), objc_msgSend(v33, "height"), 0];
            if (!v38 || (v39 = v38, [v38 setUsage:3], objc_msgSend(texture, "device"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "newTextureWithDescriptor:", v39), v42 = self->_tmpTexture, self->_tmpTexture = v41, v42, v40, v43 = self->_tmpTexture, v39, !v43))
            {

              v52 = -12786;
              v51 = v55;
              destinationTextureCopy = v56;
              goto LABEL_32;
            }
          }

          blitCommandEncoder = [bufferCopy blitCommandEncoder];
          [blitCommandEncoder copyFromTexture:v33 toTexture:self->_tmpTexture];
          [blitCommandEncoder endEncoding];
        }

        computeCommandEncoder = [bufferCopy computeCommandEncoder];
        [computeCommandEncoder setComputePipelineState:self->_renormalizeFromMPSImageEdgeModeZeroKernel];
        if (self->_supportsReadWriteTextures)
        {
          v46 = 0;
        }

        else
        {
          [computeCommandEncoder setTexture:self->_tmpTexture atIndex:0];
          v46 = 1;
        }

        [computeCommandEncoder setTexture:v33 atIndex:v46];
        [computeCommandEncoder setBytes:&self->_radius length:4 atIndex:0];
        threadExecutionWidth = [(MTLComputePipelineState *)self->_renormalizeFromMPSImageEdgeModeZeroKernel threadExecutionWidth];
        v48 = [(MTLComputePipelineState *)self->_renormalizeFromMPSImageEdgeModeZeroKernel maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
        v49 = (threadExecutionWidth + [textureCopy width] - 1) / threadExecutionWidth;
        height = [textureCopy height];
        v59[0] = v49;
        v59[1] = (v48 + height - 1) / v48;
        v59[2] = 1;
        v58[0] = threadExecutionWidth;
        v58[1] = v48;
        v58[2] = 1;
        [computeCommandEncoder dispatchThreadgroups:v59 threadsPerThreadgroup:v58];
        [computeCommandEncoder endEncoding];

        ++v27;
        bufferCopy = v57;
      }

      while (v27 < [textureCopy arrayLength]);
    }

    v51 = v55;
    if (self->_depthRadius)
    {
      [(XMattingBoxTensorFilter *)self encodeSeparableSlidingStackOnCommandBuffer:bufferCopy sourceTexture:texture destinationTexture:v54];
      [v55 setReadCount:0];
    }

    [bufferCopy popDebugGroup];
    v52 = 0;
    destinationTextureCopy = v56;
LABEL_32:
  }

  else
  {
    v52 = -12780;
  }

  return v52;
}

@end