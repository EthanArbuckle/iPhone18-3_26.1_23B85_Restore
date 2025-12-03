@interface MPSConvolutionDataSourceWrapper
+ (id)wrapperForDataSource:(id)source;
- (BOOL)appendBatchNorm:(id)norm;
- (BOOL)appendNeuron:(const NeuronInfo *)neuron;
- (BOOL)appendNeuronDescriptor:(id)descriptor;
- (BOOL)load;
- (MPSConvolutionDataSourceWrapper)initWithDataSource:(id)source;
- (NSString)debugDescription;
- (NeuronInfo)neuronInfo;
- (float)biasTerms;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptor;
- (void)dealloc;
- (void)initialize;
- (void)purge;
- (void)weights;
@end

@implementation MPSConvolutionDataSourceWrapper

+ (id)wrapperForDataSource:(id)source
{
  v4 = objc_opt_class();
  if (objc_msgSend_conformsToProtocol_(source, v5, &unk_284D09FA0, v6, v7, v8, v9, v10))
  {
    v11 = objc_opt_class();
    if (objc_msgSend_supportsSecureCoding(v11, v12, v13, v14, v15, v16, v17, v18))
    {
      v4 = objc_opt_class();
    }
  }

  v19 = [v4 alloc];
  v26 = objc_msgSend_initWithDataSource_(v19, v20, source, v21, v22, v23, v24, v25);

  return v26;
}

- (BOOL)appendBatchNorm:(id)norm
{
  if (self->_convolution)
  {
    if (self->_batchNorm)
    {
LABEL_3:
      LOBYTE(v10) = 0;
      return v10;
    }
  }

  else
  {
    objc_msgSend_initialize(self, a2, norm, v3, v4, v5, v6, v7);
    if (self->_batchNorm)
    {
      goto LABEL_3;
    }
  }

  neuron = self->_neuron;
  if (neuron)
  {
    memset(v21, 0, sizeof(v21));
    objc_msgSend_neuronInfo(neuron, a2, norm, v3, v4, v5, v6, v7);
    v10 = sub_239BF0728(v21);
    if (!v10)
    {
      return v10;
    }

    self->_neuron = 0;
  }

  self->_batchNorm = norm;
  if (objc_opt_respondsToSelector())
  {
    v18 = objc_msgSend_performSelector_(self->_batchNorm, v12, sel_fusedNeuronDescriptor, v13, v14, v15, v16, v17);
    self->_neuron = v18;
    v19 = v18;
  }

  LOBYTE(v10) = 1;
  return v10;
}

