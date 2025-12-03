@interface MPSNDArrayPoolingMultiDestinationKernel
- (BOOL)supportsGradientForSourceIndex:(unint64_t)index;
- (MPSNDArrayPoolingMultiDestinationKernel)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayPoolingMultiDestinationKernel)initWithDevice:(id)device kernelSizes:(MPSNDArrayPoolingSizes_s *)sizes poolingMode:(int)mode computeGradient:(BOOL)gradient;
- (MPSNDArrayPoolingOffsets_s)poolingOffsets;
- (MPSNDArrayPoolingSizes_s)poolingDilationRates;
- (MPSNDArrayPoolingSizes_s)poolingKernelSizes;
- (MPSNDArrayPoolingSizes_s)poolingStrides;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)setPoolingDilationRates:(MPSNDArrayPoolingSizes_s *)rates;
- (void)setPoolingOffsets:(MPSNDArrayPoolingOffsets_s *)offsets;
- (void)setPoolingStrides:(MPSNDArrayPoolingSizes_s *)strides;
@end

@implementation MPSNDArrayPoolingMultiDestinationKernel

- (BOOL)supportsGradientForSourceIndex:(unint64_t)index
{
  result = 0;
  if (!index)
  {
    poolingMode = self->_poolingMode;
    v7 = poolingMode == 4 || poolingMode == 1;
    if (v7 && [(MPSNDArrayPoolingMultiDestinationKernel *)self isDestinationActiveAtIndex:0, v3, v4])
    {
      return 1;
    }
  }

  return result;
}

- (MPSNDArrayPoolingMultiDestinationKernel)initWithDevice:(id)device kernelSizes:(MPSNDArrayPoolingSizes_s *)sizes poolingMode:(int)mode computeGradient:(BOOL)gradient
{
  if (gradient)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  if (gradient)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v13.receiver = self;
  v13.super_class = MPSNDArrayPoolingMultiDestinationKernel;
  result = [(MPSNDArrayMultiaryMultiDestinationKernel *)&v13 initWithDevice:device sourceCount:v9 destinationCount:v10];
  result->super._encode = EncodePoolingMultiDestinationBase;
  result->super.super._encodeData = result;
  result->_computeGradient = gradient;
  v12 = *&sizes->sizes[2];
  *result->_poolingKernelSizes.sizes = *sizes->sizes;
  *&result->_poolingKernelSizes.sizes[2] = v12;
  result->_poolingMode = mode;
  result->_poolingOffsets.offsets[0] = 0;
  result->_poolingStrides.sizes[0] = 1;
  result->_poolingDilationRates.sizes[0] = 1;
  result->_poolingOffsets.offsets[1] = 0;
  result->_poolingStrides.sizes[1] = 1;
  result->_poolingDilationRates.sizes[1] = 1;
  result->_poolingOffsets.offsets[2] = 0;
  result->_poolingStrides.sizes[2] = 1;
  result->_poolingDilationRates.sizes[2] = 1;
  result->_poolingOffsets.offsets[3] = 0;
  result->_poolingStrides.sizes[3] = 1;
  result->_poolingDilationRates.sizes[3] = 1;
  return result;
}

