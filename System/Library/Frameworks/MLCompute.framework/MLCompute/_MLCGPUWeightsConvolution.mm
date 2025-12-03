@interface _MLCGPUWeightsConvolution
+ (id)weightWithDescriptor:(id)descriptor biasTerms:(id)terms weights:(id)weights;
+ (id)weightWithDescriptor:(id)descriptor biasTerms:(id)terms weights:(id)weights neuronDescriptor:(id)neuronDescriptor;
- (MLCTensor)biasTerm;
- (MLCTensor)weight;
- (NSString)description;
- (_MLCGPUWeightsConvolution)initWithDescriptor:(id)descriptor biasTerms:(id)terms weights:(id)weights neuronDescriptor:(id)neuronDescriptor;
- (float)biasTerms;
- (id)copyWithZone:(_NSZone *)zone;
- (id)label;
- (unsigned)dataType;
- (unsigned)kernelWeightsDataType;
- (void)weights;
@end

@implementation _MLCGPUWeightsConvolution

+ (id)weightWithDescriptor:(id)descriptor biasTerms:(id)terms weights:(id)weights
{
  weightsCopy = weights;
  termsCopy = terms;
  descriptorCopy = descriptor;
  v11 = [[self alloc] initWithDescriptor:descriptorCopy biasTerms:termsCopy weights:weightsCopy neuronDescriptor:0];

  return v11;
}

+ (id)weightWithDescriptor:(id)descriptor biasTerms:(id)terms weights:(id)weights neuronDescriptor:(id)neuronDescriptor
{
  neuronDescriptorCopy = neuronDescriptor;
  weightsCopy = weights;
  termsCopy = terms;
  descriptorCopy = descriptor;
  v14 = [[self alloc] initWithDescriptor:descriptorCopy biasTerms:termsCopy weights:weightsCopy neuronDescriptor:neuronDescriptorCopy];

  return v14;
}

