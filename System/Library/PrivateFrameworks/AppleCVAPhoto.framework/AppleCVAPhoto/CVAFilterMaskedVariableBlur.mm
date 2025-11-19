@interface CVAFilterMaskedVariableBlur
+ (void)prewarmGaussianPyramid:(id)a3 device:(id)a4 commandBuffer:(id)a5;
- (void)encodeBlurPyramidInPlaceToCommandBuffer:(id)a3 inoutTexture:(id)a4;
- (void)encodeToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 mask:(id)a6 maxBlurRadius:(float)a7;
@end

@implementation CVAFilterMaskedVariableBlur

- (void)encodeToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 mask:(id)a6 maxBlurRadius:(float)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v20 = a7;
  [(CVAFilterMaskedVariableBlur *)self encodeBlurPyramidInPlaceToCommandBuffer:v12 inoutTexture:v13];
  v16 = [v12 computeCommandEncoder];
  [v16 setLabel:@"_maskedVariableBlurKernel"];
  [v16 setComputePipelineState:self->_maskedVariableBlurKernel];
  [v16 setTexture:v14 atIndex:0];
  [v16 setTexture:v15 atIndex:1];
  [v16 setTexture:v13 atIndex:2];
  [v16 setBytes:&v20 length:4 atIndex:0];
  v19[0] = ([v14 width] + 15) >> 4;
  v19[1] = ([v14 height] + 15) >> 4;
  v19[2] = 1;
  v17 = xmmword_1DED747F0;
  v18 = 1;
  [v16 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [v16 endEncoding];
}

- (void)encodeBlurPyramidInPlaceToCommandBuffer:(id)a3 inoutTexture:(id)a4
{
  v6 = a4;
  [(MPSImageGaussianPyramid *)self->_gaussianPyramid encodeToCommandBuffer:a3 inPlaceTexture:&v6 fallbackCopyAllocator:0];
}

+ (void)prewarmGaussianPyramid:(id)a3 device:(id)a4 commandBuffer:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:144 height:108 mipmapped:0];
  [v10 setMipmapLevelCount:7];
  [v10 setUsage:3];
  v11 = [v8 newTextureWithDescriptor:v10];
  [v7 encodeToCommandBuffer:v9 inPlaceTexture:&v11 fallbackCopyAllocator:0];
}

@end