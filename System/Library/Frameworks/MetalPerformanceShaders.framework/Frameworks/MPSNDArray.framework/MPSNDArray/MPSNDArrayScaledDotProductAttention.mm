@interface MPSNDArrayScaledDotProductAttention
- (MPSNDArrayScaledDotProductAttention)initWithDevice:(id)device kernelType:(int)type sourceCount:(unint64_t)count;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (int64_t)createFallbackKernels:(id)kernels;
- (void)dealloc;
@end

@implementation MPSNDArrayScaledDotProductAttention

- (int64_t)createFallbackKernels:(id)kernels
{
  if (!self->_createdFallbackKernels)
  {
    self->_QKTMatmulKernel = [[MPSNDArrayMatrixMultiplication alloc] initWithDevice:kernels sourceCount:2];
    self->_softmaxKernel = [[MPSNDArrayStitchedReductionSoftmax alloc] initWithDevice:kernels axis:0];
    self->_finalMatmulKernel = [[MPSNDArrayMatrixMultiplication alloc] initWithDevice:kernels sourceCount:2];
    self->_softMaxMatMulKernel = [[MPSNDArrayMatrixMultiplication alloc] initWithDevice:kernels sourceCount:2];
    v5 = objc_alloc_init(MPSNDArrayNormFusionDescriptor);
    [(MPSNDArrayNormFusionDescriptor *)v5 setIsLeftFused:1];
    [(MPSNDArrayNormFusionDescriptor *)v5 setNormFusionType:1];
    [(MPSNDArrayMatrixMultiplication *)self->_softMaxMatMulKernel setNormFusionDescriptor:v5];
    self->_createdFallbackKernels = 1;
  }

  return 0;
}

- (MPSNDArrayScaledDotProductAttention)initWithDevice:(id)device kernelType:(int)type sourceCount:(unint64_t)count
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayScaledDotProductAttention;
  result = [(MPSNDArrayMultiaryKernel *)&v10 initWithDevice:device sourceCount:count];
  if (result)
  {
    result->super._encode = EncodeSDPA;
    result->_kernelType = type;
    result->_alpha = 0.0;
    result->_layout = 0;
    result->_createdFallbackKernels = 0;
    v8 = result;
    v9 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    result = v8;
    v8->_identity = v9;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v67.receiver = self;
  v67.super_class = MPSNDArrayScaledDotProductAttention;
  object = [(MPSNDArrayMultiaryBase *)&v67 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  if ([kernel layout] == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if ([kernel layout] == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [arrays objectAtIndexedSubscript:0];
  v14 = [arrays objectAtIndexedSubscript:1];
  v15 = *MEMORY[0x277CD7410];
  v16 = *(v13 + v15);
  v17 = *(v13 + v15 + 16);
  v18 = *(v13 + v15 + 48);
  v19 = *MEMORY[0x277CD73D8];
  v20 = *(v13 + v19);
  v64 = *(v13 + v15 + 32);
  v65 = v18;
  v63[0] = v16;
  v63[1] = v17;
  v21 = *(v63 + (v20 & 0xF));
  v60 = *(v14 + v19);
  v22 = *(v14 + v15 + 4 * (*(&v60 | v12 & 0xF) & 0xF));
  v59 = v20;
  v62[2] = v64;
  v62[3] = v18;
  v62[0] = v16;
  v62[1] = v17;
  v23 = *(v62 + (*(&v59 | v12 & 0xF) & 0xF));
  v61[2] = v64;
  v61[3] = v18;
  v61[0] = v16;
  v61[1] = v17;
  v24 = *(v61 + (*(&v59 | v11 & 0xF) & 0xF));
  v66[2] = v64;
  v66[3] = v18;
  v66[0] = v16;
  v66[1] = v17;
  v25 = *(v66 + (BYTE3(v20) & 0xF));
  v56 = v22;
  v57 = v21;
  v26 = MEMORY[0x277CD73C8];
  destArraysCopy = destArrays;
  v27 = (v25 * v24 * v23 * v22 * (2 * v21 + 10));
  if ((*(destArrays + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [object setFloat32Ops:v27];
    [object setFloat16Ops:0.0];
  }

  else
  {
    [object setFloat16Ops:v27];
    [object setFloat32Ops:0.0];
  }

  [object float32Ops];
  v29 = v28;
  [object float16Ops];
  v31 = v29 + v30;
  [object deviceMemoryBytesRead];
  v33 = v32;
  [object deviceMemoryBytesWrite];
  v35 = v31 / (v33 + v34);
  v36 = *([arrays objectAtIndexedSubscript:0] + *v26);
  v37 = MPSGetDataTypeName();
  v38 = *([arrays objectAtIndexedSubscript:1] + *v26);
  v39 = MPSGetDataTypeName();
  v40 = *([arrays objectAtIndexedSubscript:2] + *v26);
  v41 = MPSGetDataTypeName();
  v42 = *([arrays objectAtIndexedSubscript:3] + *v26);
  v43 = MPSGetDataTypeName();
  v44 = *&destArraysCopy[*v26];
  v45 = MPSGetDataTypeName();
  MPSKernel_LogInfo(kernel, v46, "SDPA: Batches=%lu, PromptSize=%lu, Contexts=%lu, Heads=%lu, Features=%lu, Q Datatype: %s, K Datatype: %s, V Datatype: %s, Mask Datatype: %s, Dest Datatype: %s\t", v25, v23, v56, v24, v57, v37, v39, v41, v43, v45);
  [object float16Ops];
  v48 = v47;
  [object float32Ops];
  v50 = v49;
  [object deviceMemoryBytesRead];
  v52 = v51;
  [object deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernel, v53, "SDPA: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v48, v50, v52, v54, v35);
  return object;
}

- (void)dealloc
{
  kernelDAGObject = self->_kernelDAGObject;
  if (kernelDAGObject)
  {
  }

  QKTMatmulKernel = self->_QKTMatmulKernel;
  if (QKTMatmulKernel)
  {
  }

  softmaxKernel = self->_softmaxKernel;
  if (softmaxKernel)
  {
  }

  finalMatmulKernel = self->_finalMatmulKernel;
  if (finalMatmulKernel)
  {
  }

  softMaxMatMulKernel = self->_softMaxMatMulKernel;
  if (softMaxMatMulKernel)
  {
  }

  v8.receiver = self;
  v8.super_class = MPSNDArrayScaledDotProductAttention;
  [(MPSNDArrayMultiaryBase *)&v8 dealloc];
}

@end