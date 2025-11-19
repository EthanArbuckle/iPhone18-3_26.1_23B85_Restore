@interface _MLCGPUWeightsConvolution
+ (id)weightWithDescriptor:(id)a3 biasTerms:(id)a4 weights:(id)a5;
+ (id)weightWithDescriptor:(id)a3 biasTerms:(id)a4 weights:(id)a5 neuronDescriptor:(id)a6;
- (MLCTensor)biasTerm;
- (MLCTensor)weight;
- (NSString)description;
- (_MLCGPUWeightsConvolution)initWithDescriptor:(id)a3 biasTerms:(id)a4 weights:(id)a5 neuronDescriptor:(id)a6;
- (float)biasTerms;
- (id)copyWithZone:(_NSZone *)a3;
- (id)label;
- (unsigned)dataType;
- (unsigned)kernelWeightsDataType;
- (void)weights;
@end

@implementation _MLCGPUWeightsConvolution

+ (id)weightWithDescriptor:(id)a3 biasTerms:(id)a4 weights:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithDescriptor:v10 biasTerms:v9 weights:v8 neuronDescriptor:0];

  return v11;
}

+ (id)weightWithDescriptor:(id)a3 biasTerms:(id)a4 weights:(id)a5 neuronDescriptor:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithDescriptor:v13 biasTerms:v12 weights:v11 neuronDescriptor:v10];

  return v14;
}

- (_MLCGPUWeightsConvolution)initWithDescriptor:(id)a3 biasTerms:(id)a4 weights:(id)a5 neuronDescriptor:(id)a6
{
  v9 = a3;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v60.receiver = self;
  v60.super_class = _MLCGPUWeightsConvolution;
  v16 = [(_MLCGPUWeightsConvolution *)&v60 init];
  v17 = v16;
  if (v16)
  {
    localWeight = v16->_localWeight;
    v16->_localWeight = 0;

    localBiasTerm = v17->_localBiasTerm;
    v17->_localBiasTerm = 0;

    if ([v12 usesDepthwiseConvolution])
    {
      if ([v12 inputFeatureChannelCount])
      {
        v20 = [v12 outputFeatureChannelCount];
        if (v20 / [v12 inputFeatureChannelCount] != 1)
        {
          v28 = +[MLCLog framework];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [_MLCGPUWeightsConvolution initWithDescriptor:a2 biasTerms:? weights:? neuronDescriptor:?];
          }

          goto LABEL_21;
        }
      }

      v57 = a2;
      v59 = v13;
      v21 = 0x277CD7658;
    }

    else
    {
      v57 = a2;
      v59 = v13;
      v21 = 0x277CD7620;
    }

    v22 = [*v21 cnnConvolutionDescriptorWithKernelWidth:objc_msgSend(v12 kernelHeight:"kernelWidth") inputFeatureChannels:objc_msgSend(v12 outputFeatureChannels:{"kernelHeight"), objc_msgSend(v12, "inputFeatureChannelCount"), objc_msgSend(v12, "outputFeatureChannelCount")}];
    descMPS = v17->_descMPS;
    v17->_descMPS = v22;

    -[MPSCNNConvolutionDescriptor setStrideInPixelsX:](v17->_descMPS, "setStrideInPixelsX:", [v12 strideInX]);
    -[MPSCNNConvolutionDescriptor setStrideInPixelsY:](v17->_descMPS, "setStrideInPixelsY:", [v12 strideInY]);
    -[MPSCNNConvolutionDescriptor setDilationRateX:](v17->_descMPS, "setDilationRateX:", [v12 dilationRateInX]);
    -[MPSCNNConvolutionDescriptor setDilationRateY:](v17->_descMPS, "setDilationRateY:", [v12 dilationRateInY]);
    if ([v12 groupCount] >= 2)
    {
      v24 = [v12 inputFeatureChannelCount];
      v25 = v24 / [v12 groupCount];
      v26 = [v12 outputFeatureChannelCount];
      v27 = [v12 groupCount];
      if ((v25 & 3) != 0 || ((v26 / v27) & 3) != 0)
      {
        v28 = +[MLCLog framework];
        v13 = v59;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [_MLCGPUWeightsConvolution initWithDescriptor:v57 biasTerms:? weights:? neuronDescriptor:?];
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    -[MPSCNNConvolutionDescriptor setGroups:](v17->_descMPS, "setGroups:", [v12 groupCount]);
    if ([v12 isConvolutionTranspose])
    {
      v29 = [v14 descriptor];
      v30 = malloc_type_malloc([v29 tensorAllocationSizeInBytes], 0x9F584418uLL);

      v31 = [v14 data];
      v58 = +[MLCTensorData dataWithBytesNoCopy:length:freeWhenDone:](MLCTensorData, "dataWithBytesNoCopy:length:freeWhenDone:", v30, [v31 length], 1);

      v32 = [v14 descriptor];
      v33 = [MLCTensor tensorWithDescriptor:v32 data:v58];

      v56 = [v14 descriptor];
      v34 = [v56 shape];
      v35 = [v14 data];
      [(MLCTensor *)v33 data];
      v36 = v9;
      v37 = v14;
      v38 = v15;
      v40 = v39 = a6;
      rotateWeightsTensorBy180Degree(v34, v35, v40);

      a6 = v39;
      v15 = v38;
      v14 = v37;
      v9 = v36;

      objc_storeWeak(&v17->_weight, v33);
      v41 = v17->_localWeight;
      v17->_localWeight = v33;
    }

    else
    {
      objc_storeWeak(&v17->_weight, v14);
    }

    v13 = v59;
    objc_storeStrong(&v17->_desc, v9);
    objc_storeWeak(&v17->_biasTerm, v59);
    if (v15)
    {
      objc_storeStrong(&v17->_neuronDesc, a6);
      v42 = +[_MLCGPUNeuron mpsNeurontypeFrom:](_MLCGPUNeuron, "mpsNeurontypeFrom:", [v15 activationType]);
      if (v42 == 16)
      {
LABEL_22:
        v54 = 0;
        goto LABEL_23;
      }

      v43 = v42;
      v44 = MEMORY[0x277CD7758];
      [v15 a];
      v46 = v45;
      [v15 b];
      v48 = v47;
      [v15 c];
      LODWORD(v50) = v49;
      LODWORD(v51) = v46;
      LODWORD(v52) = v48;
      v53 = [v44 cnnNeuronDescriptorWithType:v43 a:v51 b:v52 c:v50];
      [(MPSCNNConvolutionDescriptor *)v17->_descMPS setFusedNeuronDescriptor:v53];
    }
  }

  v54 = v17;
LABEL_23:

  return v54;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_MLCGPUWeightsConvolution *)self descMPS];
  v7 = [(_MLCGPUWeightsConvolution *)self desc];
  v8 = [(_MLCGPUWeightsConvolution *)self weight];
  v9 = [v3 stringWithFormat:@"%@: { descMPS=%@ : desc=%@ : weight=%@ }", v5, v6, v7, v8];

  return v9;
}

