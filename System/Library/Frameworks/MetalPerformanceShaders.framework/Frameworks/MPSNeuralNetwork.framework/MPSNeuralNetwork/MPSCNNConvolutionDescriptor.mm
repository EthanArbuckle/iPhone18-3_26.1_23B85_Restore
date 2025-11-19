@interface MPSCNNConvolutionDescriptor
+ (MPSCNNConvolutionDescriptor)cnnConvolutionDescriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannels:(NSUInteger)inputFeatureChannels outputFeatureChannels:(NSUInteger)outputFeatureChannels;
+ (MPSCNNConvolutionDescriptor)cnnConvolutionDescriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannels:(NSUInteger)inputFeatureChannels outputFeatureChannels:(NSUInteger)outputFeatureChannels neuronFilter:(const MPSCNNNeuron *)neuronFilter;
+ (MPSCNNConvolutionDescriptor)cnnConvolutionDescriptorWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6 postFilters:(id)a7;
- (MPSCNNConvolutionDescriptor)init;
- (MPSCNNConvolutionDescriptor)initWithCoder:(NSCoder *)aDecoder;
- (MPSCNNConvolutionDescriptor)initWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6;
- (MPSCNNConvolutionDescriptor)initWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6 neuronFilter:(id)a7;
- (NeuronInfo)neuronInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)newDescriptorWithNeuronInfo:(NeuronInfo *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(NSCoder *)aCoder;
- (void)setBatchNormalizationParametersForInferenceWithMean:(const float *)mean variance:(const float *)variance gamma:(const float *)gamma beta:(const float *)beta epsilon:(const float)epsilon;
- (void)setFusedNeuronDescriptor:(MPSNNNeuronDescriptor *)fusedNeuronDescriptor;
- (void)setGroups:(NSUInteger)groups;
- (void)setNeuron:(const MPSCNNNeuron *)neuron;
- (void)setNeuronToPReLUWithParametersA:(NSData *)A;
- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB;
- (void)setNeuronType:(int)a3;
- (void)setNeuronType:(int)a3 parameterA:(float)a4 parameterB:(float)a5 parameterC:(float)a6;
@end

@implementation MPSCNNConvolutionDescriptor

- (void)setFusedNeuronDescriptor:(MPSNNNeuronDescriptor *)fusedNeuronDescriptor
{
  if (self->_fusedNeuronDescriptor != fusedNeuronDescriptor)
  {
    if (!fusedNeuronDescriptor)
    {
      v5 = self;
      v6 = MTLReportFailureTypeEnabled();
      self = v5;
      if (v6)
      {
        MTLReportFailure();
        self = v5;
      }
    }

    v4 = self;

    v4->_fusedNeuronDescriptor = fusedNeuronDescriptor;
  }
}

- (void)setNeuronType:(int)a3
{
  if (a3 == 10)
  {
    v11 = *&a3;
    v12 = MTLReportFailureTypeEnabled();
    *&a3 = v11;
    v13 = v12;
    v14 = self;
    if (v13)
    {
      MTLReportFailure();
      v14 = self;
      *&a3 = v11;
    }

    fusedNeuronDescriptor = v14->_fusedNeuronDescriptor;
  }

  else
  {
    fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
  }

  objc_msgSend_setNeuronType_(fusedNeuronDescriptor, a2, *&a3, v3, v4, v5, v6, v7);
}

- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB
{
  if (neuronType == MPSCNNNeuronTypePReLU && (v30 = *&neuronType, v31 = MTLReportFailureTypeEnabled(), *&neuronType = v30, v31))
  {
    MTLReportFailure();
    objc_msgSend_setNeuronType_(self->_fusedNeuronDescriptor, v32, v30, v33, v34, v35, v36, v37);
  }

  else
  {
    objc_msgSend_setNeuronType_(self->_fusedNeuronDescriptor, a2, *&neuronType, v5, v6, v7, v8, v9);
  }

  *&v20 = parameterA;
  objc_msgSend_setA_(self->_fusedNeuronDescriptor, v13, v14, v15, v16, v17, v18, v19, v20);
  fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
  *&v29 = parameterB;

  objc_msgSend_setB_(fusedNeuronDescriptor, v21, v22, v23, v24, v25, v26, v27, v29);
}

- (void)setNeuronType:(int)a3 parameterA:(float)a4 parameterB:(float)a5 parameterC:(float)a6
{
  if ((a3 - 12) < 3)
  {
    goto LABEL_2;
  }

  v40 = *&a3;
  if (a3 == 10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v41 = MTLReportFailureTypeEnabled();
  *&a3 = v40;
  if (v41)
  {
    MTLReportFailure();
    objc_msgSend_setNeuronType_(self->_fusedNeuronDescriptor, v42, v40, v43, v44, v45, v46, v47);
  }

  else
  {
LABEL_2:
    objc_msgSend_setNeuronType_(self->_fusedNeuronDescriptor, a2, *&a3, v6, v7, v8, v9, v10);
  }

  *&v22 = a4;
  objc_msgSend_setA_(self->_fusedNeuronDescriptor, v15, v16, v17, v18, v19, v20, v21, v22);
  *&v23 = a5;
  objc_msgSend_setB_(self->_fusedNeuronDescriptor, v24, v25, v26, v27, v28, v29, v30, v23);
  fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
  *&v39 = a6;

  objc_msgSend_setC_(fusedNeuronDescriptor, v31, v32, v33, v34, v35, v36, v37, v39);
}

- (NeuronInfo)neuronInfo
{
  retstr->type = objc_msgSend_neuronType(self->_fusedNeuronDescriptor, a3, v3, v4, v5, v6, v7, v8);
  objc_msgSend_a(self->_fusedNeuronDescriptor, v11, v12, v13, v14, v15, v16, v17);
  retstr->a = v18;
  objc_msgSend_b(self->_fusedNeuronDescriptor, v19, v20, v21, v22, v23, v24, v25);
  retstr->b = v26;
  objc_msgSend_c(self->_fusedNeuronDescriptor, v27, v28, v29, v30, v31, v32, v33);
  retstr->c = v34;
  result = objc_msgSend_data(self->_fusedNeuronDescriptor, v35, v36, v37, v38, v39, v40, v41);
  retstr->aData = result;
  return result;
}

- (MPSCNNConvolutionDescriptor)initWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6 neuronFilter:(id)a7
{
  result = objc_msgSend_initWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(self, a2, a3, a4, a5, a6, a7, v7);
  if (result)
  {
    v16 = result;
    objc_msgSend_setNeuron_(result, v10, a7, v11, v12, v13, v14, v15);
    return v16;
  }

  return result;
}

+ (MPSCNNConvolutionDescriptor)cnnConvolutionDescriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannels:(NSUInteger)inputFeatureChannels outputFeatureChannels:(NSUInteger)outputFeatureChannels
{
  v10 = [a1 alloc];
  v14 = objc_msgSend_initWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(v10, v11, kernelWidth, kernelHeight, inputFeatureChannels, outputFeatureChannels, v12, v13);

  return v14;
}

- (MPSCNNConvolutionDescriptor)init
{
  v12.receiver = self;
  v12.super_class = MPSCNNConvolutionDescriptor;
  result = [(MPSCNNConvolutionDescriptor *)&v12 init];
  if (result)
  {
    v3 = vdupq_n_s64(1uLL);
    *&result->_kernelWidth = v3;
    *&result->_inputFeatureChannels = v3;
    *&result->_subPixelScaleFactor = v3;
    result->_dilationRateY = 1;
    *&result->_featureChannelsLayout = v3;
    *&result->_strideInPixelsY = v3;
    result->_batchNormalizationData = 0;
    v4 = result;
    v5 = objc_autoreleasePoolPush();
    v4->_fusedNeuronDescriptor = objc_msgSend_cnnNeuronDescriptorWithType_(MPSNNNeuronDescriptor, v6, 0, v7, v8, v9, v10, v11);
    objc_autoreleasePoolPop(v5);
    result = v4;
    v4->_depthWiseConvolution = 0;
  }

  return result;
}

- (MPSCNNConvolutionDescriptor)initWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6
{
  result = objc_msgSend_init(self, a2, a3, a4, a5, a6, v6, v7);
  if (result)
  {
    result->_kernelWidth = a3;
    result->_kernelHeight = a4;
    result->_inputFeatureChannels = a5;
    result->_outputFeatureChannels = a6;
  }

  return result;
}

- (void)setGroups:(NSUInteger)groups
{
  if (self->_depthWiseConvolution)
  {
    if (groups == 1)
    {
LABEL_3:
      self->_groups = groups;
      return;
    }

    v3 = self;
    v4 = groups;
    v5 = MTLReportFailureTypeEnabled();
    groups = v4;
    v6 = v5;
    self = v3;
    if (v6)
    {
      MTLReportFailure();
      self = v3;
      groups = v4;
    }
  }

  if (groups < 2)
  {
    goto LABEL_3;
  }

  if (self->_inputFeatureChannels % groups)
  {
    v12 = self;
    v13 = groups;
    v14 = MTLReportFailureTypeEnabled();
    groups = v13;
    v15 = v14;
    self = v12;
    if (v15)
    {
      MTLReportFailure();
      self = v12;
      groups = v13;
    }
  }

  if (self->_outputFeatureChannels % groups)
  {
    v16 = self;
    v17 = groups;
    v18 = MTLReportFailureTypeEnabled();
    groups = v17;
    v19 = v18;
    self = v16;
    if (v19)
    {
      MTLReportFailure();
      self = v16;
      groups = v17;
    }
  }

  v7 = self->_outputFeatureChannels / groups;
  if (((self->_inputFeatureChannels / groups) & 3) != 0)
  {
    v23 = self;
    v20 = groups;
    v21 = MTLReportFailureTypeEnabled();
    groups = v20;
    v22 = v21;
    self = v23;
    if (v22)
    {
      MTLReportFailure();
      self = v23;
      groups = v20;
    }
  }

  if ((v7 & 3) == 0)
  {
    goto LABEL_3;
  }

  v8 = self;
  v9 = groups;
  v10 = MTLReportFailureTypeEnabled();
  groups = v9;
  v11 = v10;
  self = v8;
  if (!v11)
  {
    goto LABEL_3;
  }

  MTLReportFailure();
  v8->_groups = v9;
}

- (void)setBatchNormalizationParametersForInferenceWithMean:(const float *)mean variance:(const float *)variance gamma:(const float *)gamma beta:(const float *)beta epsilon:(const float)epsilon
{
  v89 = *&epsilon;
  v14 = 8 * self->_outputFeatureChannels;
  batchNormalizationData = self->_batchNormalizationData;
  if (batchNormalizationData && (v23 = objc_msgSend_length(batchNormalizationData, a2, mean, variance, gamma, beta, v7, v8), batchNormalizationData = self->_batchNormalizationData, v23 >= v14))
  {
    v24 = objc_msgSend_bytes(batchNormalizationData, v16, v17, v18, v19, v20, v21, v22);
    outputFeatureChannels = self->_outputFeatureChannels;
    v31 = gamma;
    v32 = v89;
    if (gamma)
    {
LABEL_4:
      v33 = beta;
      if (beta)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else
  {

    v24 = malloc_type_malloc(v14, 0x100004052888210uLL);
    v25 = objc_alloc(MEMORY[0x277CBEA90]);
    self->_batchNormalizationData = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v25, v26, v24, v14, 1, v27, v28, v29);
    outputFeatureChannels = self->_outputFeatureChannels;
    v31 = gamma;
    v32 = v89;
    if (gamma)
    {
      goto LABEL_4;
    }
  }

  v31 = malloc_type_malloc(4 * outputFeatureChannels, 0x100004052888210uLL);
  __pattern4 = 1065353216;
  memset_pattern4(v31, &__pattern4, 4 * outputFeatureChannels);
  v32 = v89;
  v33 = beta;
  if (beta)
  {
LABEL_5:
    v34 = mean;
    if (mean)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v40 = malloc_type_calloc(outputFeatureChannels, 4uLL, 0x100004052888210uLL);
  v32 = v89;
  v33 = v40;
  v34 = mean;
  if (mean)
  {
LABEL_6:
    v35 = variance;
    if (variance)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v41 = malloc_type_calloc((outputFeatureChannels + 7) >> 3, 0x20uLL, 0x1000040E0EAB150uLL);
  v32 = v89;
  v34 = v41;
  v35 = variance;
  if (variance)
  {
LABEL_7:
    if (outputFeatureChannels < 8)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v90 = 1065353216;
  v35 = malloc_type_malloc((4 * outputFeatureChannels + 28) & 0xFFFFFFFFFFFFFFE0, 0x1000040E0EAB150uLL);
  memset_pattern4(v35, &v90, 4 * outputFeatureChannels);
  v32 = v89;
  if (outputFeatureChannels < 8)
  {
LABEL_8:
    v36 = 0;
    v37 = v31;
    v38 = v33;
    v39 = outputFeatureChannels;
    if (!outputFeatureChannels)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (v39 < 0x14 || (v72 = 4 * v36, v73 = 4 * v36 + v24, v74 = 4 * outputFeatureChannels, v75 = v73 + 4 * outputFeatureChannels, v75 - v37 < 0x10) || v74 + v24 - v35 < 0x10 || v75 - v38 < 0x10 || v74 + v24 - v34 < 0x10 || v73 - v37 < 0x10 || (v24 - v35) < 0x10 || v38 - v73 < 0x10 || v34 - v24 < 0x10 || v74 < 0x10)
    {
      v58 = v38;
      v59 = v37;
      v60 = v36;
    }

    else
    {
      v76 = v39 - (outputFeatureChannels & 3);
      v58 = &v38->f32[v76];
      v59 = &v37->f32[v76];
      v77 = vdupq_lane_s32(v32, 0);
      v60 = v36 + v76;
      v78 = v36 + (outputFeatureChannels & 3) - outputFeatureChannels;
      v79 = (v35 + v72);
      v80 = (v24 + v72);
      v81 = &v34[v72 / 4];
      do
      {
        v82 = *v37++;
        v83 = v82;
        v84 = *v79++;
        v85 = vdivq_f32(v83, vsqrtq_f32(vaddq_f32(v84, v77)));
        *v80 = v85;
        v86 = *v38++;
        v87 = v86;
        v88 = *v81++;
        *(v80++ + 4 * outputFeatureChannels) = vmlsq_f32(v87, v85, v88);
        v78 += 4;
      }

      while (v78);
      if ((outputFeatureChannels & 3) == 0)
      {
        goto LABEL_22;
      }
    }

    v61 = outputFeatureChannels - v60;
    v62 = (v24 + 4 * v60);
    v63 = &v34[v60];
    v64 = &v35->f32[v60];
    do
    {
      v65 = *v59++;
      v66 = v65;
      v67 = *v64++;
      v68 = v66 / sqrtf(v67 + *v32.i32);
      *v62 = v68;
      v69 = *v58++;
      v70 = v69;
      v71 = *v63++;
      v62[outputFeatureChannels] = v70 - (v68 * v71);
      ++v62;
      --v61;
    }

    while (v61);
    goto LABEL_22;
  }

LABEL_15:
  v42 = outputFeatureChannels >> 3;
  v43 = v35;
  v44 = vdupq_lane_s32(v32, 0);
  v45 = v34;
  v46 = v24;
  v38 = v33;
  v37 = v31;
  do
  {
    v48 = *v37;
    v47 = v37[1];
    v37 += 2;
    v50 = *v43;
    v49 = v43[1];
    v43 += 2;
    v51 = vdivq_f32(v48, vsqrtq_f32(vaddq_f32(v44, v50)));
    v52 = vdivq_f32(v47, vsqrtq_f32(vaddq_f32(v44, v49)));
    *v46 = v51;
    v46[1] = v52;
    v54 = *v38;
    v53 = v38[1];
    v38 += 2;
    v55 = *v45;
    v56 = v45[1];
    v45 += 2;
    v57 = (v46 + 4 * outputFeatureChannels);
    *v57 = vmlsq_f32(v54, v55, v51);
    v57[1] = vmlsq_f32(v53, v56, v52);
    v46 += 2;
    --v42;
  }

  while (v42);
  v36 = outputFeatureChannels & 0xFFFFFFFFFFFFFFF8;
  v39 = outputFeatureChannels - (outputFeatureChannels & 0xFFFFFFFFFFFFFFF8);
  if (outputFeatureChannels > (outputFeatureChannels & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_18;
  }

LABEL_22:
  if (gamma)
  {
    if (beta)
    {
      goto LABEL_24;
    }
  }

  else
  {
    free(v31);
    if (beta)
    {
LABEL_24:
      if (mean)
      {
        goto LABEL_25;
      }

LABEL_29:
      free(v34);
      if (variance)
      {
        return;
      }

      goto LABEL_30;
    }
  }

  free(v33);
  if (!mean)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (variance)
  {
    return;
  }

LABEL_30:

  free(v35);
}

- (void)setNeuronToPReLUWithParametersA:(NSData *)A
{
  objc_msgSend_setNeuronType_(self->_fusedNeuronDescriptor, a2, 10, v3, v4, v5, v6, v7);
  fusedNeuronDescriptor = self->_fusedNeuronDescriptor;

  objc_msgSend_setData_(fusedNeuronDescriptor, v10, A, v11, v12, v13, v14, v15);
}

- (void)setNeuron:(const MPSCNNNeuron *)neuron
{
  neuron_deprecated = self->_neuron_deprecated;
  if (neuron_deprecated != neuron)
  {

    self->_neuron_deprecated = 0;
    if (neuron)
    {
      v6 = neuron;
      self->_neuron_deprecated = v6;
      objc_msgSend_setNeuronType_(self->_fusedNeuronDescriptor, v7, v6->_neuronType, v8, v9, v10, v11, v12);
      *&v13 = self->_neuron_deprecated->_a;
      objc_msgSend_setA_(self->_fusedNeuronDescriptor, v14, v15, v16, v17, v18, v19, v20, v13);
      *&v21 = self->_neuron_deprecated->_b;
      objc_msgSend_setB_(self->_fusedNeuronDescriptor, v22, v23, v24, v25, v26, v27, v28, v21);
      *&v29 = self->_neuron_deprecated->_c;
      objc_msgSend_setC_(self->_fusedNeuronDescriptor, v30, v31, v32, v33, v34, v35, v36, v29);
      v42 = self->_neuron_deprecated;
      if (v42->_neuronType == 10)
      {
        v43 = objc_alloc(MEMORY[0x277CBEA90]);
        v51 = objc_msgSend_contents(v42->_aBuf, v44, v45, v46, v47, v48, v49, v50);
        v57 = objc_msgSend_initWithBytes_length_(v43, v52, v51, 4 * v42->_count, v53, v54, v55, v56);
      }

      else
      {
        v57 = 0;
      }

      v58 = v57;
      objc_msgSend_setData_(self->_fusedNeuronDescriptor, v57, v57, v37, v38, v39, v40, v41);
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolutionDescriptor;
  [(MPSCNNConvolutionDescriptor *)&v3 dealloc];
}

+ (MPSCNNConvolutionDescriptor)cnnConvolutionDescriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannels:(NSUInteger)inputFeatureChannels outputFeatureChannels:(NSUInteger)outputFeatureChannels neuronFilter:(const MPSCNNNeuron *)neuronFilter
{
  v12 = [a1 alloc];
  v15 = objc_msgSend_initWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_neuronFilter_(v12, v13, kernelWidth, kernelHeight, inputFeatureChannels, outputFeatureChannels, neuronFilter, v14);

  return v15;
}

+ (MPSCNNConvolutionDescriptor)cnnConvolutionDescriptorWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6 postFilters:(id)a7
{
  v11 = [a1 alloc];
  v15 = objc_msgSend_initWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(v11, v12, a3, a4, a5, a6, v13, v14);

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8, v9, v10, v11);
  if (result)
  {
    v16 = objc_msgSend_initWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(result, v13, self->_kernelWidth, self->_kernelHeight, self->_inputFeatureChannels, self->_outputFeatureChannels, v14, v15);
    *(v16 + 40) = *&self->_featureChannelsLayout;
    *(v16 + 56) = self->_strideInPixelsY;
    *(v16 + 64) = self->_groups;
    *(v16 + 88) = self->_subPixelScaleFactor;
    *(v16 + 96) = self->_dilationRateX;
    *(v16 + 104) = self->_dilationRateY;

    *(v16 + 120) = self->_fusedNeuronDescriptor;
    v23 = objc_msgSend_copyWithZone_(self->_batchNormalizationData, v17, a3, v18, v19, v20, v21, v22);
    result = v16;
    *(v16 + 72) = v23;
    *(v16 + 112) = self->_depthWiseConvolution;
  }

  return result;
}

- (MPSCNNConvolutionDescriptor)initWithCoder:(NSCoder *)aDecoder
{
  v189.receiver = self;
  v189.super_class = MPSCNNConvolutionDescriptor;
  v10 = [(MPSCNNConvolutionDescriptor *)&v189 init];
  if (v10)
  {
    if (objc_msgSend_decodeInt64ForKey_(aDecoder, v4, @"MPSCNNConvolutionDescriptorVers", v5, v6, v7, v8, v9) == 256)
    {
      v10->_kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSCNNConvolutionDescriptorWidth", v12, v13, v14, v15, v16);
      v10->_kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v17, @"MPSCNNConvolutionDescriptorHeight", v18, v19, v20, v21, v22);
      v10->_inputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v23, @"MPSCNNConvolutionDescriptorInputFeatureChannels", v24, v25, v26, v27, v28);
      v10->_outputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v29, @"MPSCNNConvolutionDescriptorOutputFeatureChannels", v30, v31, v32, v33, v34);
      v10->_strideInPixelsX = objc_msgSend_decodeInt64ForKey_(aDecoder, v35, @"MPSCNNConvolutionDescriptorStrideInPixelsX", v36, v37, v38, v39, v40);
      v10->_strideInPixelsY = objc_msgSend_decodeInt64ForKey_(aDecoder, v41, @"MPSCNNConvolutionDescriptorStrideInPixelsY", v42, v43, v44, v45, v46);
      v10->_groups = objc_msgSend_decodeInt64ForKey_(aDecoder, v47, @"MPSCNNConvolutionDescriptorGroups", v48, v49, v50, v51, v52);
      v10->_featureChannelsLayout = objc_msgSend_decodeInt64ForKey_(aDecoder, v53, @"MPSCNNConvolutionDescriptorFeatureChannelsLayout", v54, v55, v56, v57, v58);
      v10->_subPixelScaleFactor = objc_msgSend_decodeInt64ForKey_(aDecoder, v59, @"MPSCNNConvolutionDescriptorSubPixelScaleFactor", v60, v61, v62, v63, v64);
      v10->_dilationRateX = objc_msgSend_decodeInt64ForKey_(aDecoder, v65, @"MPSCNNConvolutionDescriptorDilationRateX", v66, v67, v68, v69, v70);
      v10->_dilationRateY = objc_msgSend_decodeInt64ForKey_(aDecoder, v71, @"MPSCNNConvolutionDescriptorDilationRateY", v72, v73, v74, v75, v76);
      v83 = objc_msgSend_decodeInt32ForKey_(aDecoder, v77, @"MPSCNNConvolutionDescriptorNeuronType", v78, v79, v80, v81, v82);
      objc_msgSend_decodeFloatForKey_(aDecoder, v84, @"MPSCNNConvolutionDescriptorNeuronA", v85, v86, v87, v88, v89);
      v91 = v90;
      objc_msgSend_decodeFloatForKey_(aDecoder, v92, @"MPSCNNConvolutionDescriptorNeuronB", v93, v94, v95, v96, v97);
      v99 = v98;
      objc_msgSend_decodeFloatForKey_(aDecoder, v100, @"MPSCNNConvolutionDescriptorNeuronC", v101, v102, v103, v104, v105);
      v107 = v106;
      v10->_depthWiseConvolution = objc_msgSend_decodeBoolForKey_(aDecoder, v108, @"MPSCNNConvolutionDescriptorIsDepthWiseConvolution", v109, v110, v111, v112, v113);
      if ((objc_msgSend_decodeBoolForKey_(aDecoder, v114, @"MPSCNNConvolutionDescriptorBatchNormalization.isNull", v115, v116, v117, v118, v119) & 1) == 0)
      {
        v126 = malloc_type_malloc(8 * v10->_outputFeatureChannels, 0x100004052888210uLL);
        v190 = 0;
        if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v127, @"MPSCNNConvolutionDescriptorBatchNormalization.data", &v190, v128, v129, v130, v131))
        {
          MPSCopyToFromNetworkByteOrder32();
        }

        v132 = objc_alloc(MEMORY[0x277CBEA90]);
        v10->_batchNormalizationData = objc_msgSend_initWithBytes_length_(v132, v133, v126, 8 * v10->_outputFeatureChannels, v134, v135, v136, v137);
        free(v126);
      }

      if (objc_msgSend_decodeBoolForKey_(aDecoder, v120, @"MPSCNNConvolutionDescriptorNeuronParameterA.isNull", v121, v122, v123, v124, v125))
      {
        v138 = 0;
      }

      else
      {
        v139 = malloc_type_malloc(4 * v10->_outputFeatureChannels, 0x100004052888210uLL);
        v190 = 0;
        if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v140, @"MPSCNNConvolutionDescriptorNeuronParameterA.data", &v190, v141, v142, v143, v144))
        {
          MPSCopyToFromNetworkByteOrder32();
        }

        v145 = objc_alloc(MEMORY[0x277CBEA90]);
        v138 = objc_msgSend_initWithBytes_length_(v145, v146, v139, 4 * v10->_outputFeatureChannels, v147, v148, v149, v150);
        free(v139);
      }

      v151 = objc_autoreleasePoolPush();
      v10->_fusedNeuronDescriptor = objc_msgSend_cnnNeuronDescriptorWithType_(MPSNNNeuronDescriptor, v152, v83, v153, v154, v155, v156, v157);
      objc_autoreleasePoolPop(v151);
      LODWORD(v158) = v91;
      objc_msgSend_setA_(v10->_fusedNeuronDescriptor, v159, v160, v161, v162, v163, v164, v165, v158);
      LODWORD(v166) = v99;
      objc_msgSend_setB_(v10->_fusedNeuronDescriptor, v167, v168, v169, v170, v171, v172, v173, v166);
      LODWORD(v174) = v107;
      objc_msgSend_setC_(v10->_fusedNeuronDescriptor, v175, v176, v177, v178, v179, v180, v181, v174);
      objc_msgSend_setData_(v10->_fusedNeuronDescriptor, v182, v138, v183, v184, v185, v186, v187);
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
  objc_msgSend_encodeInt64_forKey_(aCoder, a2, 256, @"MPSCNNConvolutionDescriptorVers", v3, v4, v5, v6);
  objc_msgSend_encodeInt64_forKey_(aCoder, v9, self->_kernelWidth, @"MPSCNNConvolutionDescriptorWidth", v10, v11, v12, v13);
  objc_msgSend_encodeInt64_forKey_(aCoder, v14, self->_kernelHeight, @"MPSCNNConvolutionDescriptorHeight", v15, v16, v17, v18);
  objc_msgSend_encodeInt64_forKey_(aCoder, v19, self->_inputFeatureChannels, @"MPSCNNConvolutionDescriptorInputFeatureChannels", v20, v21, v22, v23);
  objc_msgSend_encodeInt64_forKey_(aCoder, v24, self->_outputFeatureChannels, @"MPSCNNConvolutionDescriptorOutputFeatureChannels", v25, v26, v27, v28);
  objc_msgSend_encodeInt64_forKey_(aCoder, v29, self->_strideInPixelsX, @"MPSCNNConvolutionDescriptorStrideInPixelsX", v30, v31, v32, v33);
  objc_msgSend_encodeInt64_forKey_(aCoder, v34, self->_strideInPixelsY, @"MPSCNNConvolutionDescriptorStrideInPixelsY", v35, v36, v37, v38);
  objc_msgSend_encodeInt64_forKey_(aCoder, v39, self->_groups, @"MPSCNNConvolutionDescriptorGroups", v40, v41, v42, v43);
  objc_msgSend_encodeInt64_forKey_(aCoder, v44, self->_featureChannelsLayout, @"MPSCNNConvolutionDescriptorFeatureChannelsLayout", v45, v46, v47, v48);
  objc_msgSend_encodeInt64_forKey_(aCoder, v49, self->_subPixelScaleFactor, @"MPSCNNConvolutionDescriptorSubPixelScaleFactor", v50, v51, v52, v53);
  objc_msgSend_encodeInt64_forKey_(aCoder, v54, self->_dilationRateX, @"MPSCNNConvolutionDescriptorDilationRateX", v55, v56, v57, v58);
  objc_msgSend_encodeInt64_forKey_(aCoder, v59, self->_dilationRateY, @"MPSCNNConvolutionDescriptorDilationRateY", v60, v61, v62, v63);
  v71 = objc_msgSend_neuronType(self->_fusedNeuronDescriptor, v64, v65, v66, v67, v68, v69, v70);
  objc_msgSend_encodeInt32_forKey_(aCoder, v72, v71, @"MPSCNNConvolutionDescriptorNeuronType", v73, v74, v75, v76);
  objc_msgSend_a(self->_fusedNeuronDescriptor, v77, v78, v79, v80, v81, v82, v83);
  objc_msgSend_encodeFloat_forKey_(aCoder, v84, @"MPSCNNConvolutionDescriptorNeuronA", v85, v86, v87, v88, v89);
  objc_msgSend_b(self->_fusedNeuronDescriptor, v90, v91, v92, v93, v94, v95, v96);
  objc_msgSend_encodeFloat_forKey_(aCoder, v97, @"MPSCNNConvolutionDescriptorNeuronB", v98, v99, v100, v101, v102);
  objc_msgSend_c(self->_fusedNeuronDescriptor, v103, v104, v105, v106, v107, v108, v109);
  objc_msgSend_encodeFloat_forKey_(aCoder, v110, @"MPSCNNConvolutionDescriptorNeuronC", v111, v112, v113, v114, v115);
  objc_msgSend_encodeBool_forKey_(aCoder, v116, self->_depthWiseConvolution, @"MPSCNNConvolutionDescriptorIsDepthWiseConvolution", v117, v118, v119, v120);
  objc_msgSend_encodeBool_forKey_(aCoder, v121, self->_batchNormalizationData == 0, @"MPSCNNConvolutionDescriptorBatchNormalization.isNull", v122, v123, v124, v125);
  batchNormalizationData = self->_batchNormalizationData;
  if (batchNormalizationData)
  {
    objc_msgSend_bytes(batchNormalizationData, v126, v127, v128, v129, v130, v131, v132);
    v134 = 8 * self->_outputFeatureChannels;
    v135 = malloc_type_malloc(v134, 0x100004052888210uLL);
    if (v135)
    {
      v136 = v135;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(aCoder, v137, v136, v134, @"MPSCNNConvolutionDescriptorBatchNormalization.data", v138, v139, v140);
      free(v136);
    }
  }

  v141 = objc_msgSend_data(self->_fusedNeuronDescriptor, v126, v127, v128, v129, v130, v131, v132) == 0;
  objc_msgSend_encodeBool_forKey_(aCoder, v142, v141, @"MPSCNNConvolutionDescriptorNeuronParameterA.isNull", v143, v144, v145, v146);
  if (objc_msgSend_data(self->_fusedNeuronDescriptor, v147, v148, v149, v150, v151, v152, v153))
  {
    v161 = objc_msgSend_data(self->_fusedNeuronDescriptor, v154, v155, v156, v157, v158, v159, v160);
    objc_msgSend_bytes(v161, v162, v163, v164, v165, v166, v167, v168);
    outputFeatureChannels = self->_outputFeatureChannels;
    v170 = malloc_type_malloc(4 * outputFeatureChannels, 0x100004052888210uLL);
    if (v170)
    {
      v171 = v170;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(aCoder, v172, v171, 4 * outputFeatureChannels, @"MPSCNNConvolutionDescriptorNeuronParameterA.data", v173, v174, v175);

      free(v171);
    }
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v28.receiver = self;
  v28.super_class = MPSCNNConvolutionDescriptor;
  v4 = [(MPSCNNConvolutionDescriptor *)&v28 debugDescription];
  v27 = *&self->_kernelWidth;
  v25 = *&self->_strideInPixelsX;
  v26 = *&self->_inputFeatureChannels;
  subPixelScaleFactor = self->_subPixelScaleFactor;
  dilationRateX = self->_dilationRateX;
  dilationRateY = self->_dilationRateY;
  groups = self->_groups;
  batchNormalizationData = self->_batchNormalizationData;
  v17 = objc_msgSend_debugDescription(self->_fusedNeuronDescriptor, v10, v11, v12, v13, v14, v15, v16);
  return objc_msgSend_stringWithFormat_(v3, v18, @"%@\n\tkernel width: %lu\n\tkernel height: %lu\n\tInput feature channels: %lu\n\tOutput feature channels: %lu\n\tX stride (pixels): %lu\n\tY stride (pixels): %lu\n\tGroups:    %lu\n\tsubPixelScaleFactor:    %lu\n\tdilationRateX:    %lu\n\tdilationRateY:    %lu\n\tBatch norm data: %p\n\tneuron:\n%@\n", v19, v20, v21, v22, v23, v4, v27, v26, v25, groups, subPixelScaleFactor, dilationRateX, dilationRateY, batchNormalizationData, v17);
}

- (id)newDescriptorWithNeuronInfo:(NeuronInfo *)a3
{
  if (self->_neuron_deprecated && (v78 = self, v79 = MTLReportFailureTypeEnabled(), self = v78, v79))
  {
    MTLReportFailure();
    v9 = objc_msgSend_copyWithZone_(v78, v80, 0, v81, v82, v83, v84, v85);
  }

  else
  {
    v9 = objc_msgSend_copyWithZone_(self, a2, 0, v3, v4, v5, v6, v7);
  }

  v17 = v9;
  v18 = objc_msgSend_fusedNeuronDescriptor(v9, v10, v11, v12, v13, v14, v15, v16);
  objc_msgSend_neuronType(v18, v19, v20, v21, v22, v23, v24, v25);
  v33 = objc_msgSend_fusedNeuronDescriptor(v17, v26, v27, v28, v29, v30, v31, v32);
  if (objc_msgSend_neuronType(v33, v34, v35, v36, v37, v38, v39, v40) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_setNeuronType_(v17[15], v41, a3->type, v42, v43, v44, v45, v46);
  *&v47 = a3->a;
  objc_msgSend_setA_(v17[15], v48, v49, v50, v51, v52, v53, v54, v47);
  *&v55 = a3->b;
  objc_msgSend_setB_(v17[15], v56, v57, v58, v59, v60, v61, v62, v55);
  *&v63 = a3->c;
  objc_msgSend_setC_(v17[15], v64, v65, v66, v67, v68, v69, v70, v63);
  objc_msgSend_setData_(v17[15], v71, a3->aData, v72, v73, v74, v75, v76);
  return v17;
}

@end