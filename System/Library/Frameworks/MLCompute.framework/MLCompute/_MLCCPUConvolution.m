@interface _MLCCPUConvolution
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6 convolutionTranspose:(BOOL)a7;
+ (id)createBNNSNDArrayDescriptorForDescriptor:(id)a3 biasDelta:(id)a4 dataType:(int)a5;
+ (id)createBNNSNDArrayDescriptorForDescriptor:(id)a3 weightsDelta:(id)a4 fullyConnected:(BOOL)a5 dataType:(int)a6;
+ (id)layerWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 convolutionDescriptor:(id)a6 neuronDescriptor:(id)a7;
- (_MLCCPUConvolution)initWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 convolutionDescriptor:(id)a6 neuronDescriptor:(id)a7;
@end

@implementation _MLCCPUConvolution

- (_MLCCPUConvolution)initWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 convolutionDescriptor:(id)a6 neuronDescriptor:(id)a7
{
  v64[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v51 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v61, 0x348uLL);
  CPU_BuildBNNSConvolutionWeightAndBiasParams(v61, v15, v13, v14);
  v17 = [v15 isConvolutionTranspose];
  if (v17)
  {
    v18 = 25;
  }

  else
  {
    v18 = 4;
  }

  v57 = v14;
  if (v16)
  {
    v19 = v17;
    if (!setBNNSActivation(&v62, v16))
    {
      v37 = 0;
      v38 = v51;
      goto LABEL_24;
    }

    v48 = v16;
    v49 = v12;
    if (v19)
    {
      v20 = 26;
    }

    else
    {
      v20 = 5;
    }

    v47 = v20;
  }

  else
  {
    v47 = v18;
    v48 = 0;
    v49 = v12;
  }

  v21 = [MEMORY[0x277CBEA90] dataWithBytes:v61 length:840];
  memset(v60, 0, sizeof(v60));
  memset(v59, 0, sizeof(v59));
  v54 = [MEMORY[0x277CBEA90] dataWithBytes:v60 length:176];
  v53 = [MEMORY[0x277CBEA90] dataWithBytes:v59 length:176];
  v22 = objc_opt_class();
  v23 = [v13 descriptor];
  v52 = [v22 createBNNSNDArrayDescriptorForDescriptor:v15 weightsDelta:0 fullyConnected:0 dataType:{objc_msgSend(v23, "dataType")}];

  v24 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; i != 3; ++i)
  {
    v26 = objc_opt_class();
    v27 = [v13 descriptor];
    v28 = [v26 createBNNSNDArrayDescriptorForDescriptor:v15 weightsDelta:0 fullyConnected:0 dataType:{objc_msgSend(v27, "dataType")}];
    [v24 setObject:v28 atIndexedSubscript:i];
  }

  v50 = v21;
  if (v57)
  {
    v29 = objc_opt_class();
    v30 = [v57 descriptor];
    v55 = [v29 createBNNSNDArrayDescriptorForDescriptor:v15 biasDelta:0 dataType:{objc_msgSend(v30, "dataType")}];

    v31 = [MEMORY[0x277CBEBF8] mutableCopy];
    for (j = 0; j != 3; ++j)
    {
      v33 = objc_opt_class();
      v34 = [v57 descriptor];
      v35 = [v33 createBNNSNDArrayDescriptorForDescriptor:v15 biasDelta:0 dataType:{objc_msgSend(v34, "dataType")}];
      [v31 setObject:v35 atIndexedSubscript:j];
    }

    v21 = v50;
    v36 = v55;
  }

  else
  {
    v36 = 0;
    v31 = 0;
  }

  v64[0] = v54;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
  v63 = v53;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  v56 = v36;
  v41 = [MLCCPUDeviceOps deviceOpsWithType:v47 params:v21 inDeltaData:v39 outDeltaData:v40 weightsDeltaData:v52 biasDeltaData:v36 weightsMomentumData:v24 biasMomentumData:v31];

  v12 = v49;
  v14 = v57;
  v38 = v51;
  if (v41)
  {
    [v51 addObject:v41];
    v42 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v41 setWeightsMomentumDataBytes:v42];

    if (v57)
    {
      v43 = [MEMORY[0x277CBEBF8] mutableCopy];
      [v41 setBiasMomentumDataBytes:v43];
    }

    [v41 setPaddingPolicy:{objc_msgSend(v15, "paddingPolicy")}];
  }

  v44 = [v51 copy];
  v58.receiver = self;
  v58.super_class = _MLCCPUConvolution;
  self = [(_MLCCPULayer *)&v58 initWithDevice:v49 deviceOps:v44];

  v37 = self;
  v16 = v48;
