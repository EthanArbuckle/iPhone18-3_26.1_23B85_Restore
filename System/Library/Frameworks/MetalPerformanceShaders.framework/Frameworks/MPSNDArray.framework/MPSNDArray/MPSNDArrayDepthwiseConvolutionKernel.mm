@interface MPSNDArrayDepthwiseConvolutionKernel
- (MPSNDArrayDepthwiseConvolutionKernel)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayDepthwiseConvolutionKernel)initWithDevice:(id)a3 kernelType:(int)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setConvDilationRates:(MPSNDArrayConv3dSizes_s *)a3;
- (void)setConvStrides:(MPSNDArrayConv3dSizes_s *)a3;
- (void)setWindowOffsets:(MPSNDArrayConv3dOffsets_s *)a3;
@end

@implementation MPSNDArrayDepthwiseConvolutionKernel

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSNDArrayDepthwiseConvolutionKernel;
  v4 = [(MPSKernel *)&v7 debugDescription];
  v5 = self->_convDilationRates.sizes[2];
  return [v3 stringWithFormat:@"%@\n\tstride       =(%2lu, %2lu, %2lu)\n\toffset       =(%2d, %2d, %2d )\n\tdilationRate =(%2lu, %2lu, %2lu )\n\tchannelAxis = %d\n", v4, self->_convStrides.sizes[0], self->_convStrides.sizes[1], self->_convStrides.sizes[2], self->_windowOffsets.offsets[0], self->_windowOffsets.offsets[1], self->_windowOffsets.offsets[2], self->_convDilationRates.sizes[0], self->_convDilationRates.sizes[1], v5, self->_channelAxis];
}

- (MPSNDArrayDepthwiseConvolutionKernel)initWithDevice:(id)a3 kernelType:(int)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayDepthwiseConvolutionKernel;
  result = [(MPSNDArrayBinaryKernel *)&v6 initWithDevice:a3];
  result->super.super._encode = EncodeDWConv;
  result->super.super.super._encodeGradient = EncodeDWConvGradient;
  result->super.super.super._encodeData = result;
  result->_channelAxis = 3;
  result->_kernelType = a4;
  result->_windowOffsets.offsets[0] = 0;
  result->_convStrides.sizes[0] = 1;
  result->_convDilationRates.sizes[0] = 1;
  result->_windowOffsets.offsets[1] = 0;
  result->_convStrides.sizes[1] = 1;
  result->_convDilationRates.sizes[1] = 1;
  result->_windowOffsets.offsets[2] = 0;
  result->_convStrides.sizes[2] = 1;
  result->_convDilationRates.sizes[2] = 1;
  return result;
}

- (MPSNDArrayDepthwiseConvolutionKernel)initWithCoder:(id)a3 device:(id)a4
{
  v17.receiver = self;
  v17.super_class = MPSNDArrayDepthwiseConvolutionKernel;
  v5 = [(MPSNDArrayBinaryKernel *)&v17 initWithCoder:a3 device:a4];
  v6 = v5;
  if (v5)
  {
    v5->super.super._encode = EncodeDWConv;
    v5->super.super.super._encodeGradient = EncodeDWConvGradient;
    v5->super.super.super._encodeData = v5;
    v5->_channelAxis = [a3 decodeIntegerForKey:@"MPSNDArrayDWConv.channelAxis"];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.offsets", 0];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.strides", 0];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.dilationRates", 0];
    v6->_windowOffsets.offsets[0] = [a3 decodeIntegerForKey:v7];
    v6->_convStrides.sizes[0] = [a3 decodeIntegerForKey:v8];
    v6->_convDilationRates.sizes[0] = [a3 decodeIntegerForKey:v9];

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.offsets", 1];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.strides", 1];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.dilationRates", 1];
    v6->_windowOffsets.offsets[1] = [a3 decodeIntegerForKey:v10];
    v6->_convStrides.sizes[1] = [a3 decodeIntegerForKey:v11];
    v6->_convDilationRates.sizes[1] = [a3 decodeIntegerForKey:v12];

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.offsets", 2];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.strides", 2];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.dilationRates", 2];
    v6->_windowOffsets.offsets[2] = [a3 decodeIntegerForKey:v13];
    v6->_convStrides.sizes[2] = [a3 decodeIntegerForKey:v14];
    v6->_convDilationRates.sizes[2] = [a3 decodeIntegerForKey:v15];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = MPSNDArrayDepthwiseConvolutionKernel;
  [(MPSNDArrayMultiaryBase *)&v17 encodeWithCoder:?];
  [a3 encodeInteger:self->_channelAxis forKey:@"MPSNDArrayDWConv.channelAxis"];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.offsets", 0];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.strides", 0];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.dilationRates", 0];
  p_windowOffsets = &self->_windowOffsets;
  [a3 encodeInteger:self->_windowOffsets.offsets[0] forKey:v5];
  p_convStrides = &self->_convStrides;
  [a3 encodeInteger:self->_convStrides.sizes[0] forKey:v6];
  p_convDilationRates = &self->_convDilationRates;
  [a3 encodeInteger:self->_convDilationRates.sizes[0] forKey:v7];

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.offsets", 1];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.strides", 1];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.dilationRates", 1];
  [a3 encodeInteger:p_windowOffsets->offsets[1] forKey:v11];
  [a3 encodeInteger:p_convStrides->sizes[1] forKey:v12];
  [a3 encodeInteger:p_convDilationRates->sizes[1] forKey:v13];

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.offsets", 2];
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.strides", 2];
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayDWConv.dilationRates", 2];
  [a3 encodeInteger:p_windowOffsets->offsets[2] forKey:v14];
  [a3 encodeInteger:p_convStrides->sizes[2] forKey:v15];
  [a3 encodeInteger:p_convDilationRates->sizes[2] forKey:v16];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayDepthwiseConvolutionKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 20) = self->_channelAxis;
    *(result + 21) = self->_windowOffsets.offsets[0];
    *(result + 24) = self->_convStrides.sizes[0];
    *(result + 27) = self->_convDilationRates.sizes[0];
    *(result + 22) = self->_windowOffsets.offsets[1];
    *(result + 25) = self->_convStrides.sizes[1];
    *(result + 28) = self->_convDilationRates.sizes[1];
    *(result + 23) = self->_windowOffsets.offsets[2];
    *(result + 26) = self->_convStrides.sizes[2];
    *(result + 29) = self->_convDilationRates.sizes[2];
  }

  return result;
}

- (void)setWindowOffsets:(MPSNDArrayConv3dOffsets_s *)a3
{
  v3 = a3->offsets[2];
  *self->_windowOffsets.offsets = *a3->offsets;
  self->_windowOffsets.offsets[2] = v3;
}

- (void)setConvStrides:(MPSNDArrayConv3dSizes_s *)a3
{
  v3 = a3->sizes[2];
  *self->_convStrides.sizes = *a3->sizes;
  self->_convStrides.sizes[2] = v3;
}

- (void)setConvDilationRates:(MPSNDArrayConv3dSizes_s *)a3
{
  v3 = a3->sizes[2];
  *self->_convDilationRates.sizes = *a3->sizes;
  self->_convDilationRates.sizes[2] = v3;
}

@end