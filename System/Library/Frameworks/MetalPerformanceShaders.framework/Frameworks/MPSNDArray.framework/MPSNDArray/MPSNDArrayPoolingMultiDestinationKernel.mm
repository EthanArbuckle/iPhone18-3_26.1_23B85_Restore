@interface MPSNDArrayPoolingMultiDestinationKernel
- (BOOL)supportsGradientForSourceIndex:(unint64_t)a3;
- (MPSNDArrayPoolingMultiDestinationKernel)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayPoolingMultiDestinationKernel)initWithDevice:(id)a3 kernelSizes:(MPSNDArrayPoolingSizes_s *)a4 poolingMode:(int)a5 computeGradient:(BOOL)a6;
- (MPSNDArrayPoolingOffsets_s)poolingOffsets;
- (MPSNDArrayPoolingSizes_s)poolingDilationRates;
- (MPSNDArrayPoolingSizes_s)poolingKernelSizes;
- (MPSNDArrayPoolingSizes_s)poolingStrides;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setPoolingDilationRates:(MPSNDArrayPoolingSizes_s *)a3;
- (void)setPoolingOffsets:(MPSNDArrayPoolingOffsets_s *)a3;
- (void)setPoolingStrides:(MPSNDArrayPoolingSizes_s *)a3;
@end

@implementation MPSNDArrayPoolingMultiDestinationKernel

