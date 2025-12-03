@interface CVAFilterMaskedVariableBlur
+ (void)prewarmGaussianPyramid:(id)pyramid device:(id)device commandBuffer:(id)buffer;
- (void)encodeBlurPyramidInPlaceToCommandBuffer:(id)buffer inoutTexture:(id)texture;
- (void)encodeToCommandBuffer:(id)buffer source:(id)source destination:(id)destination mask:(id)mask maxBlurRadius:(float)radius;
@end

@implementation CVAFilterMaskedVariableBlur

- (void)encodeToCommandBuffer:(id)buffer source:(id)source destination:(id)destination mask:(id)mask maxBlurRadius:(float)radius
{
  bufferCopy = buffer;
  sourceCopy = source;
  destinationCopy = destination;
  maskCopy = mask;
  radiusCopy = radius;
  [(CVAFilterMaskedVariableBlur *)self encodeBlurPyramidInPlaceToCommandBuffer:bufferCopy inoutTexture:sourceCopy];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_maskedVariableBlurKernel"];
  [computeCommandEncoder setComputePipelineState:self->_maskedVariableBlurKernel];
  [computeCommandEncoder setTexture:destinationCopy atIndex:0];
  [computeCommandEncoder setTexture:maskCopy atIndex:1];
  [computeCommandEncoder setTexture:sourceCopy atIndex:2];
  [computeCommandEncoder setBytes:&radiusCopy length:4 atIndex:0];
  v19[0] = ([destinationCopy width] + 15) >> 4;
  v19[1] = ([destinationCopy height] + 15) >> 4;
  v19[2] = 1;
  v17 = xmmword_1DED747F0;
  v18 = 1;
  [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
}

- (void)encodeBlurPyramidInPlaceToCommandBuffer:(id)buffer inoutTexture:(id)texture
{
  textureCopy = texture;
  [(MPSImageGaussianPyramid *)self->_gaussianPyramid encodeToCommandBuffer:buffer inPlaceTexture:&textureCopy fallbackCopyAllocator:0];
}

+ (void)prewarmGaussianPyramid:(id)pyramid device:(id)device commandBuffer:(id)buffer
{
  pyramidCopy = pyramid;
  deviceCopy = device;
  bufferCopy = buffer;
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:144 height:108 mipmapped:0];
  [v10 setMipmapLevelCount:7];
  [v10 setUsage:3];
  v11 = [deviceCopy newTextureWithDescriptor:v10];
  [pyramidCopy encodeToCommandBuffer:bufferCopy inPlaceTexture:&v11 fallbackCopyAllocator:0];
}

@end