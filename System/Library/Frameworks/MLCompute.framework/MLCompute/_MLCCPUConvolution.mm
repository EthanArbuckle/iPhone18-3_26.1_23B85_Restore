@interface _MLCCPUConvolution
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor convolutionTranspose:(BOOL)transpose;
+ (id)createBNNSNDArrayDescriptorForDescriptor:(id)descriptor biasDelta:(id)delta dataType:(int)type;
+ (id)createBNNSNDArrayDescriptorForDescriptor:(id)descriptor weightsDelta:(id)delta fullyConnected:(BOOL)connected dataType:(int)type;
+ (id)layerWithDevice:(id)device weights:(id)weights biasTerms:(id)terms convolutionDescriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor;
- (_MLCCPUConvolution)initWithDevice:(id)device weights:(id)weights biasTerms:(id)terms convolutionDescriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor;
@end

@implementation _MLCCPUConvolution

- (_MLCCPUConvolution)initWithDevice:(id)device weights:(id)weights biasTerms:(id)terms convolutionDescriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor
{
  v64[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  weightsCopy = weights;
  termsCopy = terms;
  descriptorCopy = descriptor;
  neuronDescriptorCopy = neuronDescriptor;
  v51 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v61, 0x348uLL);
  CPU_BuildBNNSConvolutionWeightAndBiasParams(v61, descriptorCopy, weightsCopy, termsCopy);
  isConvolutionTranspose = [descriptorCopy isConvolutionTranspose];
  if (isConvolutionTranspose)
  {
    v18 = 25;
  }

  else
  {
    v18 = 4;
  }

  v57 = termsCopy;
  if (neuronDescriptorCopy)
  {
    v19 = isConvolutionTranspose;
    if (!setBNNSActivation(&v62, neuronDescriptorCopy))
    {
      selfCopy = 0;
      v38 = v51;
      goto LABEL_24;
    }

    v48 = neuronDescriptorCopy;
    v49 = deviceCopy;
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
    v49 = deviceCopy;
  }

  v21 = [MEMORY[0x277CBEA90] dataWithBytes:v61 length:840];
  memset(v60, 0, sizeof(v60));
  memset(v59, 0, sizeof(v59));
  v54 = [MEMORY[0x277CBEA90] dataWithBytes:v60 length:176];
  v53 = [MEMORY[0x277CBEA90] dataWithBytes:v59 length:176];
  v22 = objc_opt_class();
  descriptor = [weightsCopy descriptor];
  v52 = [v22 createBNNSNDArrayDescriptorForDescriptor:descriptorCopy weightsDelta:0 fullyConnected:0 dataType:{objc_msgSend(descriptor, "dataType")}];

  v24 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; i != 3; ++i)
  {
    v26 = objc_opt_class();
    descriptor2 = [weightsCopy descriptor];
    v28 = [v26 createBNNSNDArrayDescriptorForDescriptor:descriptorCopy weightsDelta:0 fullyConnected:0 dataType:{objc_msgSend(descriptor2, "dataType")}];
    [v24 setObject:v28 atIndexedSubscript:i];
  }

  v50 = v21;
  if (v57)
  {
    v29 = objc_opt_class();
    descriptor3 = [v57 descriptor];
    v55 = [v29 createBNNSNDArrayDescriptorForDescriptor:descriptorCopy biasDelta:0 dataType:{objc_msgSend(descriptor3, "dataType")}];

    v31 = [MEMORY[0x277CBEBF8] mutableCopy];
    for (j = 0; j != 3; ++j)
    {
      v33 = objc_opt_class();
      descriptor4 = [v57 descriptor];
      v35 = [v33 createBNNSNDArrayDescriptorForDescriptor:descriptorCopy biasDelta:0 dataType:{objc_msgSend(descriptor4, "dataType")}];
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

  deviceCopy = v49;
  termsCopy = v57;
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

    [v41 setPaddingPolicy:{objc_msgSend(descriptorCopy, "paddingPolicy")}];
  }

  v44 = [v51 copy];
  v58.receiver = self;
  v58.super_class = _MLCCPUConvolution;
  self = [(_MLCCPULayer *)&v58 initWithDevice:v49 deviceOps:v44];

  selfCopy = self;
  neuronDescriptorCopy = v48;
LABEL_24:

  v45 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (id)layerWithDevice:(id)device weights:(id)weights biasTerms:(id)terms convolutionDescriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor
{
  neuronDescriptorCopy = neuronDescriptor;
  descriptorCopy = descriptor;
  termsCopy = terms;
  weightsCopy = weights;
  deviceCopy = device;
  v17 = [[self alloc] initWithDevice:deviceCopy weights:weightsCopy biasTerms:termsCopy convolutionDescriptor:descriptorCopy neuronDescriptor:neuronDescriptorCopy];

  return v17;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor convolutionTranspose:(BOOL)transpose
{
  transposeCopy = transpose;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v13 = [ops objectAtIndexedSubscript:0];
  params = [v13 params];
  bytes = [params bytes];
  CPU_BuildBNNSConvolutionInputOutputParams(bytes, tensorsCopy, tensorCopy, transposeCopy, [v13 paddingPolicy]);
  memset(&v23, 0, sizeof(v23));
  v23.flags = 1;
  if (transposeCopy)
  {
    v16 = BNNSFilterCreateLayerTransposedConvolution(bytes, &v23);
  }

  else
  {
    v16 = MEMORY[0x23EE75C50](bytes, &v23);
  }

  v17 = v16;
  if (v16)
  {
    [v13 setBNNSFilter:{v16, *&v23.flags, *&v23.alloc_memory}];
    v18 = [tensorsCopy objectAtIndexedSubscript:0];
    [v13 setSourceStride:CPU_SetBatchStride(v18)];

    [v13 setResultStride:CPU_SetBatchStride(tensorCopy)];
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

  layer = [v13 layer];
  [layer setFilter:v17];

  return 1;
}

+ (id)createBNNSNDArrayDescriptorForDescriptor:(id)descriptor biasDelta:(id)delta dataType:(int)type
{
  deltaCopy = delta;
  *(&v10 + 1) = [descriptor outputFeatureChannelCount];
  *(&v11 + 1) = 1;
  if (deltaCopy)
  {
    *(&v12 + 1) = [deltaCopy bytes];
  }

  LODWORD(v13) = CPU_BNNSDataType(type);
  *(&v14 + 4) = 1065353216;
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:176];

  return v8;
}

+ (id)createBNNSNDArrayDescriptorForDescriptor:(id)descriptor weightsDelta:(id)delta fullyConnected:(BOOL)connected dataType:(int)type
{
  connectedCopy = connected;
  descriptorCopy = descriptor;
  deltaCopy = delta;
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
  if (connectedCopy)
  {
    v11 = &v26;
    DWORD1(v21) = 0x20000;
    *(&v21 + 1) = [descriptorCopy inputFeatureChannelCount];
    *&v22 = [descriptorCopy outputFeatureChannelCount];
    *(&v25 + 1) = 1;
    inputFeatureChannelCount = [descriptorCopy inputFeatureChannelCount];
  }

  else
  {
    v11 = &v27;
    if ([descriptorCopy usesDepthwiseConvolution])
    {
      inputFeatureChannelCount2 = [descriptorCopy inputFeatureChannelCount];
    }

    else
    {
      inputFeatureChannelCount2 = [descriptorCopy groupCount];
    }

    v14 = inputFeatureChannelCount2;
    DWORD1(v21) = 0x40000;
    kernelWidth = [descriptorCopy kernelWidth];
    *(&v21 + 1) = kernelWidth;
    kernelHeight = [descriptorCopy kernelHeight];
    *&v22 = kernelHeight;
    inputFeatureChannelCount3 = [descriptorCopy inputFeatureChannelCount];
    if (v14 == 1)
    {
      v18 = inputFeatureChannelCount3;
    }

    else
    {
      v18 = inputFeatureChannelCount3 / v14;
    }

    *(&v22 + 1) = v18;
    *&v23 = [descriptorCopy outputFeatureChannelCount];
    *(&v25 + 1) = 1;
    *&v26 = kernelWidth;
    *(&v26 + 1) = kernelHeight * kernelWidth;
    inputFeatureChannelCount = v18 * kernelHeight * kernelWidth;
  }

  *v11 = inputFeatureChannelCount;
  if (deltaCopy)
  {
    *(&v29 + 1) = [deltaCopy bytes];
  }

  LODWORD(v30) = CPU_BNNSDataType(type);
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