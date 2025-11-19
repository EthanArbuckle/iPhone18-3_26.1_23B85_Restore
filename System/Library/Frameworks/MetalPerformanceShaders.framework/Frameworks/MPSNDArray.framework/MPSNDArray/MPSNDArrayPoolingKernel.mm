@interface MPSNDArrayPoolingKernel
- (MPSNDArrayPoolingKernel)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayPoolingKernel)initWithDevice:(id)a3 kernelSizes:(MPSNDArrayPoolingSizes_s *)a4 poolingMode:(int)a5;
- (MPSNDArrayPoolingOffsets_s)poolingOffsets;
- (MPSNDArrayPoolingSizes_s)poolingDilationRates;
- (MPSNDArrayPoolingSizes_s)poolingKernelSizes;
- (MPSNDArrayPoolingSizes_s)poolingStrides;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)setPoolingDilationRates:(MPSNDArrayPoolingSizes_s *)a3;
- (void)setPoolingOffsets:(MPSNDArrayPoolingOffsets_s *)a3;
- (void)setPoolingStrides:(MPSNDArrayPoolingSizes_s *)a3;
@end

@implementation MPSNDArrayPoolingKernel

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MPSNDArrayPoolingKernel;
  v4 = [(MPSKernel *)&v8 debugDescription];
  v5 = self->_poolingMode - 1;
  if (v5 > 4)
  {
    v6 = "<UNKNOWN POOLING MODE - invalid object?>";
  }

  else
  {
    v6 = off_278B0E760[v5];
  }

  return [v3 stringWithFormat:@"%@\n\t%s\n\tkernelSize   =(%2lu, %2lu, %2lu, %2lu )\n\tstride       =(%2lu, %2lu, %2lu, %2lu )\n\toffset       =(%2d, %2d, %2d, %2d )\n\tdilationRate =(%2lu, %2lu, %2lu, %2lu )\n\t", v4, v6, self->_poolingKernelSizes.sizes[0], self->_poolingKernelSizes.sizes[1], self->_poolingKernelSizes.sizes[2], self->_poolingKernelSizes.sizes[3], self->_poolingStrides.sizes[0], self->_poolingStrides.sizes[1], self->_poolingStrides.sizes[2], self->_poolingStrides.sizes[3], self->_poolingOffsets.offsets[0], self->_poolingOffsets.offsets[1], self->_poolingOffsets.offsets[2], self->_poolingOffsets.offsets[3], self->_poolingDilationRates.sizes[0], self->_poolingDilationRates.sizes[1], self->_poolingDilationRates.sizes[2], self->_poolingDilationRates.sizes[3]];
}

- (MPSNDArrayPoolingKernel)initWithDevice:(id)a3 kernelSizes:(MPSNDArrayPoolingSizes_s *)a4 poolingMode:(int)a5
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayPoolingKernel;
  result = [(MPSNDArrayUnaryKernel *)&v9 initWithDevice:a3];
  result->super.super._encode = EncodePooling;
  result->super.super.super._encodeGradient = EncodePoolingGradient;
  result->super.super.super._encodeData = result;
  v8 = *&a4->sizes[2];
  *result->_poolingKernelSizes.sizes = *a4->sizes;
  *&result->_poolingKernelSizes.sizes[2] = v8;
  result->_poolingMode = a5;
  result->_disablePostfixReturnIndices = 0;
  result->_poolingGradientWithIndices = 0;
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

