@interface MPSNDArrayLocalConvolution
- (MPSNDArrayConvolutionSizes)dilationRates;
- (MPSNDArrayConvolutionSizes)kernelSizes;
- (MPSNDArrayLocalConvolution)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayLocalConvolution)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayLocalConvolution

- (MPSNDArrayLocalConvolution)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLocalConvolution;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeLocalConvolution;
  result->super.super.super._encodeGradient = EncodeLocalConvolutionGradient;
  result->super.super.super._encodeData = result;
  result->_dataFormat = 1;
  result->_kernelSizes = vdupq_n_s64(3uLL);
  result->_dilationRates = vdupq_n_s64(1uLL);
  return result;
}

- (MPSNDArrayLocalConvolution)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLocalConvolution;
  v5 = [(MPSNDArrayBinaryKernel *)&v8 initWithCoder:coder device:device];
  v6 = v5;
  if (v5)
  {
    v5->super.super._encode = EncodeLocalConvolution;
    v5->super.super.super._encodeGradient = EncodeLocalConvolutionGradient;
    v5->super.super.super._encodeData = v5;
    v5->_dataFormat = [coder decodeIntegerForKey:@"MPSNDArrayLocalConvolution.dataFormat"];
    v6->_kernelSizes.size[0] = [coder decodeIntegerForKey:@"MPSNDArrayLocalConvolution.kernelsizesX"];
    v6->_kernelSizes.size[1] = [coder decodeIntegerForKey:@"MPSNDArrayLocalConvolution.kernelsizesY"];
    v6->_dilationRates.size[0] = [coder decodeIntegerForKey:@"MPSNDArrayLocalConvolution.kDilationRateX"];
    v6->_dilationRates.size[1] = [coder decodeIntegerForKey:@"MPSNDArrayLocalConvolution.kDilationRateY"];
  }

  return v6;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v4 = [arrays objectAtIndexedSubscript:{0, state}];

  return [v4 descriptor];
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v5.receiver = self;
  v5.super_class = MPSNDArrayLocalConvolution;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInteger:selfCopy->_dataFormat forKey:@"MPSNDArrayLocalConvolution.dataFormat"];
  [coder encodeInteger:selfCopy->_kernelSizes.size[0] forKey:@"MPSNDArrayLocalConvolution.kernelsizesX"];
  [coder encodeInteger:selfCopy->_kernelSizes.size[1] forKey:@"MPSNDArrayLocalConvolution.kernelsizesY"];
  selfCopy = (selfCopy + 168);
  [coder encodeInteger:selfCopy->super.super.super.super.super.isa forKey:@"MPSNDArrayLocalConvolution.kDilationRateX"];
  [coder encodeInteger:selfCopy->super.super.super.super._options forKey:@"MPSNDArrayLocalConvolution.kDilationRateY"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayLocalConvolution;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 36) = self->_dataFormat;
    *(result + 152) = self->_kernelSizes;
    *(result + 168) = self->_dilationRates;
  }

  return result;
}

- (MPSNDArrayConvolutionSizes)kernelSizes
{
  p_kernelSizes = &self->_kernelSizes;
  v3 = self->_kernelSizes.size[0];
  v4 = p_kernelSizes->size[1];
  result.size[1] = v4;
  result.size[0] = v3;
  return result;
}

- (MPSNDArrayConvolutionSizes)dilationRates
{
  p_dilationRates = &self->_dilationRates;
  v3 = self->_dilationRates.size[0];
  v4 = p_dilationRates->size[1];
  result.size[1] = v4;
  result.size[0] = v3;
  return result;
}

@end