- (MPSNDArrayPoolingMultiDestinationKernel)initWithCoder:(id)coder device:(id)device
{
  v24.receiver = self;
  v24.super_class = MPSNDArrayPoolingMultiDestinationKernel;
  result = [(MPSNDArrayMultiaryMultiDestinationKernel *)&v24 initWithCoder:coder device:device];
  if (result)
  {
    result->super._encode = EncodePoolingMultiDestination;
    result->super.super._encodeData = result;
    v23 = result;
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 0];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 0];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 0];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 0];
    v23->_poolingOffsets.offsets[0] = [coder decodeIntegerForKey:v7];
    v23->_poolingKernelSizes.sizes[0] = [coder decodeIntegerForKey:v6];
    v23->_poolingStrides.sizes[0] = [coder decodeIntegerForKey:v8];
    v23->_poolingDilationRates.sizes[0] = [coder decodeIntegerForKey:v9];

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 1];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 1];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 1];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 1];
    v23->_poolingOffsets.offsets[1] = [coder decodeIntegerForKey:v11];
    v23->_poolingKernelSizes.sizes[1] = [coder decodeIntegerForKey:v10];
    v23->_poolingStrides.sizes[1] = [coder decodeIntegerForKey:v12];
    v23->_poolingDilationRates.sizes[1] = [coder decodeIntegerForKey:v13];

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 2];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 2];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 2];
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 2];
    v23->_poolingOffsets.offsets[2] = [coder decodeIntegerForKey:v14];
    v23->_poolingKernelSizes.sizes[2] = [coder decodeIntegerForKey:v22];
    v23->_poolingStrides.sizes[2] = [coder decodeIntegerForKey:v15];
    v23->_poolingDilationRates.sizes[2] = [coder decodeIntegerForKey:v16];

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 3];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 3];
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 3];
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 3];
    v23->_poolingOffsets.offsets[3] = [coder decodeIntegerForKey:v18];
    v23->_poolingKernelSizes.sizes[3] = [coder decodeIntegerForKey:v17];
    v23->_poolingStrides.sizes[3] = [coder decodeIntegerForKey:v19];
    v23->_poolingDilationRates.sizes[3] = [coder decodeIntegerForKey:v20];

    v21 = [coder decodeIntegerForKey:@"MPSNDArrayPoolingMultiDestination.poolingMode"];
    result = v23;
    v23->_poolingMode = v21;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = MPSNDArrayPoolingMultiDestinationKernel;
  selfCopy = self;
  [(MPSNDArrayMultiaryMultiDestinationBase *)&v25 encodeWithCoder:?];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 0];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 0];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 0];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 0];
  v24 = selfCopy;
  [coder encodeInteger:selfCopy->_poolingKernelSizes.sizes[0] forKey:v5];
  [coder encodeInteger:selfCopy->_poolingOffsets.offsets[0] forKey:v6];
  [coder encodeInteger:selfCopy->_poolingStrides.sizes[0] forKey:v7];
  p_poolingDilationRates = &selfCopy->_poolingDilationRates;
  [coder encodeInteger:selfCopy->_poolingDilationRates.sizes[0] forKey:v8];

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 1];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 1];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 1];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 1];
  p_poolingKernelSizes = &selfCopy->_poolingKernelSizes;
  [coder encodeInteger:selfCopy->_poolingKernelSizes.sizes[1] forKey:v10];
  p_poolingOffsets = &selfCopy->_poolingOffsets;
  [coder encodeInteger:selfCopy->_poolingOffsets.offsets[1] forKey:v11];
  selfCopy = (selfCopy + 200);
  [coder encodeInteger:selfCopy->super.super.super._options forKey:v12];
  [coder encodeInteger:p_poolingDilationRates->sizes[1] forKey:v13];

  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 2];
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 2];
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 2];
  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 2];
  [coder encodeInteger:p_poolingKernelSizes->sizes[2] forKey:v23];
  [coder encodeInteger:p_poolingOffsets->offsets[2] forKey:v16];
  [coder encodeInteger:selfCopy->super.super.super._verbosityLevel forKey:v17];
  [coder encodeInteger:p_poolingDilationRates->sizes[2] forKey:v18];

  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 3];
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 3];
  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 3];
  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 3];
  [coder encodeInteger:p_poolingKernelSizes->sizes[3] forKey:v19];
  [coder encodeInteger:p_poolingOffsets->offsets[3] forKey:v20];
  [coder encodeInteger:selfCopy->super.super.super._device forKey:v21];
  [coder encodeInteger:p_poolingDilationRates->sizes[3] forKey:v22];

  [coder encodeInteger:v24->_poolingMode forKey:@"MPSNDArrayPoolingMultiDestination.poolingMode"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayPoolingMultiDestinationKernel;
  result = [(MPSNDArrayMultiaryMultiDestinationKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 21) = self->_poolingOffsets.offsets[0];
    *(result + 17) = self->_poolingKernelSizes.sizes[0];
    *(result + 25) = self->_poolingStrides.sizes[0];
    *(result + 29) = self->_poolingDilationRates.sizes[0];
    *(result + 22) = self->_poolingOffsets.offsets[1];
    *(result + 18) = self->_poolingKernelSizes.sizes[1];
    *(result + 26) = self->_poolingStrides.sizes[1];
    *(result + 30) = self->_poolingDilationRates.sizes[1];
    *(result + 23) = self->_poolingOffsets.offsets[2];
    *(result + 19) = self->_poolingKernelSizes.sizes[2];
    *(result + 27) = self->_poolingStrides.sizes[2];
    *(result + 31) = self->_poolingDilationRates.sizes[2];
    *(result + 24) = self->_poolingOffsets.offsets[3];
    *(result + 20) = self->_poolingKernelSizes.sizes[3];
    *(result + 28) = self->_poolingStrides.sizes[3];
    *(result + 32) = self->_poolingDilationRates.sizes[3];
    *(result + 31) = self->_poolingMode;
  }

  return result;
}

- (MPSNDArrayPoolingSizes_s)poolingKernelSizes
{
  v3 = *&self[4].sizes[3];
  *retstr->sizes = *&self[4].sizes[1];
  *&retstr->sizes[2] = v3;
  return self;
}

- (MPSNDArrayPoolingOffsets_s)poolingOffsets
{
  v3 = *&self[5].offsets[3];
  *retstr->offsets = *&self[5].offsets[1];
  *&retstr->offsets[2] = v3;
  return self;
}

- (void)setPoolingOffsets:(MPSNDArrayPoolingOffsets_s *)offsets
{
  v3 = *&offsets->offsets[2];
  *self->_poolingOffsets.offsets = *offsets->offsets;
  *&self->_poolingOffsets.offsets[2] = v3;
}

- (MPSNDArrayPoolingSizes_s)poolingStrides
{
  v3 = *&self[6].sizes[3];
  *retstr->sizes = *&self[6].sizes[1];
  *&retstr->sizes[2] = v3;
  return self;
}

- (void)setPoolingStrides:(MPSNDArrayPoolingSizes_s *)strides
{
  v3 = *&strides->sizes[2];
  *self->_poolingStrides.sizes = *strides->sizes;
  *&self->_poolingStrides.sizes[2] = v3;
}

- (MPSNDArrayPoolingSizes_s)poolingDilationRates
{
  v3 = *&self[7].sizes[3];
  *retstr->sizes = *&self[7].sizes[1];
  *&retstr->sizes[2] = v3;
  return self;
}

- (void)setPoolingDilationRates:(MPSNDArrayPoolingSizes_s *)rates
{
  v3 = *&rates->sizes[2];
  *self->_poolingDilationRates.sizes = *rates->sizes;
  *&self->_poolingDilationRates.sizes[2] = v3;
}

@end