LABEL_24:

  v45 = *MEMORY[0x277D85DE8];
  return v37;
}

+ (id)layerWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 convolutionDescriptor:(id)a6 neuronDescriptor:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithDevice:v16 weights:v15 biasTerms:v14 convolutionDescriptor:v13 neuronDescriptor:v12];

  return v17;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6 convolutionTranspose:(BOOL)a7
{
  v7 = a7;
  v11 = a5;
  v12 = a6;
  v13 = [a4 objectAtIndexedSubscript:0];
  v14 = [v13 params];
  v15 = [v14 bytes];
  CPU_BuildBNNSConvolutionInputOutputParams(v15, v11, v12, v7, [v13 paddingPolicy]);
  memset(&v23, 0, sizeof(v23));
  v23.flags = 1;
  if (v7)
  {
    v16 = BNNSFilterCreateLayerTransposedConvolution(v15, &v23);
  }

  else
  {
    v16 = MEMORY[0x23EE75C50](v15, &v23);
  }

  v17 = v16;
  if (v16)
  {
    [v13 setBNNSFilter:{v16, *&v23.flags, *&v23.alloc_memory}];
    v18 = [v11 objectAtIndexedSubscript:0];
    [v13 setSourceStride:CPU_SetBatchStride(v18)];

    [v13 setResultStride:CPU_SetBatchStride(v12)];
  }

  else
  {
    v19 = [MLCLog framework:*&v23.flags];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_MLCCPUConvolution compileWithDevice:a2 deviceOps:v19 sourceTensors:? resultTensor:? convolutionTranspose:?];
    }
  }

  objc_opt_class();
  v20 = objc_opt_new();
  [v13 setLayer:v20];

  v21 = [v13 layer];
  [v21 setFilter:v17];

  return 1;
}

+ (id)createBNNSNDArrayDescriptorForDescriptor:(id)a3 biasDelta:(id)a4 dataType:(int)a5
{
  v7 = a4;
  *(&v10 + 1) = [a3 outputFeatureChannelCount];
  *(&v11 + 1) = 1;
  if (v7)
  {
    *(&v12 + 1) = [v7 bytes];
  }

  LODWORD(v13) = CPU_BNNSDataType(a5);
  *(&v14 + 4) = 1065353216;
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:176];

  return v8;
}

+ (id)createBNNSNDArrayDescriptorForDescriptor:(id)a3 weightsDelta:(id)a4 fullyConnected:(BOOL)a5 dataType:(int)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  if (v7)
  {
    v11 = &v26;
    DWORD1(v21) = 0x20000;
    *(&v21 + 1) = [v9 inputFeatureChannelCount];
    *&v22 = [v9 outputFeatureChannelCount];
    *(&v25 + 1) = 1;
    v12 = [v9 inputFeatureChannelCount];
  }

  else
  {
    v11 = &v27;
    if ([v9 usesDepthwiseConvolution])
    {
      v13 = [v9 inputFeatureChannelCount];
    }

    else
    {
      v13 = [v9 groupCount];
    }

    v14 = v13;
    DWORD1(v21) = 0x40000;
    v15 = [v9 kernelWidth];
    *(&v21 + 1) = v15;
    v16 = [v9 kernelHeight];
    *&v22 = v16;
    v17 = [v9 inputFeatureChannelCount];
    if (v14 == 1)
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 / v14;
    }

    *(&v22 + 1) = v18;
    *&v23 = [v9 outputFeatureChannelCount];
    *(&v25 + 1) = 1;
    *&v26 = v15;
    *(&v26 + 1) = v16 * v15;
    v12 = v18 * v16 * v15;
  }

  *v11 = v12;
  if (v10)
  {
    *(&v29 + 1) = [v10 bytes];
  }

  LODWORD(v30) = CPU_BNNSDataType(a6);
  *(&v31 + 4) = 1065353216;
  v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v21 length:176];

  return v19;
}

+ (void)compileWithDevice:(const char *)a1 deviceOps:(NSObject *)a2 sourceTensors:resultTensor:convolutionTranspose:.cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: BNNS filter could not be created", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end