- (MPSNDArrayPoolingKernel)initWithCoder:(id)a3 device:(id)a4
{
  v24.receiver = self;
  v24.super_class = MPSNDArrayPoolingKernel;
  result = [(MPSNDArrayUnaryKernel *)&v24 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodePooling;
    result->super.super.super._encodeGradient = EncodePoolingGradient;
    result->super.super.super._encodeData = result;
    v23 = result;
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.kernelSizes", 0];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.offsets", 0];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.strides", 0];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.dilationRates", 0];
    v23->_poolingOffsets.offsets[0] = [a3 decodeIntegerForKey:v7];
    v23->_poolingKernelSizes.sizes[0] = [a3 decodeIntegerForKey:v6];
    v23->_poolingStrides.sizes[0] = [a3 decodeIntegerForKey:v8];
    v23->_poolingDilationRates.sizes[0] = [a3 decodeIntegerForKey:v9];

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.kernelSizes", 1];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.offsets", 1];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.strides", 1];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.dilationRates", 1];
    v23->_poolingOffsets.offsets[1] = [a3 decodeIntegerForKey:v11];
    v23->_poolingKernelSizes.sizes[1] = [a3 decodeIntegerForKey:v10];
    v23->_poolingStrides.sizes[1] = [a3 decodeIntegerForKey:v12];
    v23->_poolingDilationRates.sizes[1] = [a3 decodeIntegerForKey:v13];

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.kernelSizes", 2];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.offsets", 2];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.strides", 2];
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.dilationRates", 2];
    v23->_poolingOffsets.offsets[2] = [a3 decodeIntegerForKey:v14];
    v23->_poolingKernelSizes.sizes[2] = [a3 decodeIntegerForKey:v22];
    v23->_poolingStrides.sizes[2] = [a3 decodeIntegerForKey:v15];
    v23->_poolingDilationRates.sizes[2] = [a3 decodeIntegerForKey:v16];

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.kernelSizes", 3];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.offsets", 3];
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.strides", 3];
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.dilationRates", 3];
    v23->_poolingOffsets.offsets[3] = [a3 decodeIntegerForKey:v18];
    v23->_poolingKernelSizes.sizes[3] = [a3 decodeIntegerForKey:v17];
    v23->_poolingStrides.sizes[3] = [a3 decodeIntegerForKey:v19];
    v23->_poolingDilationRates.sizes[3] = [a3 decodeIntegerForKey:v20];

    v21 = [a3 decodeIntegerForKey:@"MPSNDArrayPooling.poolingMode"];
    result = v23;
    v23->_poolingMode = v21;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v25.receiver = self;
  v25.super_class = MPSNDArrayPoolingKernel;
  v4 = self;
  [(MPSNDArrayMultiaryBase *)&v25 encodeWithCoder:?];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.kernelSizes", 0];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.offsets", 0];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.strides", 0];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.dilationRates", 0];
  v24 = v4;
  [a3 encodeInteger:v4->_poolingKernelSizes.sizes[0] forKey:v5];
  [a3 encodeInteger:v4->_poolingOffsets.offsets[0] forKey:v6];
  [a3 encodeInteger:v4->_poolingStrides.sizes[0] forKey:v7];
  p_poolingDilationRates = &v4->_poolingDilationRates;
  [a3 encodeInteger:v4->_poolingDilationRates.sizes[0] forKey:v8];

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.kernelSizes", 1];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.offsets", 1];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.strides", 1];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.dilationRates", 1];
  p_poolingKernelSizes = &v4->_poolingKernelSizes;
  [a3 encodeInteger:v4->_poolingKernelSizes.sizes[1] forKey:v10];
  p_poolingOffsets = &v4->_poolingOffsets;
  [a3 encodeInteger:v4->_poolingOffsets.offsets[1] forKey:v11];
  v4 = (v4 + 744);
  [a3 encodeInteger:v4->super.super.super.super._options forKey:v12];
  [a3 encodeInteger:p_poolingDilationRates->sizes[1] forKey:v13];

  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.kernelSizes", 2];
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.offsets", 2];
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.strides", 2];
  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.dilationRates", 2];
  [a3 encodeInteger:p_poolingKernelSizes->sizes[2] forKey:v23];
  [a3 encodeInteger:p_poolingOffsets->offsets[2] forKey:v16];
  [a3 encodeInteger:v4->super.super.super.super._verbosityLevel forKey:v17];
  [a3 encodeInteger:p_poolingDilationRates->sizes[2] forKey:v18];

  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.kernelSizes", 3];
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.offsets", 3];
  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.strides", 3];
  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayPooling.dilationRates", 3];
  [a3 encodeInteger:p_poolingKernelSizes->sizes[3] forKey:v19];
  [a3 encodeInteger:p_poolingOffsets->offsets[3] forKey:v20];
  [a3 encodeInteger:v4->super.super.super.super._device forKey:v21];
  [a3 encodeInteger:p_poolingDilationRates->sizes[3] forKey:v22];

  [a3 encodeInteger:v24->_poolingMode forKey:@"MPSNDArrayPooling.poolingMode"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayPoolingKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 89) = self->_poolingOffsets.offsets[0];
    *(result + 85) = self->_poolingKernelSizes.sizes[0];
    *(result + 93) = self->_poolingStrides.sizes[0];
    *(result + 97) = self->_poolingDilationRates.sizes[0];
    *(result + 90) = self->_poolingOffsets.offsets[1];
    *(result + 86) = self->_poolingKernelSizes.sizes[1];
    *(result + 94) = self->_poolingStrides.sizes[1];
    *(result + 98) = self->_poolingDilationRates.sizes[1];
    *(result + 91) = self->_poolingOffsets.offsets[2];
    *(result + 87) = self->_poolingKernelSizes.sizes[2];
    *(result + 95) = self->_poolingStrides.sizes[2];
    *(result + 99) = self->_poolingDilationRates.sizes[2];
    *(result + 92) = self->_poolingOffsets.offsets[3];
    *(result + 88) = self->_poolingKernelSizes.sizes[3];
    *(result + 96) = self->_poolingStrides.sizes[3];
    *(result + 100) = self->_poolingDilationRates.sizes[3];
    *(result + 167) = self->_poolingMode;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v60.receiver = self;
  v60.super_class = MPSNDArrayPoolingKernel;
  v11 = [(MPSNDArrayMultiaryBase *)&v60 workloadStatisticsForSourceArrays:a3 sourceState:a7, a5, a6];
  if ([a3 count])
  {
    v12 = [objc_msgSend(a3 objectAtIndexedSubscript:{0), "numberOfDimensions"}];
    if (v12)
    {
      v13 = v12;
      do
      {
        [a3 objectAtIndexedSubscript:0];
        --v13;
      }

      while (v13);
    }

    v14 = [a4 numberOfDimensions];
    v15 = MEMORY[0x277CD7410];
    v57 = a4;
    v58 = a5;
    if (v14)
    {
      v16 = 0;
      v17 = (a4 + *MEMORY[0x277CD7410]);
      v19 = v17[2];
      v18 = v17[3];
      v21 = *v17;
      v20 = v17[1];
      v22 = 1;
      do
      {
        v59[0] = v21;
        v59[1] = v20;
        v59[2] = v19;
        v59[3] = v18;
        v22 *= *(v59 + (v16++ & 0xF));
      }

      while (v14 != v16);
    }

    else
    {
      v22 = 1;
    }

    p_poolingKernelSizes = &self->_poolingKernelSizes;
    v24 = p_poolingKernelSizes->sizes[3];
    v25 = p_poolingKernelSizes->sizes[1] * p_poolingKernelSizes->sizes[0] * p_poolingKernelSizes->sizes[2];
    [v11 setFloat32Ops:0.0];
    [v11 setFloat16Ops:0.0];
    [a3 objectAtIndexedSubscript:0];
    [v11 setFloat32Ops:((v25 * v24 - 1) * v22)];
    [v11 float32Ops];
    v27 = v26;
    [v11 float16Ops];
    v29 = v27 + v28;
    [v11 deviceMemoryBytesRead];
    v31 = v30;
    [v11 deviceMemoryBytesWrite];
    v33 = v29 / (v31 + v32);
    v56 = *([a3 objectAtIndexedSubscript:0] + *v15 + 12);
    LODWORD(v24) = *([a3 objectAtIndexedSubscript:0] + *v15 + 8);
    LODWORD(v25) = *([a3 objectAtIndexedSubscript:0] + *v15 + 4);
    v34 = [a3 objectAtIndexedSubscript:0];
    v35 = *v15;
    v37 = p_poolingKernelSizes->sizes[2];
    v36 = p_poolingKernelSizes->sizes[3];
    v40 = p_poolingKernelSizes;
    v39 = p_poolingKernelSizes->sizes[0];
    v38 = v40->sizes[1];
    v41 = *(v34 + v35);
    v42 = [a3 objectAtIndexedSubscript:0];
    v43 = MEMORY[0x277CD73C8];
    v44 = *(v42 + *MEMORY[0x277CD73C8]);
    v45 = MPSGetDataTypeName();
    v46 = *&v57[*v43];
    v47 = MPSGetDataTypeName();
    MPSKernel_LogInfo(v58, 2uLL, "4d Pooling: T=%u, D=%u, H=%u, W=%u, kT=%lu, kD=%lu, kH=%lu, kW=%lu, src0 Datatype: %s dest Datatype: %s\t", v56, v24, v25, v41, v36, v37, v38, v39, v45, v47);
    [v11 float16Ops];
    v49 = v48;
    [v11 float32Ops];
    v51 = v50;
    [v11 deviceMemoryBytesRead];
    v53 = v52;
    [v11 deviceMemoryBytesWrite];
    MPSKernel_LogInfo(v58, 2uLL, "Pooling: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v49, v51, v53, v54, v33);
  }

  return v11;
}

- (MPSNDArrayPoolingSizes_s)poolingKernelSizes
{
  v3 = *&self[21].sizes[3];
  *retstr->sizes = *&self[21].sizes[1];
  *&retstr->sizes[2] = v3;
  return self;
}

- (MPSNDArrayPoolingOffsets_s)poolingOffsets
{
  v3 = *&self[22].offsets[3];
  *retstr->offsets = *&self[22].offsets[1];
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
  v3 = *&self[23].sizes[3];
  *retstr->sizes = *&self[23].sizes[1];
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
  v3 = *&self[24].sizes[3];
  *retstr->sizes = *&self[24].sizes[1];
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