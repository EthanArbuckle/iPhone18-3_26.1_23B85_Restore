@interface CVABilinearSampler
- (CVABilinearSampler)initWithDevice:(id)a3;
- (id)_initWithDevice:(id)a3 pipelineLabel:(id)a4 fragmentFunction:(id)a5;
- (void)encodeToCommandBuffer:(__n128)a3 sourceTexture:(__n128)a4 transform:(uint64_t)a5 destinationTexture:(void *)a6 destinationBoundingBox:(void *)a7;
@end

@implementation CVABilinearSampler

- (void)encodeToCommandBuffer:(__n128)a3 sourceTexture:(__n128)a4 transform:(uint64_t)a5 destinationTexture:(void *)a6 destinationBoundingBox:(void *)a7
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  if ([v15 mipmapLevelCount] >= 2)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CVABilinearSampler encodeToCommandBuffer:sourceTexture:transform:destinationTexture:destinationBoundingBox:]"];
    NSLog(&cfstr_DestinationTex.isa, v16);
  }

  v17 = [*(a1 + 16) colorAttachments];
  v18 = [v17 objectAtIndexedSubscript:0];
  [v18 setTexture:v15];

  v19 = [*(a1 + 16) colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:0];
  [v20 setLoadAction:0];

  v21 = [*(a1 + 16) colorAttachments];
  v22 = [v21 objectAtIndexedSubscript:0];
  [v22 setStoreAction:1];

  v23 = [*(a1 + 24) colorAttachments];
  v24 = [v23 objectAtIndexedSubscript:0];

  if (*(a1 + 32) && (v25 = [v24 pixelFormat], v25 == objc_msgSend(v15, "pixelFormat")))
  {
    v26 = 0;
  }

  else
  {
    [v24 setPixelFormat:objc_msgSend(v15, "pixelFormat")];
    v27 = *(a1 + 8);
    v28 = *(a1 + 24);
    v41 = 0;
    v29 = [v27 newRenderPipelineStateWithDescriptor:v28 error:&v41];
    v26 = v41;
    v30 = *(a1 + 32);
    *(a1 + 32) = v29;
  }

  v31 = [v13 renderCommandEncoderWithDescriptor:*(a1 + 16)];
  [v31 setLabel:@"BilinearSampler"];
  if (v31 && *(a1 + 32))
  {
    *(a1 + 80) = a2;
    *(a1 + 96) = a3;
    *(a1 + 112) = a4;
    [v31 setFragmentBytes:? length:? atIndex:?];
    LODWORD(v32) = *a9;
    *(&v32 + 1) = COERCE_FLOAT(HIDWORD(*a9)) + *(a9 + 12);
    *&v33 = *a9 + *(a9 + 8);
    *&v34 = *&v33;
    *(&v34 + 1) = *(&v32 + 1);
    HIDWORD(v33) = *(a9 + 4);
    *(a1 + 40) = *a9;
    *(a1 + 48) = v32;
    v35 = a1 + 40;
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    [v31 setRenderPipelineState:*(v35 - 8)];
    [v31 setCullMode:0];
    [v31 setFragmentTexture:v14 atIndex:0];
    [v31 setVertexBytes:v35 length:32 atIndex:0];
    [v31 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v31 endEncoding];
  }

  else
  {
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CVABilinearSampler encodeToCommandBuffer:sourceTexture:transform:destinationTexture:destinationBoundingBox:]"];
    v37 = [v26 localizedDescription];
    NSLog(&cfstr_Error_1.isa, v36, v37);
  }
}

- (id)_initWithDevice:(id)a3 pipelineLabel:(id)a4 fragmentFunction:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_storeStrong(&self->_device, a3);
  device = self->_device;
  v37 = 0;
  v13 = [VPCMetalLib metalLibraryWithDevice:device error:&v37];
  v14 = v37;
  if (v13)
  {
    v15 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    renderPassDescriptor = self->_renderPassDescriptor;
    self->_renderPassDescriptor = v15;

    v17 = objc_opt_new();
    renderPipelineDescriptor = self->_renderPipelineDescriptor;
    self->_renderPipelineDescriptor = v17;

    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setLabel:v10];
    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setRasterSampleCount:1];
    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setDepthAttachmentPixelFormat:0];
    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setStencilAttachmentPixelFormat:0];
    v19 = [v13 newFunctionWithName:@"bilinearSamplerVertexShader"];
    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setVertexFunction:v19];

    v20 = [v13 newFunctionWithName:v11];
    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setFragmentFunction:v20];

    v21 = [MEMORY[0x277CD7090] vertexDescriptor];
    v22 = [v21 attributes];
    v23 = [v22 objectAtIndexedSubscript:0];
    [v23 setFormat:29];

    v24 = [v21 attributes];
    v25 = [v24 objectAtIndexedSubscript:0];
    [v25 setOffset:0];

    v26 = [v21 attributes];
    v27 = [v26 objectAtIndexedSubscript:0];
    [v27 setBufferIndex:0];

    v28 = [v21 layouts];
    v29 = [v28 objectAtIndexedSubscript:0];
    [v29 setStride:8];

    v30 = [v21 layouts];
    v31 = [v30 objectAtIndexedSubscript:0];
    [v31 setStepRate:1];

    v32 = [v21 layouts];
    v33 = [v32 objectAtIndexedSubscript:0];
    [v33 setStepFunction:1];

    [(MTLRenderPipelineDescriptor *)self->_renderPipelineDescriptor setVertexDescriptor:v21];
    v34 = self;
  }

  else
  {
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CVABilinearSampler _initWithDevice:pipelineLabel:fragmentFunction:]"];
    v35 = [v14 localizedDescription];
    NSLog(&cfstr_Error_0.isa, v21, v35);

    v34 = 0;
  }

  return v34;
}

- (CVABilinearSampler)initWithDevice:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CVABilinearSampler;
  v5 = [(CVABilinearSampler *)&v8 init];
  if (v5)
  {
    v6 = [(CVABilinearSampler *)v5 _initWithDevice:v4 pipelineLabel:@"BilinearSamplerPipelinePerspectiveWarp" fragmentFunction:@"bilinearSamplerFragmentShaderPerspectiveWarp"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end