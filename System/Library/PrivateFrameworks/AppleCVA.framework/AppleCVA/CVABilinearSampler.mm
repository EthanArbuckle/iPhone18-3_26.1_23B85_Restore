@interface CVABilinearSampler
- (CVABilinearSampler)initWithDevice:(id)device;
- (id)_initWithDevice:(id)device pipelineLabel:(id)label fragmentFunction:(id)function;
- (void)encodeToCommandBuffer:(__n128)buffer sourceTexture:(__n128)texture transform:(uint64_t)transform destinationTexture:(void *)destinationTexture destinationBoundingBox:(void *)box;
@end

@implementation CVABilinearSampler

- (void)encodeToCommandBuffer:(__n128)buffer sourceTexture:(__n128)texture transform:(uint64_t)transform destinationTexture:(void *)destinationTexture destinationBoundingBox:(void *)box
{
  destinationTextureCopy = destinationTexture;
  boxCopy = box;
  v15 = a8;
  if ([v15 mipmapLevelCount] >= 2)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CVABilinearSampler encodeToCommandBuffer:sourceTexture:transform:destinationTexture:destinationBoundingBox:]"];
    NSLog(&cfstr_DestinationTex.isa, v16);
  }

  colorAttachments = [*(self + 16) colorAttachments];
  v18 = [colorAttachments objectAtIndexedSubscript:0];
  [v18 setTexture:v15];

  colorAttachments2 = [*(self + 16) colorAttachments];
  v20 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v20 setLoadAction:0];

  colorAttachments3 = [*(self + 16) colorAttachments];
  v22 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v22 setStoreAction:1];

  colorAttachments4 = [*(self + 24) colorAttachments];
  v24 = [colorAttachments4 objectAtIndexedSubscript:0];

  if (*(self + 32) && (v25 = [v24 pixelFormat], v25 == objc_msgSend(v15, "pixelFormat")))
  {
    v26 = 0;
  }

  else
  {
    [v24 setPixelFormat:objc_msgSend(v15, "pixelFormat")];
    v27 = *(self + 8);
    v28 = *(self + 24);
    v41 = 0;
    v29 = [v27 newRenderPipelineStateWithDescriptor:v28 error:&v41];
    v26 = v41;
    v30 = *(self + 32);
    *(self + 32) = v29;
  }

  v31 = [destinationTextureCopy renderCommandEncoderWithDescriptor:*(self + 16)];
  [v31 setLabel:@"BilinearSampler"];
  if (v31 && *(self + 32))
  {
    *(self + 80) = a2;
    *(self + 96) = buffer;
    *(self + 112) = texture;
    [v31 setFragmentBytes:? length:? atIndex:?];
    LODWORD(v32) = *a9;
    *(&v32 + 1) = COERCE_FLOAT(HIDWORD(*a9)) + *(a9 + 12);
    *&v33 = *a9 + *(a9 + 8);
    *&v34 = *&v33;
    *(&v34 + 1) = *(&v32 + 1);
    HIDWORD(v33) = *(a9 + 4);
    *(self + 40) = *a9;
    *(self + 48) = v32;
    v35 = self + 40;
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    [v31 setRenderPipelineState:*(v35 - 8)];
    [v31 setCullMode:0];
    [v31 setFragmentTexture:boxCopy atIndex:0];
    [v31 setVertexBytes:v35 length:32 atIndex:0];
    [v31 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v31 endEncoding];
  }

  else
  {
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CVABilinearSampler encodeToCommandBuffer:sourceTexture:transform:destinationTexture:destinationBoundingBox:]"];
    localizedDescription = [v26 localizedDescription];
    NSLog(&cfstr_Error_1.isa, v36, localizedDescription);
  }
}

- (id)_initWithDevice:(id)device pipelineLabel:(id)label fragmentFunction:(id)function
{
  deviceCopy = device;
  labelCopy = label;
  functionCopy = function;
  objc_storeStrong(&self->_device, device);
  device = self->_device;
  v37 = 0;
  v13 = [VPCMetalLib metalLibraryWithDevice:device error:&v37];
  v14 = v37;
  if (v13)
  {
    renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
    renderPassDescriptor = self->_renderPassDescriptor;
    self->_renderPassDescriptor = renderPassDescriptor;

    v17 = objc_opt_new();
    renderPipelineDescriptor = self->_renderPipelineDescriptor;
    self->_renderPipelineDescriptor = v17;

    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setLabel:labelCopy];
    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setRasterSampleCount:1];
    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setDepthAttachmentPixelFormat:0];
    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setStencilAttachmentPixelFormat:0];
    v19 = [v13 newFunctionWithName:@"bilinearSamplerVertexShader"];
    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setVertexFunction:v19];

    v20 = [v13 newFunctionWithName:functionCopy];
    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setFragmentFunction:v20];

    vertexDescriptor = [MEMORY[0x277CD7090] vertexDescriptor];
    attributes = [vertexDescriptor attributes];
    v23 = [attributes objectAtIndexedSubscript:0];
    [v23 setFormat:29];

    attributes2 = [vertexDescriptor attributes];
    v25 = [attributes2 objectAtIndexedSubscript:0];
    [v25 setOffset:0];

    attributes3 = [vertexDescriptor attributes];
    v27 = [attributes3 objectAtIndexedSubscript:0];
    [v27 setBufferIndex:0];

    layouts = [vertexDescriptor layouts];
    v29 = [layouts objectAtIndexedSubscript:0];
    [v29 setStride:8];

    layouts2 = [vertexDescriptor layouts];
    v31 = [layouts2 objectAtIndexedSubscript:0];
    [v31 setStepRate:1];

    layouts3 = [vertexDescriptor layouts];
    v33 = [layouts3 objectAtIndexedSubscript:0];
    [v33 setStepFunction:1];

    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setVertexDescriptor:vertexDescriptor];
    selfCopy = self;
  }

  else
  {
    vertexDescriptor = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CVABilinearSampler _initWithDevice:pipelineLabel:fragmentFunction:]"];
    localizedDescription = [v14 localizedDescription];
    NSLog(&cfstr_Error_0.isa, vertexDescriptor, localizedDescription);

    selfCopy = 0;
  }

  return selfCopy;
}

- (CVABilinearSampler)initWithDevice:(id)device
{
  deviceCopy = device;
  v8.receiver = self;
  v8.super_class = CVABilinearSampler;
  v5 = [(CVABilinearSampler *)&v8 init];
  if (v5)
  {
    v6 = [(CVABilinearSampler *)v5 _initWithDevice:deviceCopy pipelineLabel:@"BilinearSamplerPipelinePerspectiveWarp" fragmentFunction:@"bilinearSamplerFragmentShaderPerspectiveWarp"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end