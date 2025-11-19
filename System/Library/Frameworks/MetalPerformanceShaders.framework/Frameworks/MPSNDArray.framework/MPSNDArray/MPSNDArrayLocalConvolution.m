@interface MPSNDArrayLocalConvolution
- (MPSNDArrayConvolutionSizes)dilationRates;
- (MPSNDArrayConvolutionSizes)kernelSizes;
- (MPSNDArrayLocalConvolution)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayLocalConvolution)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayLocalConvolution

- (MPSNDArrayLocalConvolution)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLocalConvolution;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:a3];
  result->super.super._encode = EncodeLocalConvolution;
  result->super.super.super._encodeGradient = EncodeLocalConvolutionGradient;
  result->super.super.super._encodeData = result;
  result->_dataFormat = 1;
  result->_kernelSizes = vdupq_n_s64(3uLL);
  result->_dilationRates = vdupq_n_s64(1uLL);
  return result;
}

- (MPSNDArrayLocalConvolution)initWithCoder:(id)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLocalConvolution;
  v5 = [(MPSNDArrayBinaryKernel *)&v8 initWithCoder:a3 device:a4];
  v6 = v5;
  if (v5)
  {
    v5->super.super._encode = EncodeLocalConvolution;
    v5->super.super.super._encodeGradient = EncodeLocalConvolutionGradient;
    v5->super.super.super._encodeData = v5;
    v5->_dataFormat = [a3 decodeIntegerForKey:@"MPSNDArrayLocalConvolution.dataFormat"];
    v6->_kernelSizes.size[0] = [a3 decodeIntegerForKey:@"MPSNDArrayLocalConvolution.kernelsizesX"];
    v6->_kernelSizes.size[1] = [a3 decodeIntegerForKey:@"MPSNDArrayLocalConvolution.kernelsizesY"];
    v6->_dilationRates.size[0] = [a3 decodeIntegerForKey:@"MPSNDArrayLocalConvolution.kDilationRateX"];
    v6->_dilationRates.size[1] = [a3 decodeIntegerForKey:@"MPSNDArrayLocalConvolution.kDilationRateY"];
  }

  return v6;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4
{
  v4 = [a3 objectAtIndexedSubscript:{0, a4}];

  return [v4 descriptor];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v5.receiver = self;
  v5.super_class = MPSNDArrayLocalConvolution;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [a3 encodeInteger:v4->_dataFormat forKey:@"MPSNDArrayLocalConvolution.dataFormat"];
  [a3 encodeInteger:v4->_kernelSizes.size[0] forKey:@"MPSNDArrayLocalConvolution.kernelsizesX"];
  [a3 encodeInteger:v4->_kernelSizes.size[1] forKey:@"MPSNDArrayLocalConvolution.kernelsizesY"];
  v4 = (v4 + 168);
  [a3 encodeInteger:v4->super.super.super.super.super.isa forKey:@"MPSNDArrayLocalConvolution.kDilationRateX"];
  [a3 encodeInteger:v4->super.super.super.super._options forKey:@"MPSNDArrayLocalConvolution.kDilationRateY"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayLocalConvolution;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
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