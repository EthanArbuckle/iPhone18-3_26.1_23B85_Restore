@interface CVAFilterInfimumConvolution
- (CVAFilterInfimumConvolution)initWithFigMetalContext:(id)context bufferWidth:(unint64_t)width bufferHeight:(unint64_t)height error:(id *)error;
- (void)encodeInfimumToCommandBufferInternal:(id)internal sourceTexture:(id)texture smallSourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture;
- (void)encodeToCommandBufferInternal:(double)internal sourceTexture:(double)texture destinationTexture:(double)destinationTexture config:(uint64_t)config;
@end

@implementation CVAFilterInfimumConvolution

- (void)encodeInfimumToCommandBufferInternal:(id)internal sourceTexture:(id)texture smallSourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture
{
  textureCopy = texture;
  sourceTextureCopy = sourceTexture;
  destinationTextureCopy = destinationTexture;
  computeCommandEncoder = [internal computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_infimumKernel"];
  [computeCommandEncoder setComputePipelineState:self->_infimumKernel];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:sourceTextureCopy atIndex:1];
  [computeCommandEncoder setTexture:destinationTextureCopy atIndex:2];
  v16[0] = (([textureCopy width] >> 1) + 15) >> 4;
  v16[1] = (([textureCopy height] >> 1) + 15) >> 4;
  v16[2] = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [computeCommandEncoder dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)encodeToCommandBufferInternal:(double)internal sourceTexture:(double)texture destinationTexture:(double)destinationTexture config:(uint64_t)config
{
  *v18 = a2;
  *&v18[1] = internal;
  *&v18[2] = texture;
  *&v18[3] = destinationTexture;
  v12 = a8;
  v13 = a9;
  computeCommandEncoder = [a7 computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_infimumConvolutionKernel"];
  [computeCommandEncoder setComputePipelineState:*(self + 80)];
  [computeCommandEncoder setTexture:v12 atIndex:0];
  [computeCommandEncoder setTexture:v13 atIndex:1];
  [computeCommandEncoder setBytes:v18 length:32 atIndex:0];
  v17[0] = (([v12 width] >> 1) + 15) >> 4;
  v17[1] = (([v12 height] >> 1) + 15) >> 4;
  v17[2] = 1;
  v15 = xmmword_1DED747F0;
  v16 = 1;
  [computeCommandEncoder dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder endEncoding];
}

- (CVAFilterInfimumConvolution)initWithFigMetalContext:(id)context bufferWidth:(unint64_t)width bufferHeight:(unint64_t)height error:(id *)error
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = CVAFilterInfimumConvolution;
  v11 = [(ImageSaverRegistrator *)&v24 init];
  if (!v11)
  {
    goto LABEL_5;
  }

  device = [contextCopy device];
  device = v11->_device;
  v11->_device = device;

  library = [contextCopy library];
  library = v11->_library;
  v11->_library = library;

  pipelineLibrary = [contextCopy pipelineLibrary];
  pipelineLibrary = v11->_pipelineLibrary;
  v11->_pipelineLibrary = pipelineLibrary;

  v11->_width = width;
  v11->_height = height;
  v18 = sub_1DED6FDC8(v11->_device, 10, v11->_width, height, 0, error);
  v19 = v11->_tmpOutHalf[0];
  v11->_tmpOutHalf[0] = v18;

  v20 = sub_1DED6FDC8(v11->_device, 10, v11->_width, v11->_height, 0, error);
  v21 = v11->_tmpOutHalf[1];
  v11->_tmpOutHalf[1] = v20;

  sub_1DED422A0(&v11->_infimumKernel, contextCopy, @"infimum", 0);
  if (!v11->_infimumKernel)
  {
    goto LABEL_5;
  }

  sub_1DED422A0(&v11->_infimumConvolutionKernel, contextCopy, @"infimumConvolution", 0);
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