@interface CVAFilterDiffusion
- (CVAFilterDiffusion)initWithFigMetalContext:(id)a3 bufferWidth:(unint64_t)a4 bufferHeight:(unint64_t)a5 edgeVariance:(float)a6 stepSize:(float)a7 error:(id *)a8;
- (void)encodeDavidIterationToCommandBufferInternal:(id)a3 priorTexture:(id)a4 confidenceTexture:(id)a5 sourceTexture:(id)a6 destinationTexture:(id)a7;
- (void)encodeDiffusionMapLaplacianToCommandBuffer:(id)a3 diffusionMapTexture:(id)a4 outputLaplacian:(id)a5;
- (void)encodeEdgeLaplacianToCommandBuffer:(id)a3 colorTexture:(id)a4 outputLaplacian:(id)a5;
- (void)encodeToCommandBuffer:(id)a3 priorTexture:(id)a4 sourceTexture:(id)a5 destinationTexture:(id)a6 diffusionMapTexture:(id)a7 confidenceTexture:(id)a8 iterations:(unsigned int)a9;
- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 colorTexture:(id)a6 iterations:(unsigned int)a7;
- (void)encodeToCommandBufferInternal:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5;
@end

@implementation CVAFilterDiffusion

- (void)encodeToCommandBuffer:(id)a3 priorTexture:(id)a4 sourceTexture:(id)a5 destinationTexture:(id)a6 diffusionMapTexture:(id)a7 confidenceTexture:(id)a8 iterations:(unsigned int)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v30 = a7;
  v19 = a8;
  if (a9)
  {
    v29 = v18;
    v20 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut32_1;
    v21 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut32_0;
    if ([v17 pixelFormat] != 55 && objc_msgSend(v29, "pixelFormat") != 55)
    {
      v21 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut16_0;
      v20 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut16_1;
    }

    v22 = *(&self->super.super.isa + *v21);
    v23 = *(&self->super.super.isa + *v20);
    [(CVAFilterDiffusion *)self encodeDiffusionMapLaplacianToCommandBuffer:v15 diffusionMapTexture:v30 outputLaplacian:self->_laplacian];
    v24 = a9 - 1;
    if (a9 == 1)
    {
      [(CVAFilterDiffusion *)self encodeDavidIterationToCommandBufferInternal:v15 priorTexture:v16 confidenceTexture:v19 sourceTexture:v17 destinationTexture:v29];
    }

    else
    {
      [(CVAFilterDiffusion *)self encodeDavidIterationToCommandBufferInternal:v15 priorTexture:v16 confidenceTexture:v19 sourceTexture:v17 destinationTexture:v23];
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
          [(CVAFilterDiffusion *)self encodeDavidIterationToCommandBufferInternal:v15 priorTexture:v16 confidenceTexture:v19 sourceTexture:v27 destinationTexture:v22];
          --v24;
          v22 = v27;
        }

        while (v24 > 1);
      }

      v22 = v23;
      v28 = v23;
      v23 = v27;
      [(CVAFilterDiffusion *)self encodeDavidIterationToCommandBufferInternal:v15 priorTexture:v16 confidenceTexture:v19 sourceTexture:v28 destinationTexture:v26];
    }

    v18 = v29;
  }

  else
  {
    v25 = [v15 blitCommandEncoder];
    memset(v33, 0, sizeof(v33));
    v32[0] = [v17 width];
    v32[1] = [v17 height];
    v32[2] = 1;
    memset(v31, 0, sizeof(v31));
    [v25 copyFromTexture:v17 sourceSlice:0 sourceLevel:0 sourceOrigin:v33 sourceSize:v32 toTexture:v18 destinationSlice:0 destinationLevel:0 destinationOrigin:v31];
    [v25 endEncoding];
  }
}

- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 colorTexture:(id)a6 iterations:(unsigned int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a7)
  {
    v16 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut32_1;
    v17 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut32_0;
    if ([v13 pixelFormat] != 55 && objc_msgSend(v14, "pixelFormat") != 55)
    {
      v17 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut16_0;
      v16 = &OBJC_IVAR___CVAFilterDiffusion__tmpOut16_1;
    }

    v18 = *(&self->super.super.isa + *v17);
    v19 = *(&self->super.super.isa + *v16);
    [(CVAFilterDiffusion *)self encodeEdgeLaplacianToCommandBuffer:v12 colorTexture:v15 outputLaplacian:self->_laplacian];
    v20 = a7 - 1;
    if (a7 == 1)
    {
      [(CVAFilterDiffusion *)self encodeToCommandBufferInternal:v12 sourceTexture:v13 destinationTexture:v14];
    }

    else
    {
      [(CVAFilterDiffusion *)self encodeToCommandBufferInternal:v12 sourceTexture:v13 destinationTexture:v19];
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
          [(CVAFilterDiffusion *)self encodeToCommandBufferInternal:v12 sourceTexture:v22 destinationTexture:v18];
          --v20;
          v18 = v22;
        }

        while (v20 > 1);
      }

      v18 = v19;
      v23 = v19;
      v19 = v22;
      [(CVAFilterDiffusion *)self encodeToCommandBufferInternal:v12 sourceTexture:v23 destinationTexture:v14];
    }
  }

  else
  {
    v21 = [v12 blitCommandEncoder];
    memset(v26, 0, sizeof(v26));
    v25[0] = [v13 width];
    v25[1] = [v13 height];
    v25[2] = 1;
    memset(v24, 0, sizeof(v24));
    [v21 copyFromTexture:v13 sourceSlice:0 sourceLevel:0 sourceOrigin:v26 sourceSize:v25 toTexture:v14 destinationSlice:0 destinationLevel:0 destinationOrigin:v24];
    [v21 endEncoding];
  }
}

