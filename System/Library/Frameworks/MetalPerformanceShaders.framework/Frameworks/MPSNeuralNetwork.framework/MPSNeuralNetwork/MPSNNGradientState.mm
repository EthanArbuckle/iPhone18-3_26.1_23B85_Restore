@interface MPSNNGradientState
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states forKernel:(id)kernel suggestedDescriptor:(id)descriptor;
- (void)dealloc;
@end

@implementation MPSNNGradientState

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states forKernel:(id)kernel suggestedDescriptor:(id)descriptor
{
  v114.receiver = self;
  v114.super_class = MPSNNGradientState;
  v9 = [(MPSState *)&v114 destinationImageDescriptorForSourceImages:images sourceStates:states forKernel:kernel suggestedDescriptor:descriptor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((*(kernel + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      objc_msgSend_count(images, v10, v11, v12, v13, v14, v15, v16);
      if (objc_msgSend_count(images, v17, v18, v19, v20, v21, v22, v23) <= 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v108 = objc_opt_class();
          v110 = NSStringFromClass(v108);
          MTLReportFailure();
        }
      }
    }

    objc_msgSend_readGradientState_(kernel, v10, self, v12, v13, v14, v15, v16, v110);
    v112[0] = 0;
    v112[1] = 0;
    v113 = 0;
    objc_msgSend_setPrimaryOffset_(kernel, v24, v112, v25, v26, v27, v28, v29);
    objc_msgSend_setWidth_(v9, v30, self->_srcSize.width, v31, v32, v33, v34, v35);
    objc_msgSend_setHeight_(v9, v36, self->_srcSize.height, v37, v38, v39, v40, v41);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = objc_msgSend_sourceImageFeatureChannels(kernel, v42, v43, v44, v45, v46, v47, v48);
      objc_msgSend_setFeatureChannels_(v9, v50, v49, v51, v52, v53, v54, v55);
    }

LABEL_10:
    objc_msgSend_setKernelOffsetX_(kernel, v42, ((self->_kernelWidth & 1) == 0) - self->_offset.x, v44, v45, v46, v47, v48);
    objc_msgSend_setKernelOffsetY_(kernel, v101, ((self->_kernelHeight & 1) == 0) - self->_offset.y, v102, v103, v104, v105, v106);
    return v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((*(kernel + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      objc_msgSend_count(images, v56, v57, v58, v59, v60, v61, v62);
      if (objc_msgSend_count(images, v63, v64, v65, v66, v67, v68, v69) <= 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v109 = objc_opt_class();
          v110 = NSStringFromClass(v109);
          MTLReportFailure();
        }
      }
    }

    objc_msgSend_readGradientState_(kernel, v56, self, v58, v59, v60, v61, v62, v110);
    objc_msgSend_primaryOffset(kernel, v70, v71, v72, v73, v74, v75, v76);
    v111[0] = 0;
    v111[1] = 0;
    v111[2] = v113;
    objc_msgSend_setPrimaryOffset_(kernel, v77, v111, v78, v79, v80, v81, v82);
    objc_msgSend_setWidth_(v9, v83, self->_srcSize.width, v84, v85, v86, v87, v88);
    objc_msgSend_setHeight_(v9, v89, self->_srcSize.height, v90, v91, v92, v93, v94);
    objc_msgSend_setFeatureChannels_(v9, v95, self->_sourceFeatureChannels, v96, v97, v98, v99, v100);
    goto LABEL_10;
  }

  return v9;
}

- (id)debugDescription
{
  v36 = MEMORY[0x277CCACA8];
  v37.receiver = self;
  v37.super_class = MPSNNGradientState;
  v35 = [(MPSState *)&v37 debugDescription];
  v34 = *&self->_offset.x;
  z = self->_offset.z;
  v31 = *&self->_clipRect.origin.z;
  v32 = *&self->_clipRect.origin.x;
  depth = self->_clipRect.size.depth;
  height = self->_clipRect.size.height;
  v28 = *&self->_destSize.width;
  v3 = self->_destSize.depth;
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
  kernelWidth = self->_kernelWidth;
  kernelHeight = self->_kernelHeight;
  strideInPixelsX = self->_strideInPixelsX;
  strideInPixelsY = self->_strideInPixelsY;
  dilationRateX = self->_dilationRateX;
  dilationRateY = self->_dilationRateY;
  v19 = objc_msgSend_debugDescription(self->_padding, v12, v13, v14, v15, v16, v17, v18);
  if (self->_isBackwards)
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  return objc_msgSend_stringWithFormat_(v36, v20, @"%@\n\toffset: {%ld, %ld, %ld}\n\tclipRect:                          {origin:{%lu, %lu, %lu}, size:{%lu, %lu, %lu}}\n\tdest size:                         {w:%lu, h:%lu, images:%lu}\n\tdestination feature channel offset: %lu\n\tsource feature channel offset:      %lu\n\tkernel size:                        %lu x %lu\n\tpixel stride:                       %lu x %lu\n\tdilation rate:                      %lu x %lu\n\tpadding:                            \n\t\t%@\n\tmax batch size:                     %lu\n\tis backwards:                       %@\n\tedge mode:                          %lu\n\tsource size:                       {%lu, %lu, %lu} fc: %lu", v21, v22, v23, v24, v25, v35, v34, z, v32, v31, height, depth, v28, v3, destinationFeatureChannelOffset, sourceFeatureChannelOffset, kernelWidth, kernelHeight, strideInPixelsX, strideInPixelsY, dilationRateX, dilationRateY, v19, self->_maxBatchSize, v26, self->_edgeMode, self->_srcSize.width, self->_srcSize.height, self->_srcSize.depth, self->_sourceFeatureChannels);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNGradientState;
  [(MPSState *)&v3 dealloc];
}

@end