- (void)initialize
{
  if (!self->_convolution)
  {
    v75[5] = v8;
    v75[6] = v9;
    if ((objc_msgSend_load(self, a2, v2, v3, v4, v5, v6, v7) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v55 = objc_opt_class();
      v71 = NSStringFromClass(v55);
      v73 = objc_msgSend_debugDescription(self->_dataSource, v56, v57, v58, v59, v60, v61, v62);
      MTLReportFailure();
    }

    v18 = objc_msgSend_descriptor(self->_dataSource, v11, v12, v13, v14, v15, v16, v17, v71, v73);
    self->_convolution = v18;
    if (!v18 && MTLReportFailureTypeEnabled())
    {
      v63 = objc_opt_class();
      v72 = NSStringFromClass(v63);
      v74 = objc_msgSend_debugDescription(self->_dataSource, v64, v65, v66, v67, v68, v69, v70);
      MTLReportFailure();
    }

    v26 = objc_msgSend_fusedNeuronDescriptor(self->_convolution, v19, v20, v21, v22, v23, v24, v25, v72, v74);
    if (v26)
    {
      memset(v75, 0, 24);
      objc_msgSend_neuronInfo(v26, v27, v28, v29, v30, v31, v32, v33);
      if ((sub_239BF0728(v75) & 1) == 0)
      {
        v41 = objc_msgSend_fusedNeuronDescriptor(self->_convolution, v34, v35, v36, v37, v38, v39, v40);
        self->_neuron = objc_msgSend_copyWithZone_(v41, v42, 0, v43, v44, v45, v46, v47);
      }
    }

    self->_batchNorm = self->_convolution->_batchNormalizationData;
    objc_msgSend_purge(self, v48, v49, v50, v51, v52, v53, v54);
  }
}

- (MPSConvolutionDataSourceWrapper)initWithDataSource:(id)source
{
  v7.receiver = self;
  v7.super_class = MPSConvolutionDataSourceWrapper;
  result = [(MPSConvolutionDataSourceWrapper *)&v7 init];
  if (result)
  {
    v5 = result;
    sourceCopy = source;
    result = v5;
    v5->_dataSource = sourceCopy;
    v5->_convolution = 0;
    v5->_batchNorm = 0;
    v5->_neuron = 0;
    atomic_store(0, &v5->_loadCount);
  }

  return result;
}

- (BOOL)appendNeuron:(const NeuronInfo *)neuron
{
  if (!neuron || !neuron->type)
  {
    return 1;
  }

  if (neuron->type != 10)
  {
    *&v8 = neuron->a;
    *&v9 = neuron->b;
    *&v10 = neuron->c;
    v12 = objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(MPSNNNeuronDescriptor, a2, neuron->type, v3, v4, v5, v6, v7, v8, v9, v10);
    if (v12)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v12 = objc_msgSend_cnnNeuronPReLUDescriptorWithData_noCopy_(MPSNNNeuronDescriptor, a2, neuron->aData, 0, v4, v5, v6, v7);
  if (!v12)
  {
    return 0;
  }

LABEL_5:

  return MEMORY[0x2821F9670](self, sel_appendNeuronDescriptor_, v12, v13, v14, v15, v16, v17);
}

- (BOOL)appendNeuronDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!self->_convolution)
  {
    objc_msgSend_initialize(self, a2, descriptor, v3, v4, v5, v6, v7);
    v10 = objc_autoreleasePoolPush();
    neuron = self->_neuron;
    if (descriptorCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    descriptorCopy = neuron;
    if (!neuron)
    {
LABEL_16:
      v36 = 0;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = objc_autoreleasePoolPush();
  neuron = self->_neuron;
  if (!descriptorCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!neuron)
  {
LABEL_12:

    self->_neuron = descriptorCopy;
    goto LABEL_13;
  }

  neuronType = neuron->_neuronType;
  v43 = *&neuron->_a;
  c = neuron->_c;
  data = neuron->_data;
  v38 = *(descriptorCopy + 8);
  v39 = *(descriptorCopy + 12);
  v40 = *(descriptorCopy + 20);
  v41 = *(descriptorCopy + 24);
  if (!sub_239BF0850(&neuronType, &v38))
  {
    goto LABEL_16;
  }

  if (neuronType == 10)
  {
    v21 = data;
    v22 = objc_msgSend_bytes(data, v12, 10, v13, v14, v15, v16, v17);
    v30 = v22 | objc_msgSend_length(v21, v23, v24, v25, v26, v27, v28, v29);
    descriptorCopy = objc_msgSend_cnnNeuronPReLUDescriptorWithData_noCopy_(MPSNNNeuronDescriptor, v31, v21, (*MEMORY[0x277D85F88] & v30) == 0, v32, v33, v34, v35);
  }

  else
  {
    LODWORD(v19) = HIDWORD(v43);
    LODWORD(v18) = v43;
    *&v20 = c;
    descriptorCopy = objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(MPSNNNeuronDescriptor, v12, neuronType, v13, v14, v15, v16, v17, v18, v19, v20);
    v21 = data;
  }

  if (!descriptorCopy)
  {
    goto LABEL_16;
  }

LABEL_11:
  neuron = self->_neuron;
  if (descriptorCopy != neuron)
  {
    goto LABEL_12;
  }

LABEL_13:
  v36 = 1;
LABEL_17:
  objc_autoreleasePoolPop(v10);
  return v36;
}

- (NeuronInfo)neuronInfo
{
  if (self->_convolution)
  {
    result = self->_neuron;
    if (result)
    {
LABEL_3:
      retstr->type = objc_msgSend_neuronType(result, a3, v3, v4, v5, v6, v7, v8);
      objc_msgSend_a(self->_neuron, v12, v13, v14, v15, v16, v17, v18);
      retstr->a = v19;
      objc_msgSend_b(self->_neuron, v20, v21, v22, v23, v24, v25, v26);
      retstr->b = v27;
      objc_msgSend_c(self->_neuron, v28, v29, v30, v31, v32, v33, v34);
      retstr->c = v35;
      result = objc_msgSend_data(self->_neuron, v36, v37, v38, v39, v40, v41, v42);
      retstr->aData = result;
      return result;
    }
  }

  else
  {
    objc_msgSend_initialize(self, a3, v3, v4, v5, v6, v7, v8);
    result = self->_neuron;
    if (result)
    {
      goto LABEL_3;
    }
  }

  *&retstr->type = 0;
  *&retstr->b = 0;
  retstr->aData = 0;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSConvolutionDataSourceWrapper;
  [(MPSConvolutionDataSourceWrapper *)&v3 dealloc];
}

- (id)descriptor
{
  if (self->_convolution)
  {
    if (self->_batchNorm)
    {
LABEL_3:
      v9 = objc_msgSend_copyWithZone_(self->_convolution, a2, 0, v3, v4, v5, v6, v7);
      goto LABEL_7;
    }
  }

  else
  {
    objc_msgSend_initialize(self, a2, v2, v3, v4, v5, v6, v7);
    if (self->_batchNorm)
    {
      goto LABEL_3;
    }
  }

  convolution = self->_convolution;
  if (!self->_neuron)
  {
    return convolution;
  }

  v9 = objc_msgSend_copyWithZone_(convolution, a2, 0, v3, v4, v5, v6, v7);
LABEL_7:
  v11 = v9;
  if (v11)
  {
    convolution = v11;
    batchNorm = self->_batchNorm;
    if (batchNorm && objc_msgSend_conformsToProtocol_(batchNorm, v12, &unk_284D1B308, v13, v14, v15, v16, v17))
    {
      v19 = self->_batchNorm;
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_epsilon(v19, v20, v21, v22, v23, v24, v25, v26);
        v28 = v27;
      }

      else
      {
        v28 = 0x800000;
      }

      v29 = objc_msgSend_mean(v19, v20, v21, v22, v23, v24, v25, v26);
      v37 = objc_msgSend_variance(v19, v30, v31, v32, v33, v34, v35, v36);
      v45 = objc_msgSend_gamma(v19, v38, v39, v40, v41, v42, v43, v44);
      v53 = objc_msgSend_beta(v19, v46, v47, v48, v49, v50, v51, v52);
      LODWORD(v54) = v28;
      objc_msgSend_setBatchNormalizationParametersForInferenceWithMean_variance_gamma_beta_epsilon_(convolution, v55, v29, v37, v45, v53, v56, v57, v54);
    }

    neuron = self->_neuron;
    if (!neuron)
    {
      neuron = objc_msgSend_cnnNeuronDescriptorWithType_(MPSNNNeuronDescriptor, v12, 0, v13, v14, v15, v16, v17);
    }

    objc_msgSend_setFusedNeuronDescriptor_(convolution, v12, neuron, v13, v14, v15, v16, v17);
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      objc_msgSend_debugDescription(self->_convolution, v60, v61, v62, v63, v64, v65, v66);
      MTLReportFailure();
    }

    return self->_convolution;
  }

  return convolution;
}

- (void)weights
{
  if (!objc_msgSend_load(self, a2, v2, v3, v4, v5, v6, v7))
  {
    return 0;
  }

  v16 = objc_msgSend_weights(self->_dataSource, v9, v10, v11, v12, v13, v14, v15);
  objc_msgSend_purge(self, v17, v18, v19, v20, v21, v22, v23);
  return v16;
}

- (float)biasTerms
{
  if (!objc_msgSend_load(self, a2, v2, v3, v4, v5, v6, v7))
  {
    return 0;
  }

  v16 = objc_msgSend_biasTerms(self->_dataSource, v9, v10, v11, v12, v13, v14, v15);
  objc_msgSend_purge(self, v17, v18, v19, v20, v21, v22, v23);
  return v16;
}

- (BOOL)load
{
  while (1)
  {
    explicit = atomic_load_explicit(&self->_loadCount.__a_.__a_value, memory_order_acquire);
    if (!explicit)
    {
      v11 = objc_msgSend_load(self->_dataSource, a2, v2, v3, v4, v5, v6, v7);
      if (!v11)
      {
        break;
      }
    }

    v9 = explicit;
    atomic_compare_exchange_strong(&self->_loadCount.__a_.__a_value, &v9, explicit + 1);
    if (v9 == explicit)
    {
      LOBYTE(v11) = 1;
      return v11;
    }
  }

  return v11;
}

- (void)purge
{
  add = atomic_fetch_add(&self->_loadCount.__a_.__a_value, 0xFFFFFFFFFFFFFFFFLL);
  if (add <= 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      objc_msgSend_debugDescription(self->_dataSource, v11, v12, v13, v14, v15, v16, v17);
      MTLReportFailure();
    }
  }

  else if (add == 1)
  {
    dataSource = self->_dataSource;

    objc_msgSend_purge(dataSource, a2, v2, v3, v4, v5, v6, v7);
  }
}