- (BOOL)supportsGradientForSourceIndex:(unint64_t)a3
{
  result = 0;
  if (!a3)
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

- (MPSNDArrayPoolingMultiDestinationKernel)initWithDevice:(id)a3 kernelSizes:(MPSNDArrayPoolingSizes_s *)a4 poolingMode:(int)a5 computeGradient:(BOOL)a6
{
  if (a6)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  if (a6)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v13.receiver = self;
  v13.super_class = MPSNDArrayPoolingMultiDestinationKernel;
  result = [(MPSNDArrayMultiaryMultiDestinationKernel *)&v13 initWithDevice:a3 sourceCount:v9 destinationCount:v10];
  result->super._encode = EncodePoolingMultiDestinationBase;
  result->super.super._encodeData = result;
  result->_computeGradient = a6;
  v12 = *&a4->sizes[2];
  *result->_poolingKernelSizes.sizes = *a4->sizes;
  *&result->_poolingKernelSizes.sizes[2] = v12;
  result->_poolingMode = a5;
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

- (MPSNDArrayPoolingMultiDestinationKernel)initWithCoder:(id)a3 device:(id)a4
{
  v24.receiver = self;
  v24.super_class = MPSNDArrayPoolingMultiDestinationKernel;
  result = [(MPSNDArrayMultiaryMultiDestinationKernel *)&v24 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super._encode = EncodePoolingMultiDestination;
    result->super.super._encodeData = result;
    v23 = result;
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 0];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 0];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 0];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 0];
    v23->_poolingOffsets.offsets[0] = [a3 decodeIntegerForKey:v7];
    v23->_poolingKernelSizes.sizes[0] = [a3 decodeIntegerForKey:v6];
    v23->_poolingStrides.sizes[0] = [a3 decodeIntegerForKey:v8];
    v23->_poolingDilationRates.sizes[0] = [a3 decodeIntegerForKey:v9];

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 1];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 1];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 1];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 1];
    v23->_poolingOffsets.offsets[1] = [a3 decodeIntegerForKey:v11];
    v23->_poolingKernelSizes.sizes[1] = [a3 decodeIntegerForKey:v10];
    v23->_poolingStrides.sizes[1] = [a3 decodeIntegerForKey:v12];
    v23->_poolingDilationRates.sizes[1] = [a3 decodeIntegerForKey:v13];

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 2];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 2];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 2];
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 2];
    v23->_poolingOffsets.offsets[2] = [a3 decodeIntegerForKey:v14];
    v23->_poolingKernelSizes.sizes[2] = [a3 decodeIntegerForKey:v22];
    v23->_poolingStrides.sizes[2] = [a3 decodeIntegerForKey:v15];
    v23->_poolingDilationRates.sizes[2] = [a3 decodeIntegerForKey:v16];

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 3];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 3];
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 3];
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 3];
    v23->_poolingOffsets.offsets[3] = [a3 decodeIntegerForKey:v18];
    v23->_poolingKernelSizes.sizes[3] = [a3 decodeIntegerForKey:v17];
    v23->_poolingStrides.sizes[3] = [a3 decodeIntegerForKey:v19];
    v23->_poolingDilationRates.sizes[3] = [a3 decodeIntegerForKey:v20];

    v21 = [a3 decodeIntegerForKey:@"MPSNDArrayPoolingMultiDestination.poolingMode"];
    result = v23;
    v23->_poolingMode = v21;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v25.receiver = self;
  v25.super_class = MPSNDArrayPoolingMultiDestinationKernel;
  v4 = self;
  [(MPSNDArrayMultiaryMultiDestinationBase *)&v25 encodeWithCoder:?];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 0];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 0];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 0];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 0];
  v24 = v4;
  [a3 encodeInteger:v4->_poolingKernelSizes.sizes[0] forKey:v5];
  [a3 encodeInteger:v4->_poolingOffsets.offsets[0] forKey:v6];
  [a3 encodeInteger:v4->_poolingStrides.sizes[0] forKey:v7];
  p_poolingDilationRates = &v4->_poolingDilationRates;
  [a3 encodeInteger:v4->_poolingDilationRates.sizes[0] forKey:v8];

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 1];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 1];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 1];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 1];
  p_poolingKernelSizes = &v4->_poolingKernelSizes;
  [a3 encodeInteger:v4->_poolingKernelSizes.sizes[1] forKey:v10];
  p_poolingOffsets = &v4->_poolingOffsets;
  [a3 encodeInteger:v4->_poolingOffsets.offsets[1] forKey:v11];
  v4 = (v4 + 200);
  [a3 encodeInteger:v4->super.super.super._options forKey:v12];
  [a3 encodeInteger:p_poolingDilationRates->sizes[1] forKey:v13];

  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 2];
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 2];
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 2];
  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 2];
  [a3 encodeInteger:p_poolingKernelSizes->sizes[2] forKey:v23];
  [a3 encodeInteger:p_poolingOffsets->offsets[2] forKey:v16];
  [a3 encodeInteger:v4->super.super.super._verbosityLevel forKey:v17];
  [a3 encodeInteger:p_poolingDilationRates->sizes[2] forKey:v18];

  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.kernelSizes", 3];
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.offsets", 3];
  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.strides", 3];
  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPoolingMultiDestination.dilationRates", 3];
  [a3 encodeInteger:p_poolingKernelSizes->sizes[3] forKey:v19];
  [a3 encodeInteger:p_poolingOffsets->offsets[3] forKey:v20];
  [a3 encodeInteger:v4->super.super.super._device forKey:v21];
  [a3 encodeInteger:p_poolingDilationRates->sizes[3] forKey:v22];

  [a3 encodeInteger:v24->_poolingMode forKey:@"MPSNDArrayPoolingMultiDestination.poolingMode"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayPoolingMultiDestinationKernel;
  result = [(MPSNDArrayMultiaryMultiDestinationKernel *)&v6 copyWithZone:a3 device:a4];
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

- (void)setPoolingOffsets:(MPSNDArrayPoolingOffsets_s *)a3
{
  v3 = *&a3->offsets[2];
  *self->_poolingOffsets.offsets = *a3->offsets;
  *&self->_poolingOffsets.offsets[2] = v3;
}

- (MPSNDArrayPoolingSizes_s)poolingStrides
{
  v3 = *&self[6].sizes[3];
  *retstr->sizes = *&self[6].sizes[1];
  *&retstr->sizes[2] = v3;
  return self;
}

- (void)setPoolingStrides:(MPSNDArrayPoolingSizes_s *)a3
{
  v3 = *&a3->sizes[2];
  *self->_poolingStrides.sizes = *a3->sizes;
  *&self->_poolingStrides.sizes[2] = v3;
}

- (MPSNDArrayPoolingSizes_s)poolingDilationRates
{
  v3 = *&self[7].sizes[3];
  *retstr->sizes = *&self[7].sizes[1];
  *&retstr->sizes[2] = v3;
  return self;
}

- (void)setPoolingDilationRates:(MPSNDArrayPoolingSizes_s *)a3
{
  v3 = *&a3->sizes[2];
  *self->_poolingDilationRates.sizes = *a3->sizes;
  *&self->_poolingDilationRates.sizes[2] = v3;
}

@end