@interface CVAFilterInfimumConvolution
- (CVAFilterInfimumConvolution)initWithFigMetalContext:(id)a3 bufferWidth:(unint64_t)a4 bufferHeight:(unint64_t)a5 error:(id *)a6;
- (void)encodeInfimumToCommandBufferInternal:(id)a3 sourceTexture:(id)a4 smallSourceTexture:(id)a5 destinationTexture:(id)a6;
- (void)encodeToCommandBufferInternal:(double)a3 sourceTexture:(double)a4 destinationTexture:(double)a5 config:(uint64_t)a6;
@end

@implementation CVAFilterInfimumConvolution

- (void)encodeInfimumToCommandBufferInternal:(id)a3 sourceTexture:(id)a4 smallSourceTexture:(id)a5 destinationTexture:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 computeCommandEncoder];
  [v13 setLabel:@"_infimumKernel"];
  [v13 setComputePipelineState:self->_infimumKernel];
  [v13 setTexture:v10 atIndex:0];
  [v13 setTexture:v11 atIndex:1];
  [v13 setTexture:v12 atIndex:2];
  v16[0] = (([v10 width] >> 1) + 15) >> 4;
  v16[1] = (([v10 height] >> 1) + 15) >> 4;
  v16[2] = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [v13 dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [v13 endEncoding];
}

- (void)encodeToCommandBufferInternal:(double)a3 sourceTexture:(double)a4 destinationTexture:(double)a5 config:(uint64_t)a6
{
  *v18 = a2;
  *&v18[1] = a3;
  *&v18[2] = a4;
  *&v18[3] = a5;
  v12 = a8;
  v13 = a9;
  v14 = [a7 computeCommandEncoder];
  [v14 setLabel:@"_infimumConvolutionKernel"];
  [v14 setComputePipelineState:*(a1 + 80)];
  [v14 setTexture:v12 atIndex:0];
  [v14 setTexture:v13 atIndex:1];
  [v14 setBytes:v18 length:32 atIndex:0];
  v17[0] = (([v12 width] >> 1) + 15) >> 4;
  v17[1] = (([v12 height] >> 1) + 15) >> 4;
  v17[2] = 1;
  v15 = xmmword_1DED747F0;
  v16 = 1;
  [v14 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [v14 endEncoding];
}

- (CVAFilterInfimumConvolution)initWithFigMetalContext:(id)a3 bufferWidth:(unint64_t)a4 bufferHeight:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v24.receiver = self;
  v24.super_class = CVAFilterInfimumConvolution;
  v11 = [(ImageSaverRegistrator *)&v24 init];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v10 device];
  device = v11->_device;
  v11->_device = v12;

  v14 = [v10 library];
  library = v11->_library;
  v11->_library = v14;

  v16 = [v10 pipelineLibrary];
  pipelineLibrary = v11->_pipelineLibrary;
  v11->_pipelineLibrary = v16;

  v11->_width = a4;
  v11->_height = a5;
  v18 = sub_1DED6FDC8(v11->_device, 10, v11->_width, a5, 0, a6);
  v19 = v11->_tmpOutHalf[0];
  v11->_tmpOutHalf[0] = v18;

  v20 = sub_1DED6FDC8(v11->_device, 10, v11->_width, v11->_height, 0, a6);
  v21 = v11->_tmpOutHalf[1];
  v11->_tmpOutHalf[1] = v20;

  sub_1DED422A0(&v11->_infimumKernel, v10, @"infimum", 0);
  if (!v11->_infimumKernel)
  {
    goto LABEL_5;
  }

  sub_1DED422A0(&v11->_infimumConvolutionKernel, v10, @"infimumConvolution", 0);
  if (v11->_infimumConvolutionKernel)
  {
    v22 = v11;
  }

  else
  {
LABEL_5:
    v22 = 0;
  }

  return v22;
}

@end