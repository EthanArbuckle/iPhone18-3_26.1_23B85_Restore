@interface CVAFilterDiffusion
- (CVAFilterDiffusion)initWithFigMetalContext:(id)context bufferWidth:(unint64_t)width bufferHeight:(unint64_t)height edgeVariance:(float)variance stepSize:(float)size error:(id *)error;
- (void)encodeDavidIterationToCommandBufferInternal:(id)internal priorTexture:(id)texture confidenceTexture:(id)confidenceTexture sourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture;
- (void)encodeDiffusionMapLaplacianToCommandBuffer:(id)buffer diffusionMapTexture:(id)texture outputLaplacian:(id)laplacian;
- (void)encodeEdgeLaplacianToCommandBuffer:(id)buffer colorTexture:(id)texture outputLaplacian:(id)laplacian;
- (void)encodeToCommandBuffer:(id)buffer priorTexture:(id)texture sourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture diffusionMapTexture:(id)mapTexture confidenceTexture:(id)confidenceTexture iterations:(unsigned int)iterations;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture colorTexture:(id)colorTexture iterations:(unsigned int)iterations;
- (void)encodeToCommandBufferInternal:(id)internal sourceTexture:(id)texture destinationTexture:(id)destinationTexture;
@end

@implementation CVAFilterDiffusion

- (void)encodeToCommandBuffer:(id)buffer priorTexture:(id)texture sourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture diffusionMapTexture:(id)mapTexture confidenceTexture:(id)confidenceTexture iterations:(unsigned int)iterations
{
  bufferCopy = buffer;
  textureCopy = texture;
  sourceTextureCopy = sourceTexture;
  destinationTextureCopy = destinationTexture;
  mapTextureCopy = mapTexture;
  confidenceTextureCopy = confidenceTexture;
  if (iterations)
  {
    v29 = destinationTextureCopy;
    v20 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut32_1;
    v21 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut32_0;
    if ([sourceTextureCopy pixelFormat] != 55 && objc_msgSend(v29, "pixelFormat") != 55)
    {
      v21 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut16_0;
      v20 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut16_1;
    }

    v22 = *(&self->super.super.isa + *v21);
    v23 = *(&self->super.super.isa + *v20);
    [(CVAFilterDiffusion *)self encodeDiffusionMapLaplacianToCommandBuffer:bufferCopy diffusionMapTexture:mapTextureCopy outputLaplacian:self->_laplacian];
    v24 = iterations - 1;
    if (iterations == 1)
    {
      [(CVAFilterDiffusion *)self encodeDavidIterationToCommandBufferInternal:bufferCopy priorTexture:textureCopy confidenceTexture:confidenceTextureCopy sourceTexture:sourceTextureCopy destinationTexture:v29];
    }

    else
    {
      [(CVAFilterDiffusion *)self encodeDavidIterationToCommandBufferInternal:bufferCopy priorTexture:textureCopy confidenceTexture:confidenceTextureCopy sourceTexture:sourceTextureCopy destinationTexture:v23];
      if (v24 < 2)
      {
        v27 = v22;
        v26 = v29;
      }

      else
      {
        v26 = v29;
        do
        {
          v27 = v23;
          v23 = v22;
          [(CVAFilterDiffusion *)self encodeDavidIterationToCommandBufferInternal:bufferCopy priorTexture:textureCopy confidenceTexture:confidenceTextureCopy sourceTexture:v27 destinationTexture:v22];
          --v24;
          v22 = v27;
        }

        while (v24 > 1);
      }

      v22 = v23;
      v28 = v23;
      v23 = v27;
      [(CVAFilterDiffusion *)self encodeDavidIterationToCommandBufferInternal:bufferCopy priorTexture:textureCopy confidenceTexture:confidenceTextureCopy sourceTexture:v28 destinationTexture:v26];
    }

    destinationTextureCopy = v29;
  }

  else
  {
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    memset(v33, 0, sizeof(v33));
    v32[0] = [sourceTextureCopy width];
    v32[1] = [sourceTextureCopy height];
    v32[2] = 1;
    memset(v31, 0, sizeof(v31));
    [blitCommandEncoder copyFromTexture:sourceTextureCopy sourceSlice:0 sourceLevel:0 sourceOrigin:v33 sourceSize:v32 toTexture:destinationTextureCopy destinationSlice:0 destinationLevel:0 destinationOrigin:v31];
    [blitCommandEncoder endEncoding];
  }
}

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture colorTexture:(id)colorTexture iterations:(unsigned int)iterations
{
  bufferCopy = buffer;
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  colorTextureCopy = colorTexture;
  if (iterations)
  {
    v16 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut32_1;
    v17 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut32_0;
    if ([textureCopy pixelFormat] != 55 && objc_msgSend(destinationTextureCopy, "pixelFormat") != 55)
    {
      v17 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut16_0;
      v16 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut16_1;
    }

    v18 = *(&self->super.super.isa + *v17);
    v19 = *(&self->super.super.isa + *v16);
    [(CVAFilterDiffusion *)self encodeEdgeLaplacianToCommandBuffer:bufferCopy colorTexture:colorTextureCopy outputLaplacian:self->_laplacian];
    v20 = iterations - 1;
    if (iterations == 1)
    {
      [(CVAFilterDiffusion *)self encodeToCommandBufferInternal:bufferCopy sourceTexture:textureCopy destinationTexture:destinationTextureCopy];
    }

    else
    {
      [(CVAFilterDiffusion *)self encodeToCommandBufferInternal:bufferCopy sourceTexture:textureCopy destinationTexture:v19];
      if (v20 < 2)
      {
        v22 = v18;
      }

      else
      {
        do
        {
          v22 = v19;
          v19 = v18;
          [(CVAFilterDiffusion *)self encodeToCommandBufferInternal:bufferCopy sourceTexture:v22 destinationTexture:v18];
          --v20;
          v18 = v22;
        }

        while (v20 > 1);
      }

      v18 = v19;
      v23 = v19;
      v19 = v22;
      [(CVAFilterDiffusion *)self encodeToCommandBufferInternal:bufferCopy sourceTexture:v23 destinationTexture:destinationTextureCopy];
    }
  }

  else
  {
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    memset(v26, 0, sizeof(v26));
    v25[0] = [textureCopy width];
    v25[1] = [textureCopy height];
    v25[2] = 1;
    memset(v24, 0, sizeof(v24));
    [blitCommandEncoder copyFromTexture:textureCopy sourceSlice:0 sourceLevel:0 sourceOrigin:v26 sourceSize:v25 toTexture:destinationTextureCopy destinationSlice:0 destinationLevel:0 destinationOrigin:v24];
    [blitCommandEncoder endEncoding];
  }
}

