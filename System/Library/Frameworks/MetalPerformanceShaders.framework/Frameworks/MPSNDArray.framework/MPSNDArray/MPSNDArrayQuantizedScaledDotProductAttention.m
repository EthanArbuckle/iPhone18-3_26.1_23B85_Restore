@interface MPSNDArrayQuantizedScaledDotProductAttention
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
@end

@implementation MPSNDArrayQuantizedScaledDotProductAttention

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v78.receiver = self;
  v78.super_class = MPSNDArrayQuantizedScaledDotProductAttention;
  v10 = [(MPSNDArrayMultiaryBase *)&v78 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
  if ([a5 layout] == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if ([a5 layout] == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [a3 objectAtIndexedSubscript:0];
  v14 = [a3 objectAtIndexedSubscript:1];
  v15 = *MEMORY[0x277CD7410];
  v16 = *(v13 + v15);
  v17 = *(v13 + v15 + 16);
  v18 = *(v13 + v15 + 48);
  v19 = *MEMORY[0x277CD73D8];
  v20 = *(v13 + v19);
  v75 = *(v13 + v15 + 32);
  v76 = v18;
  v74[0] = v16;
  v74[1] = v17;
  v21 = *(v74 + (v20 & 0xF));
  v71 = *(v14 + v19);
  v22 = (&v70 | v12 & 0xF);
  v23 = *(v14 + v15 + 4 * (*(&v71 | v12 & 0xF) & 0xF));
  v70 = v20;
  v73[2] = v75;
  v73[3] = v18;
  v73[0] = v16;
  v73[1] = v17;
  v24 = *(v73 + (*v22 & 0xF));
  v72[2] = v75;
  v72[3] = v18;
  v72[0] = v16;
  v72[1] = v17;
  v25 = *(v72 + (*(&v70 | v11 & 0xF) & 0xF));
  v77[2] = v75;
  v77[3] = v18;
  v77[0] = v16;
  v77[1] = v17;
  v26 = *(v77 + (BYTE3(v20) & 0xF));
  v27 = MEMORY[0x277CD73C8];
  v28 = (v26 * v25 * v24 * v23 * (2 * v21 + 10));
  if ((*(a4 + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [v10 setFloat32Ops:v28];
    [v10 setFloat16Ops:0.0];
  }

  else
  {
    [v10 setFloat16Ops:v28];
    [v10 setFloat32Ops:0.0];
  }

  [v10 float32Ops];
  v30 = v29;
  [v10 float16Ops];
  v32 = v31;
  [v10 deviceMemoryBytesRead];
  v34 = v33;
  [v10 deviceMemoryBytesWrite];
  v36 = v35;
  v37 = [a3 count];
  if (v37 == 6)
  {
    v47 = *([a3 objectAtIndexedSubscript:0] + *v27);
    v69 = MPSGetDataTypeName();
    v48 = *([a3 objectAtIndexedSubscript:1] + *v27);
    v67 = MPSGetDataTypeName();
    v49 = *([a3 objectAtIndexedSubscript:2] + *v27);
    MPSGetDataTypeName();
    v50 = *([a3 objectAtIndexedSubscript:3] + *v27);
    MPSGetDataTypeName();
    v51 = *([a3 objectAtIndexedSubscript:4] + *v27);
    MPSGetDataTypeName();
    v52 = *([a3 objectAtIndexedSubscript:5] + *v27);
    MPSGetDataTypeName();
    v53 = *(a4 + *v27);
    MPSGetDataTypeName();
    MPSKernel_LogInfo(a5, v54, "QuantizedSDPA: Q is not quantized, Batches=%lu, PromptSize=%lu, Contexts=%lu, Heads=%lu, Features=%lu, Q Datatype: %s, K Datatype: %s, V Datatype: %s, Mask Datatype: %s, KScale Datatype: %s, VScale Datatype: %s, Dest Datatype: %s\t", v26, v24, v23, v25, v21, v69, v67);
  }

  else if (v37 == 7)
  {
    v38 = *([a3 objectAtIndexedSubscript:0] + *v27);
    v68 = MPSGetDataTypeName();
    v39 = *([a3 objectAtIndexedSubscript:1] + *v27);
    v66 = MPSGetDataTypeName();
    v40 = *([a3 objectAtIndexedSubscript:2] + *v27);
    v65 = MPSGetDataTypeName();
    v41 = *([a3 objectAtIndexedSubscript:3] + *v27);
    MPSGetDataTypeName();
    v42 = *([a3 objectAtIndexedSubscript:4] + *v27);
    MPSGetDataTypeName();
    v43 = *([a3 objectAtIndexedSubscript:5] + *v27);
    MPSGetDataTypeName();
    v44 = *([a3 objectAtIndexedSubscript:6] + *v27);
    MPSGetDataTypeName();
    v45 = *(a4 + *v27);
    MPSGetDataTypeName();
    MPSKernel_LogInfo(a5, v46, "QuantizedSDPA: Q is quantized, Batches=%lu, PromptSize=%lu, Contexts=%lu, Heads=%lu, Features=%lu, Q Datatype: %s, K Datatype: %s, V Datatype: %s, Mask Datatype: %s, QScale Datatype: %s, KScale Datatype: %s, VScale Datatype: %s, Dest Datatype: %s\t", v26, v24, v23, v25, v21, v68, v66, v65);
  }

  v55 = (v30 + v32) / (v34 + v36);
  [v10 float16Ops];
  v57 = v56;
  [v10 float32Ops];
  v59 = v58;
  [v10 deviceMemoryBytesRead];
  v61 = v60;
  [v10 deviceMemoryBytesWrite];
  MPSKernel_LogInfo(a5, v62, "QuantizedSDPA: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v57, v59, v61, v63, v55);
  return v10;
}

@end