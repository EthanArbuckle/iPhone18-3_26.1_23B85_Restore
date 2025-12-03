@interface MPSNDArrayMatrixMultiplicationGradient
- (MPSNDArrayMatrixMultiplicationGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayMatrixMultiplicationGradient)initWithDevice:(id)device sourceCount:(unint64_t)count sourceGradientIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayMatrixMultiplicationGradient

- (MPSNDArrayMatrixMultiplicationGradient)initWithDevice:(id)device sourceCount:(unint64_t)count sourceGradientIndex:(unint64_t)index
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayMatrixMultiplicationGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v10 initWithDevice:device sourceCount:count sourceGradientIndex:?];
  if (result)
  {
    if (index >= 2)
    {
      v7 = result;
      v8 = MTLReportFailureTypeEnabled();
      result = v7;
      if (v8)
      {
        sourceGradientIndex = v7->super._sourceGradientIndex;
        MTLReportFailure();
        result = v7;
      }
    }

    result->_alpha = 1.0;
    result->_beta = 1.0;
    result->super.super._encodeGradient = EncodeArrayMultiplyGradient;
    result->super.super._encodeData = result;
  }

  return result;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v14[16] = *MEMORY[0x277D85DE8];
  v6 = [arrays objectAtIndexedSubscript:{self->super._sourceGradientIndex, state}];
  v7 = MEMORY[0x277CD7410];
  v14[0] = *(v6 + *MEMORY[0x277CD7410]);
  v14[1] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 4);
  v14[2] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 8);
  v14[3] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 12);
  v14[4] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 16);
  v14[5] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 20);
  v14[6] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 24);
  v14[7] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 28);
  v14[8] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 32);
  v14[9] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 36);
  v14[10] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 40);
  v14[11] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 44);
  v14[12] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 48);
  v14[13] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 52);
  v14[14] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 56);
  v14[15] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 60);
  v8 = MEMORY[0x277CD7268];
  v9 = [arrays objectAtIndexedSubscript:self->super._sourceGradientIndex];
  v10 = *(v9 + *MEMORY[0x277CD73C8]);
  v11 = [arrays objectAtIndexedSubscript:self->super._sourceGradientIndex];
  result = [v8 descriptorWithDataType:v10 dimensionCount:*(v11 + *MEMORY[0x277CD73F0]) dimensionSizes:v14];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSNDArrayMatrixMultiplicationGradient)initWithCoder:(id)coder device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayMatrixMultiplicationGradient;
  v5 = [(MPSNDArrayMultiaryGradientKernel *)&v9 initWithCoder:coder device:device];
  if (v5)
  {
    [coder decodeDoubleForKey:@"MPSNDArrayMatrixMultiplicationGradient.alpha"];
    v5->_alpha = v6;
    [coder decodeDoubleForKey:@"MPSNDArrayMatrixMultiplicationGradient.beta"];
    v5->_beta = v7;
    v5->super.super._encodeGradient = EncodeArrayMultiplyGradient;
    v5->super.super._encodeData = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMatrixMultiplicationGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [coder encodeDouble:@"MPSNDArrayMatrixMultiplicationGradient.alpha" forKey:self->_alpha];
  [coder encodeDouble:@"MPSNDArrayMatrixMultiplicationGradient.beta" forKey:self->_beta];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMatrixMultiplicationGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 18) = *&self->_alpha;
    *(result + 19) = *&self->_beta;
    self->super.super._encodeGradient = EncodeArrayMultiplyGradient;
    self->super.super._encodeData = self;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v69.receiver = self;
  v69.super_class = MPSNDArrayMatrixMultiplicationGradient;
  v9 = [(MPSNDArrayMultiaryBase *)&v69 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state];
  graph = [object graph];
  v11 = *(graph + 64);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v13)
  {
    v16 = 0;
  }

  else
  {
    v14 = graph;
    v15 = 0;
    v16 = -1;
    v17 = -1;
    do
    {
      v18 = *v12;
      if (v18 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        v16 = v15;
      }

      v19 = *v12;
      if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        v17 = v15;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v14) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v14);
      }

      ++v15;
      ++v12;
    }

    while (v12 != v13);
    if (v16 == -1)
    {
      v16 = 0;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v17 != -1)
    {
      goto LABEL_17;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_15:
    MTLReportFailure();
  }

LABEL_16:
  v17 = 0;
LABEL_17:
  v20 = [arrays objectAtIndexedSubscript:v16];
  v21 = [arrays objectAtIndexedSubscript:v17];
  v22 = v21;
  v23 = *MEMORY[0x277CD73D8];
  v24 = *(v20 + v23);
  v25 = BYTE1(*(v20 + v23));
  v61 = *(v21 + v23);
  v26 = BYTE1(*(v21 + v23));
  v27 = *MEMORY[0x277CD7410];
  v28 = *(v20 + v27 + 4 * (WORD1(*(v20 + v23)) & 0xF));
  v29 = *(destArrays + v27);
  v30 = *(destArrays + v27 + 16);
  v31 = *(destArrays + v27 + 48);
  v32 = *(destArrays + v23);
  v66 = *(destArrays + v27 + 32);
  v67 = v31;
  v65[0] = v29;
  v65[1] = v30;
  v33 = *(v65 + (BYTE1(v32) & 0xF));
  v68[2] = v66;
  v68[3] = v31;
  v68[0] = v29;
  v68[1] = v30;
  v34 = *(v68 + (v32 & 0xF));
  if (v61 <= v26)
  {
    v35 = v24;
  }

  else
  {
    v35 = v25;
  }

  v36 = *(v21 + v27 + 4 * (v35 & 0xF));
  v37 = MEMORY[0x277CD73C8];
  v62 = v28;
  v38 = (v33 * v28 * v34 * v36);
  if ((*(destArrays + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [v9 setFloat32Ops:v38];
    [v9 setFloat16Ops:0.0];
  }

  else
  {
    [v9 setFloat16Ops:v38];
    [v9 setFloat32Ops:0.0];
  }

  [v9 float32Ops];
  v40 = v39;
  [v9 float16Ops];
  v42 = v40 + v41;
  [v9 deviceMemoryBytesRead];
  v44 = v43;
  [v9 deviceMemoryBytesWrite];
  v46 = *(v20 + *v37);
  v47 = v42 / (v44 + v45);
  v48 = MPSGetDataTypeName();
  v49 = *(v22 + *v37);
  v50 = MPSGetDataTypeName();
  v51 = *(destArrays + *v37);
  v52 = MPSGetDataTypeName();
  MPSKernel_LogInfo(kernel, 2uLL, "Matrix Multiply: M=%lu, N=%lu, K=%lu, Batch Size: %lu, transposeA=%d, transposeB=%d, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v33, v34, v36, v62, v24 > v25, v61 > v26, v48, v50, v52);
  [v9 float16Ops];
  v54 = v53;
  [v9 float32Ops];
  v56 = v55;
  [v9 deviceMemoryBytesRead];
  v58 = v57;
  [v9 deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernel, 2uLL, "Matrix Multiply: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v54, v56, v58, v59, v47);
  return v9;
}

@end