- (NSString)debugDescription
{
  if (self->_convolution)
  {
    v9 = objc_msgSend_conformsToProtocol_(self->_batchNorm, a2, &unk_284D1B308, v3, v4, v5, v6, v7);
    v10 = MEMORY[0x277CCACA8];
    v18 = objc_msgSend_description(self->_dataSource, v11, v12, v13, v14, v15, v16, v17);
    v26 = objc_msgSend_label(self->_dataSource, v19, v20, v21, v22, v23, v24, v25);
    v41 = objc_msgSend_debugDescription(self->_convolution, v27, v28, v29, v30, v31, v32, v33);
    if (v9)
    {
      v42 = objc_msgSend_debugDescription(self->_batchNorm, v34, v35, v36, v37, v38, v39, v40);
      v80 = objc_msgSend_debugDescription(self->_neuron, v43, v44, v45, v46, v47, v48, v49);
      return objc_msgSend_stringWithFormat_(v10, v50, @"aggregation container for %@ %@\nconvolution descriptor: %@batch norm data source: %@neuron descriptor:      %@", v51, v52, v53, v54, v55, v18, v26, v41, v42, v80);
    }

    else
    {
      v79 = objc_msgSend_debugDescription(self->_neuron, v34, v35, v36, v37, v38, v39, v40);
      return objc_msgSend_stringWithFormat_(v10, v72, @"aggregation container for %@ %@\nconvolution descriptor: %@neuron descriptor:      %@", v73, v74, v75, v76, v77, v18, v26, v41, v79);
    }
  }

  else
  {
    v57 = MEMORY[0x277CCACA8];
    v58 = objc_msgSend_description(self->_dataSource, a2, v2, v3, v4, v5, v6, v7);
    v78 = objc_msgSend_label(self->_dataSource, v59, v60, v61, v62, v63, v64, v65);
    return objc_msgSend_stringWithFormat_(v57, v66, @"aggregation container for %@ %@\n", v67, v68, v69, v70, v71, v58, v78);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v18 = objc_msgSend_initWithDataSource_(v5, v6, self->_dataSource, v7, v8, v9, v10, v11);
  if (v18)
  {
    convolution = self->_convolution;
    if (convolution)
    {
      v18[2] = objc_msgSend_copyWithZone_(convolution, v12, zone, v13, v14, v15, v16, v17);
    }

    batchNorm = self->_batchNorm;
    if (batchNorm)
    {
      v27 = objc_msgSend_conformsToProtocol_(batchNorm, v12, &unk_284D09E18, v13, v14, v15, v16, v17);
      v28 = self->_batchNorm;
      if (v27)
      {
        v29 = objc_msgSend_copyWithZone_(v28, v21, zone, v22, v23, v24, v25, v26);
      }

      else
      {
        v29 = v28;
      }

      v18[3] = v29;
    }

    neuron = self->_neuron;
    if (neuron)
    {
      v18[4] = objc_msgSend_copyWithZone_(neuron, v12, zone, v13, v14, v15, v16, v17);
    }

    atomic_store(0, v18 + 5);
  }

  return v18;
}

@end