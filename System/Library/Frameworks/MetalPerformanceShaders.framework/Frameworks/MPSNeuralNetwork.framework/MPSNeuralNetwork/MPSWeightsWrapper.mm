@interface MPSWeightsWrapper
- (MPSWeightsWrapper)initWithSource:(id)source neuronInfo:(NeuronInfo *)info batchNorm:(id)norm;
- (float)lookupTableForUInt8Kernel;
- (id)label;
- (uint64_t)rangesForUInt8Kernel;
- (void)dealloc;
@end

@implementation MPSWeightsWrapper

- (MPSWeightsWrapper)initWithSource:(id)source neuronInfo:(NeuronInfo *)info batchNorm:(id)norm
{
  objc_msgSend_load(source, a2, source, info, norm, v5, v6, v7);
  if (norm && (objc_msgSend_descriptor(source, v12, v13, v14, v15, v16, v17, v18), *(objc_msgSend_descriptor(source, v19, v20, v21, v22, v23, v24, v25) + 72)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return 0;
  }

  else
  {
    v99.receiver = self;
    v99.super_class = MPSWeightsWrapper;
    v26 = [(MPSWeightsWrapper *)&v99 init];
    if (v26)
    {
      sourceCopy = source;
      *(v26 + 2) = sourceCopy;
      aData = info->aData;
      *(v26 + 24) = *&info->type;
      *(v26 + 5) = aData;
      v36 = objc_msgSend_descriptor(sourceCopy, v29, v30, v31, v32, v33, v34, v35);
      v97 = *(v26 + 24);
      v98 = *(v26 + 5);
      *(v26 + 6) = objc_msgSend_newDescriptorWithNeuronInfo_(v36, v37, &v97, v38, v39, v40, v41, v42);
      if (norm)
      {
        objc_msgSend_load(norm, v43, v44, v45, v46, v47, v48, v49);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_epsilon(norm, v50, v51, v52, v53, v54, v55, v56);
          v58 = v57;
        }

        else
        {
          v58 = 0x800000;
        }

        v59 = *(v26 + 6);
        v60 = objc_msgSend_mean(norm, v50, v51, v52, v53, v54, v55, v56);
        v68 = objc_msgSend_variance(norm, v61, v62, v63, v64, v65, v66, v67);
        v76 = objc_msgSend_gamma(norm, v69, v70, v71, v72, v73, v74, v75);
        v84 = objc_msgSend_beta(norm, v77, v78, v79, v80, v81, v82, v83);
        LODWORD(v85) = v58;
        objc_msgSend_setBatchNormalizationParametersForInferenceWithMean_variance_gamma_beta_epsilon_(v59, v86, v60, v68, v76, v84, v87, v88, v85);
        objc_msgSend_purge(norm, v89, v90, v91, v92, v93, v94, v95);
      }

      objc_msgSend_purge(*(v26 + 2), v43, v44, v45, v46, v47, v48, v49);
    }
  }

  return v26;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSWeightsWrapper;
  [(MPSWeightsWrapper *)&v3 dealloc];
}

- (uint64_t)rangesForUInt8Kernel
{
  NSSelectorFromString(&cfstr_Rangesforuint8.isa);
  objc_opt_respondsToSelector();
  NSSelectorFromString(&cfstr_Rangesforuint8.isa);
  if ((objc_opt_respondsToSelector() & 1) != 0 || !MTLReportFailureTypeEnabled())
  {
    v9 = *(self + 16);
  }

  else
  {
    MTLReportFailure();
    v9 = *(self + 16);
  }

  return objc_msgSend_rangesForUInt8Kernel(v9, v2, v3, v4, v5, v6, v7, v8);
}

- (float)lookupTableForUInt8Kernel
{
  NSSelectorFromString(&cfstr_Lookuptablefor.isa);
  objc_opt_respondsToSelector();
  NSSelectorFromString(&cfstr_Lookuptablefor.isa);
  if ((objc_opt_respondsToSelector() & 1) != 0 || !MTLReportFailureTypeEnabled())
  {
    source = self->_source;
  }

  else
  {
    MTLReportFailure();
    source = self->_source;
  }

  return objc_msgSend_lookupTableForUInt8Kernel(source, v3, v4, v5, v6, v7, v8, v9);
}

- (id)label
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  source = self->_source;

  return objc_msgSend_performSelector_(source, v3, sel_label, v4, v5, v6, v7, v8);
}

@end