- (void)encodeDiffusionMapLaplacianToCommandBuffer:(id)a3 diffusionMapTexture:(id)a4 outputLaplacian:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  [v10 setLabel:@"_createDiffusionMapLaplacianKernel"];
  [v10 setComputePipelineState:self->_createDiffusionMapLaplacianKernel];
  [v10 setTexture:v8 atIndex:0];
  [v10 setTexture:v9 atIndex:1];
  v13[0] = ([v8 width] + 15) >> 4;
  v13[1] = ([v8 height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [v10 dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [v10 endEncoding];
}

- (void)encodeEdgeLaplacianToCommandBuffer:(id)a3 colorTexture:(id)a4 outputLaplacian:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  [v10 setLabel:@"_createEdgeLaplacianKernel"];
  [v10 setComputePipelineState:self->_createEdgeLaplacianKernel];
  [v10 setTexture:v8 atIndex:0];
  [v10 setTexture:v9 atIndex:1];
  [v10 setBuffer:self->_edgeLaplacianConfigImmutable offset:0 atIndex:0];
  v13[0] = ([v8 width] + 15) >> 4;
  v13[1] = ([v8 height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [v10 dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [v10 endEncoding];
}

- (void)encodeDavidIterationToCommandBufferInternal:(id)a3 priorTexture:(id)a4 confidenceTexture:(id)a5 sourceTexture:(id)a6 destinationTexture:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a3 computeCommandEncoder];
  [v16 setLabel:@"_laplacianDavidKernel"];
  [v16 setComputePipelineState:self->_laplacianDavidKernel];
  [v16 setTexture:self->_laplacian atIndex:0];
  [v16 setTexture:v13 atIndex:1];
  [v16 setTexture:v12 atIndex:2];
  [v16 setTexture:v14 atIndex:3];
  [v16 setTexture:v15 atIndex:4];
  [v16 setBuffer:self->_davidConfigImmutable offset:0 atIndex:0];
  v19[0] = ([v14 width] + 15) >> 4;
  v19[1] = ([v14 height] + 15) >> 4;
  v19[2] = 1;
  v17 = xmmword_1DED747F0;
  v18 = 1;
  [v16 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [v16 endEncoding];
}

- (void)encodeToCommandBufferInternal:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  [v10 setLabel:@"_laplacianJacobiKernel"];
  [v10 setComputePipelineState:self->_laplacianJacobiKernel];
  [v10 setTexture:self->_laplacian atIndex:0];
  [v10 setTexture:v8 atIndex:1];
  [v10 setTexture:v9 atIndex:2];
  [v10 setBuffer:self->_jacobiConfigImmutable offset:0 atIndex:0];
  v13[0] = ([v8 width] + 15) >> 4;
  v13[1] = ([v8 height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [v10 dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [v10 endEncoding];
}

- (CVAFilterDiffusion)initWithFigMetalContext:(id)a3 bufferWidth:(unint64_t)a4 bufferHeight:(unint64_t)a5 edgeVariance:(float)a6 stepSize:(float)a7 error:(id *)a8
{
  v14 = a3;
  v36.receiver = self;
  v36.super_class = CVAFilterDiffusion;
  v15 = [(ImageSaverRegistrator *)&v36 init];
  if (v15)
  {
    v16 = [v14 device];
    v15->_width = a4;
    v15->_height = a5;
    v15->_edgeVariance = a6;
    width = v15->_width;
    v18 = sub_1DED6FDC8(v16, 115, width, a5, 0, a8);
    laplacian = v15->_laplacian;
    v15->_laplacian = v18;

    v20 = sub_1DED6FDC8(v16, 25, width, a5, 0, a8);
    tmpOut16_0 = v15->_tmpOut16_0;
    v15->_tmpOut16_0 = v20;

    v22 = sub_1DED6FDC8(v16, 25, width, a5, 0, a8);
    tmpOut16_1 = v15->_tmpOut16_1;
    v15->_tmpOut16_1 = v22;

    v24 = sub_1DED6FDC8(v16, 55, width, a5, 0, a8);
    tmpOut32_0 = v15->_tmpOut32_0;
    v15->_tmpOut32_0 = v24;

    v26 = sub_1DED6FDC8(v16, 55, width, a5, 0, a8);
    tmpOut32_1 = v15->_tmpOut32_1;
    v15->_tmpOut32_1 = v26;

    v28 = [v16 newBufferWithLength:4 options:0];
    edgeLaplacianConfigImmutable = v15->_edgeLaplacianConfigImmutable;
    v15->_edgeLaplacianConfigImmutable = v28;

    *[(MTLBuffer *)v15->_edgeLaplacianConfigImmutable contents]= -1.0 / (a6 + a6);
    v30 = [v16 newBufferWithLength:4 options:0];
    jacobiConfigImmutable = v15->_jacobiConfigImmutable;
    v15->_jacobiConfigImmutable = v30;

    *[(MTLBuffer *)v15->_jacobiConfigImmutable contents]= a7;
    v32 = [v16 newBufferWithLength:4 options:0];
    davidConfigImmutable = v15->_davidConfigImmutable;
    v15->_davidConfigImmutable = v32;

    *[(MTLBuffer *)v15->_davidConfigImmutable contents]= 1061997773;
    sub_1DED422A0(&v15->_createEdgeLaplacianKernel, v14, @"createEdgeLaplacian", 0);
    sub_1DED422A0(&v15->_createDiffusionMapLaplacianKernel, v14, @"createDiffusionMapLaplacian", 0);
    sub_1DED422A0(&v15->_laplacianJacobiKernel, v14, @"laplacianJacobi", 0);
    sub_1DED422A0(&v15->_laplacianDavidKernel, v14, @"laplacianDavid", 0);
    v34 = v15;
  }

  return v15;
}

@end