- (_MLCGPUWeightsConvolution)initWithDescriptor:(id)descriptor biasTerms:(id)terms weights:(id)weights neuronDescriptor:(id)neuronDescriptor
{
  descriptorCopy = descriptor;
  descriptorCopy2 = descriptor;
  termsCopy = terms;
  weightsCopy = weights;
  neuronDescriptorCopy = neuronDescriptor;
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

    if ([descriptorCopy2 usesDepthwiseConvolution])
    {
      if ([descriptorCopy2 inputFeatureChannelCount])
      {
        outputFeatureChannelCount = [descriptorCopy2 outputFeatureChannelCount];
        if (outputFeatureChannelCount / [descriptorCopy2 inputFeatureChannelCount] != 1)
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
      v59 = termsCopy;
      v21 = 0x277CD7658;
    }

    else
    {
      v57 = a2;
      v59 = termsCopy;
      v21 = 0x277CD7620;
    }

    v22 = [*v21 cnnConvolutionDescriptorWithKernelWidth:objc_msgSend(descriptorCopy2 kernelHeight:"kernelWidth") inputFeatureChannels:objc_msgSend(descriptorCopy2 outputFeatureChannels:{"kernelHeight"), objc_msgSend(descriptorCopy2, "inputFeatureChannelCount"), objc_msgSend(descriptorCopy2, "outputFeatureChannelCount")}];
    descMPS = v17->_descMPS;
    v17->_descMPS = v22;

    -[MPSCNNConvolutionDescriptor setStrideInPixelsX:](v17->_descMPS, "setStrideInPixelsX:", [descriptorCopy2 strideInX]);
    -[MPSCNNConvolutionDescriptor setStrideInPixelsY:](v17->_descMPS, "setStrideInPixelsY:", [descriptorCopy2 strideInY]);
    -[MPSCNNConvolutionDescriptor setDilationRateX:](v17->_descMPS, "setDilationRateX:", [descriptorCopy2 dilationRateInX]);
    -[MPSCNNConvolutionDescriptor setDilationRateY:](v17->_descMPS, "setDilationRateY:", [descriptorCopy2 dilationRateInY]);
    if ([descriptorCopy2 groupCount] >= 2)
    {
      inputFeatureChannelCount = [descriptorCopy2 inputFeatureChannelCount];
      v25 = inputFeatureChannelCount / [descriptorCopy2 groupCount];
      outputFeatureChannelCount2 = [descriptorCopy2 outputFeatureChannelCount];
      groupCount = [descriptorCopy2 groupCount];
      if ((v25 & 3) != 0 || ((outputFeatureChannelCount2 / groupCount) & 3) != 0)
      {
        v28 = +[MLCLog framework];
        termsCopy = v59;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [_MLCGPUWeightsConvolution initWithDescriptor:v57 biasTerms:? weights:? neuronDescriptor:?];
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    -[MPSCNNConvolutionDescriptor setGroups:](v17->_descMPS, "setGroups:", [descriptorCopy2 groupCount]);
    if ([descriptorCopy2 isConvolutionTranspose])
    {
      descriptor = [weightsCopy descriptor];
      v30 = malloc_type_malloc([descriptor tensorAllocationSizeInBytes], 0x9F584418uLL);

      data = [weightsCopy data];
      v58 = +[MLCTensorData dataWithBytesNoCopy:length:freeWhenDone:](MLCTensorData, "dataWithBytesNoCopy:length:freeWhenDone:", v30, [data length], 1);

      descriptor2 = [weightsCopy descriptor];
      v33 = [MLCTensor tensorWithDescriptor:descriptor2 data:v58];

      descriptor3 = [weightsCopy descriptor];
      shape = [descriptor3 shape];
      data2 = [weightsCopy data];
      [(MLCTensor *)v33 data];
      v36 = descriptorCopy;
      v37 = weightsCopy;
      v38 = neuronDescriptorCopy;
      v40 = v39 = neuronDescriptor;
      rotateWeightsTensorBy180Degree(shape, data2, v40);

      neuronDescriptor = v39;
      neuronDescriptorCopy = v38;
      weightsCopy = v37;
      descriptorCopy = v36;

      objc_storeWeak(&v17->_weight, v33);
      v41 = v17->_localWeight;
      v17->_localWeight = v33;
    }

    else
    {
      objc_storeWeak(&v17->_weight, weightsCopy);
    }

    termsCopy = v59;
    objc_storeStrong(&v17->_desc, descriptorCopy);
    objc_storeWeak(&v17->_biasTerm, v59);
    if (neuronDescriptorCopy)
    {
      objc_storeStrong(&v17->_neuronDesc, neuronDescriptor);
      v42 = +[_MLCGPUNeuron mpsNeurontypeFrom:](_MLCGPUNeuron, "mpsNeurontypeFrom:", [neuronDescriptorCopy activationType]);
      if (v42 == 16)
      {
LABEL_22:
        v54 = 0;
        goto LABEL_23;
      }

      v43 = v42;
      v44 = MEMORY[0x277CD7758];
      [neuronDescriptorCopy a];
      v46 = v45;
      [neuronDescriptorCopy b];
      v48 = v47;
      [neuronDescriptorCopy c];
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
  descMPS = [(_MLCGPUWeightsConvolution *)self descMPS];
  desc = [(_MLCGPUWeightsConvolution *)self desc];
  weight = [(_MLCGPUWeightsConvolution *)self weight];
  v9 = [v3 stringWithFormat:@"%@: { descMPS=%@ : desc=%@ : weight=%@ }", v5, descMPS, desc, weight];

  return v9;
}

- (float)biasTerms
{
  biasTerm = [(_MLCGPUWeightsConvolution *)self biasTerm];
  data = [biasTerm data];
  bytes = [data bytes];

  return bytes;
}

- (unsigned)dataType
{
  weight = [(_MLCGPUWeightsConvolution *)self weight];
  descriptor = [weight descriptor];
  dataType = [descriptor dataType];

  if (dataType == 3)
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
  desc = [(_MLCGPUWeightsConvolution *)self desc];
  isConvolutionTranspose = [desc isConvolutionTranspose];

  if (isConvolutionTranspose)
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
  weight = [(_MLCGPUWeightsConvolution *)self weight];
  data = [weight data];
  bytes = [data bytes];

  return bytes;
}

- (unsigned)kernelWeightsDataType
{
  weight = [(_MLCGPUWeightsConvolution *)self weight];
  descriptor = [weight descriptor];
  dataType = [descriptor dataType];

  if (dataType == 3)
  {
    return 268435472;
  }

  else
  {
    return 268435488;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  desc = [(_MLCGPUWeightsConvolution *)self desc];
  biasTerm = [(_MLCGPUWeightsConvolution *)self biasTerm];
  weight = [(_MLCGPUWeightsConvolution *)self weight];
  neuronDesc = [(_MLCGPUWeightsConvolution *)self neuronDesc];
  v9 = [v4 initWithDescriptor:desc biasTerms:biasTerm weights:weight neuronDescriptor:neuronDesc];

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