- (float)biasTerms
{
  v2 = [(_MLCGPUWeightsConvolution *)self biasTerm];
  v3 = [v2 data];
  v4 = [v3 bytes];

  return v4;
}

- (unsigned)dataType
{
  v2 = [(_MLCGPUWeightsConvolution *)self weight];
  v3 = [v2 descriptor];
  v4 = [v3 dataType];

  if (v4 == 3)
  {
    return 268435472;
  }

  else
  {
    return 268435488;
  }
}

- (id)label
{
  v2 = [(_MLCGPUWeightsConvolution *)self desc];
  v3 = [v2 isConvolutionTranspose];

  if (v3)
  {
    return @"MPSWeightConvolutionTranspose";
  }

  else
  {
    return @"MPSWeightConvolution";
  }
}

- (void)weights
{
  v2 = [(_MLCGPUWeightsConvolution *)self weight];
  v3 = [v2 data];
  v4 = [v3 bytes];

  return v4;
}

- (unsigned)kernelWeightsDataType
{
  v2 = [(_MLCGPUWeightsConvolution *)self weight];
  v3 = [v2 descriptor];
  v4 = [v3 dataType];

  if (v4 == 3)
  {
    return 268435472;
  }

  else
  {
    return 268435488;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(_MLCGPUWeightsConvolution *)self desc];
  v6 = [(_MLCGPUWeightsConvolution *)self biasTerm];
  v7 = [(_MLCGPUWeightsConvolution *)self weight];
  v8 = [(_MLCGPUWeightsConvolution *)self neuronDesc];
  v9 = [v4 initWithDescriptor:v5 biasTerms:v6 weights:v7 neuronDescriptor:v8];

  return v9;
}

- (MLCTensor)weight
{
  WeakRetained = objc_loadWeakRetained(&self->_weight);

  return WeakRetained;
}

- (MLCTensor)biasTerm
{
  WeakRetained = objc_loadWeakRetained(&self->_biasTerm);

  return WeakRetained;
}

- (void)initWithDescriptor:(const char *)a1 biasTerms:weights:neuronDescriptor:.cold.1(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: channel multiplier > 1 for depthWiseConvolution is not supported in MLCompute-GPU", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 biasTerms:weights:neuronDescriptor:.cold.2(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: groupCount > 1 with Number of input/output channels in each group NOT be multiple of 4 is unsupported on GPU", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end