- (void)encodeDiffusionMapLaplacianToCommandBuffer:(id)buffer diffusionMapTexture:(id)texture outputLaplacian:(id)laplacian
{
  textureCopy = texture;
  laplacianCopy = laplacian;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_createDiffusionMapLaplacianKernel"];
  [computeCommandEncoder setComputePipelineState:self->_createDiffusionMapLaplacianKernel];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:laplacianCopy atIndex:1];
  v13[0] = ([textureCopy width] + 15) >> 4;
  v13[1] = ([textureCopy height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [computeCommandEncoder endEncoding];
}

- (void)encodeEdgeLaplacianToCommandBuffer:(id)buffer colorTexture:(id)texture outputLaplacian:(id)laplacian
{
  textureCopy = texture;
  laplacianCopy = laplacian;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_createEdgeLaplacianKernel"];
  [computeCommandEncoder setComputePipelineState:self->_createEdgeLaplacianKernel];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:laplacianCopy atIndex:1];
  [computeCommandEncoder setBuffer:self->_edgeLaplacianConfigImmutable offset:0 atIndex:0];
  v13[0] = ([textureCopy width] + 15) >> 4;
  v13[1] = ([textureCopy height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [computeCommandEncoder endEncoding];
}

- (void)encodeDavidIterationToCommandBufferInternal:(id)internal priorTexture:(id)texture confidenceTexture:(id)confidenceTexture sourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture
{
  textureCopy = texture;
  confidenceTextureCopy = confidenceTexture;
  sourceTextureCopy = sourceTexture;
  destinationTextureCopy = destinationTexture;
  computeCommandEncoder = [internal computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_laplacianDavidKernel"];
  [computeCommandEncoder setComputePipelineState:self->_laplacianDavidKernel];
  [computeCommandEncoder setTexture:self->_laplacian atIndex:0];
  [computeCommandEncoder setTexture:confidenceTextureCopy atIndex:1];
  [computeCommandEncoder setTexture:textureCopy atIndex:2];
  [computeCommandEncoder setTexture:sourceTextureCopy atIndex:3];
  [computeCommandEncoder setTexture:destinationTextureCopy atIndex:4];
  [computeCommandEncoder setBuffer:self->_davidConfigImmutable offset:0 atIndex:0];
  v19[0] = ([sourceTextureCopy width] + 15) >> 4;
  v19[1] = ([sourceTextureCopy height] + 15) >> 4;
  v19[2] = 1;
  v17 = xmmword_1DED747F0;
  v18 = 1;
  [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
}

- (void)encodeToCommandBufferInternal:(id)internal sourceTexture:(id)texture destinationTexture:(id)destinationTexture
{
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  computeCommandEncoder = [internal computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_laplacianJacobiKernel"];
  [computeCommandEncoder setComputePipelineState:self->_laplacianJacobiKernel];
  [computeCommandEncoder setTexture:self->_laplacian atIndex:0];
  [computeCommandEncoder setTexture:textureCopy atIndex:1];
  [computeCommandEncoder setTexture:destinationTextureCopy atIndex:2];
  [computeCommandEncoder setBuffer:self->_jacobiConfigImmutable offset:0 atIndex:0];
  v13[0] = ([textureCopy width] + 15) >> 4;
  v13[1] = ([textureCopy height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [computeCommandEncoder endEncoding];
}

- (CVAFilterDiffusion)initWithFigMetalContext:(id)context bufferWidth:(unint64_t)width bufferHeight:(unint64_t)height edgeVariance:(float)variance stepSize:(float)size error:(id *)error
{
  contextCopy = context;
  v36.receiver = self;
  v36.super_class = CVAFilterDiffusion;
  v15 = [(ImageSaverRegistrator *)&v36 init];
  if (v15)
  {
    device = [contextCopy device];
    v15->_width = width;
    v15->_height = height;
    v15->_edgeVariance = variance;
    width = v15->_width;
    v18 = sub_1DED6FDC8(device, 115, width, height, 0, error);
    laplacian = v15->_laplacian;
    v15->_laplacian = v18;

    v20 = sub_1DED6FDC8(device, 25, width, height, 0, error);
    tmpOut16_0 = v15->_tmpOut16_0;
    v15->_tmpOut16_0 = v20;

    v22 = sub_1DED6FDC8(device, 25, width, height, 0, error);
    tmpOut16_1 = v15->_tmpOut16_1;
    v15->_tmpOut16_1 = v22;

    v24 = sub_1DED6FDC8(device, 55, width, height, 0, error);
    tmpOut32_0 = v15->_tmpOut32_0;
    v15->_tmpOut32_0 = v24;

    v26 = sub_1DED6FDC8(device, 55, width, height, 0, error);
    tmpOut32_1 = v15->_tmpOut32_1;
    v15->_tmpOut32_1 = v26;

    v28 = [device newBufferWithLength:4 options:0];
    edgeLaplacianConfigImmutable = v15->_edgeLaplacianConfigImmutable;
    v15->_edgeLaplacianConfigImmutable = v28;

    *[(MTLBuffer *)v15->_edgeLaplacianConfigImmutable contents]= -1.0 / (variance + variance);
    v30 = [device newBufferWithLength:4 options:0];
    jacobiConfigImmutable = v15->_jacobiConfigImmutable;
    v15->_jacobiConfigImmutable = v30;

    *[(MTLBuffer *)v15->_jacobiConfigImmutable contents]= size;
    v32 = [device newBufferWithLength:4 options:0];
    davidConfigImmutable = v15->_davidConfigImmutable;
    v15->_davidConfigImmutable = v32;

    *[(MTLBuffer *)v15->_davidConfigImmutable contents]= 1061997773;
    sub_1DED422A0(&v15->_createEdgeLaplacianKernel, contextCopy, @"createEdgeLaplacian", 0);
    sub_1DED422A0(&v15->_createDiffusionMapLaplacianKernel, contextCopy, @"createDiffusionMapLaplacian", 0);
    sub_1DED422A0(&v15->_laplacianJacobiKernel, contextCopy, @"laplacianJacobi", 0);
    sub_1DED422A0(&v15->_laplacianDavidKernel, contextCopy, @"laplacianDavid", 0);
    v34 = v15;
  }

  return v15;
}

@end