@interface MPSCNNGradientKernel
- (MPSCNNGradientKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNGradientKernel)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states;
- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradients:(id)gradients sourceImages:(id)images gradientStates:(id)states;
- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages gradientStates:(MPSStateBatch *)gradientStates destinationGradients:(MPSImageBatch *)destinationGradients;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradients:(id)gradients sourceImages:(id)images gradientStates:(id)states destinationGradients:(id)destinationGradients;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state destinationGradient:(id)destinationGradient;
- (void)encodeWithCoder:(id)coder;
- (void)readBinaryGradientState:(id)state isSecondarySourceFilter:(BOOL)filter;
- (void)readGradientState:(id)state;
@end

@implementation MPSCNNGradientKernel

- (MPSCNNGradientKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNGradientKernel;
  result = [(MPSCNNBinaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_kernelOffsetY = 0;
    result->_kernelOffsetX = 0;
    result->super._isBackwards = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = MPSCNNGradientKernel;
  [(MPSCNNBinaryKernel *)&v15 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_kernelOffsetX, @"MPSCNNGradientKernel.kernelOffsetX", v6, v7, v8, v9);
  objc_msgSend_encodeInteger_forKey_(coder, v10, self->_kernelOffsetY, @"MPSCNNGradientKernel.kernelOffsetY", v11, v12, v13, v14);
}

- (MPSCNNGradientKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v19.receiver = self;
  v19.super_class = MPSCNNGradientKernel;
  v11 = [(MPSCNNBinaryKernel *)&v19 initWithCoder:aDecoder device:device];
  if (v11)
  {
    v11->_kernelOffsetX = objc_msgSend_decodeIntegerForKey_(aDecoder, v5, @"MPSCNNGradientKernel.kernelOffsetX", v6, v7, v8, v9, v10);
    v11->_kernelOffsetY = objc_msgSend_decodeIntegerForKey_(aDecoder, v12, @"MPSCNNGradientKernel.kernelOffsetY", v13, v14, v15, v16, v17);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSCNNGradientKernel;
  result = [(MPSCNNBinaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 52) = self->_kernelOffsetX;
    *(result + 53) = self->_kernelOffsetY;
  }

  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && !self->super._padding && MTLReportFailureTypeEnabled())
  {
    v66 = objc_opt_class();
    v68 = NSStringFromClass(v66);
    MTLReportFailure();
  }

  v11 = objc_msgSend_paddingMethod(self->super._padding, a2, images, states, v4, v5, v6, v7, v68);
  v78 = 0uLL;
  v79 = 0;
  objc_msgSend_primaryOffset(self, v12, v13, v14, v15, v16, v17, v18);
  v76 = 0uLL;
  v77 = 0;
  objc_msgSend_secondaryOffset(self, v19, v20, v21, v22, v23, v24, v25);
  kernelOffsetY = self->_kernelOffsetY;
  kernelOffsetX = self->_kernelOffsetX;
  v74 = kernelOffsetY;
  v75 = 0;
  v28 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_paddingMethod_primaryOffset_secondaryOffset_kernelOffset_(self, v27, images, states, v11, &v78, &v76, &kernelOffsetX);
  v71 = v78;
  v72 = v79;
  objc_msgSend_setPrimaryOffset_(self, v29, &v71, v30, v31, v32, v33, v34);
  v71 = v76;
  v72 = v77;
  objc_msgSend_setSecondaryOffset_(self, v35, &v71, v36, v37, v38, v39, v40);
  v48 = v74;
  self->_kernelOffsetX = kernelOffsetX;
  self->_kernelOffsetY = v48;
  if (states)
  {
    v49 = objc_msgSend_count(states, v41, v42, v43, v44, v45, v46, v47);
    if (v49)
    {
      v56 = v49;
      for (i = 0; i != v56; ++i)
      {
        v58 = objc_msgSend_objectAtIndexedSubscript_(states, v50, i, v51, v52, v53, v54, v55);
        v28 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(v58, v59, images, states, self, v28, v60, v61);
      }
    }
  }

  if (v28 && (v11 & 0x4000) != 0)
  {
    objc_opt_respondsToSelector();
    if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v67 = objc_opt_class();
      v69 = NSStringFromClass(v67);
      padding = self->super._padding;
      MTLReportFailure();
    }

    return objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(self->super._padding, v62, images, states, self, v28, v63, v64, v69, padding);
  }

  return v28;
}

- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state
{
  v38[2] = *MEMORY[0x277D85DE8];
  v38[0] = gradient;
  v38[1] = image;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v38, 2, gradient, image, state, v7);
  if (state)
  {
    stateCopy = state;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, &stateCopy, 1, v15, v16, v17, v18);
    v26 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v21, v19, v20, v22, v23, v24, v25);
  }

  else
  {
    v26 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v14, v19, 0, v15, v16, v17, v18);
  }

  v31 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v31))
  {
    if (!v26)
    {
      return 0;
    }
  }

  else if (!v26)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    return 0;
  }

  v32 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->super._destinationImageAllocator, v27, buffer, v26, self, v28, v29, v30);
  v34 = v32;
  if (*(&self->super.super.super.isa + v31))
  {
    if (!v32)
    {
      return v34;
    }

LABEL_15:
    objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceGradient_sourceImage_gradientState_destinationGradient_(self, v33, encoder, buffer, gradient, image, state, v32);
    return v34;
  }

  if (v32)
  {
    goto LABEL_15;
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_12:
    v35 = objc_opt_class();
    NSStringFromClass(v35);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state destinationGradient:(id)destinationGradient
{
  v15 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v15) & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!*(state + 9) && !*(state + 10))
      {
        v23 = *(state + 12);
        if (v23 >= objc_msgSend_width(gradient, v16, v17, v18, v19, v20, v21, v22))
        {
          objc_msgSend_height(gradient, v16, v17, v18, v19, v20, v21, v22);
        }
      }

      if (*(state + 9) || *(state + 10) || (v24 = *(state + 12), v24 < objc_msgSend_width(gradient, v16, v17, v18, v19, v20, v21, v22)) || (v32 = *(state + 13), v32 < objc_msgSend_height(gradient, v25, v26, v27, v28, v29, v30, v31)))
      {
        if (MTLReportFailureTypeEnabled())
        {
LABEL_23:
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          MTLReportFailure();
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!*(state + 12) && !*(state + 13))
        {
          v39 = *(state + 15);
          if (v39 >= objc_msgSend_width(gradient, a2, v33, v34, v35, v36, v37, v38))
          {
            objc_msgSend_height(gradient, a2, v33, v34, v35, v36, v37, v38);
          }
        }

        if (*(state + 12) || *(state + 13) || (v40 = *(state + 15), v40 < objc_msgSend_width(gradient, a2, v33, v34, v35, v36, v37, v38)) || (v48 = *(state + 16), v48 < objc_msgSend_height(gradient, v41, v42, v43, v44, v45, v46, v47)))
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_23;
          }
        }
      }

      else if ((*(&self->super.super.super.isa + v15) & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          objc_opt_isKindOfClass();
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_23;
            }
          }
        }
      }
    }
  }

  objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_(self, a2, encoder, buffer, gradient, image, state, destinationGradient, v50);

  MPSDecrementReadCount(state);
}

- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradients:(id)gradients sourceImages:(id)images gradientStates:(id)states
{
  v86[2] = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_count(gradients, a2, encoder, buffer, gradients, images, states, v7);
  v86[0] = objc_msgSend_objectAtIndexedSubscript_(gradients, v14, 0, v15, v16, v17, v18, v19);
  v86[1] = objc_msgSend_objectAtIndexedSubscript_(images, v20, 0, v21, v22, v23, v24, v25);
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v86, 2, v27, v28, v29, v30);
  if (states)
  {
    v85 = objc_msgSend_objectAtIndexedSubscript_(states, v31, 0, v32, v33, v34, v35, v36);
    v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, &v85, 1, v39, v40, v41, v42);
    v49 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v44, v37, v43, v45, v46, v47, v48);
  }

  else
  {
    v49 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v31, v37, 0, v33, v34, v35, v36);
  }

  v50 = v49;
  v51 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v51))
  {
    if (!v49)
    {
      return 0;
    }

LABEL_10:
    imagesCopy = images;
    destinationImageAllocator = self->super._destinationImageAllocator;
    if (objc_opt_respondsToSelector())
    {
      v53 = objc_msgSend_imageBatchForCommandBuffer_imageDescriptor_kernel_count_(destinationImageAllocator, v55, buffer, v50, self, v13, v59, v60);
    }

    else
    {
      v53 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v55, v13, v56, v57, v58, v59, v60);
      if (!v53)
      {
        return v53;
      }

      if (!v13)
      {
LABEL_22:
        objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceGradients_sourceImages_gradientStates_destinationGradients_(self, v61, encoder, buffer, gradients, imagesCopy, states, v53, v82);
        return v53;
      }

      for (i = 0; i != v13; ++i)
      {
        v66 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(destinationImageAllocator, v61, buffer, v50, self, v62, v63, v64, v82);
        objc_msgSend_setObject_atIndexedSubscript_(v53, v67, v66, i, v68, v69, v70, v71);
        if ((*(&self->super.super.super.isa + v51) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(v53, v61, i, v72, v73, v62, v63, v64);
          if (!objc_msgSend_objectAtIndexedSubscript_(v53, v74, i, v75, v76, v77, v78, v79))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v80 = objc_opt_class();
              v82 = NSStringFromClass(v80);
              MTLReportFailure();
            }
          }
        }
      }
    }

    if (!v53)
    {
      return v53;
    }

    goto LABEL_22;
  }

  if (v49)
  {
    goto LABEL_10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v52 = objc_opt_class();
    NSStringFromClass(v52);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages gradientStates:(MPSStateBatch *)gradientStates destinationGradients:(MPSImageBatch *)destinationGradients
{
  objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, a2, 0, commandBuffer, sourceGradients, sourceImages, gradientStates, destinationGradients);

  MPSDecrementReadCount();
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradients:(id)gradients sourceImages:(id)images gradientStates:(id)states destinationGradients:(id)destinationGradients
{
  objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, a2, encoder, buffer, gradients, images, states, destinationGradients);

  MPSDecrementReadCount();
}

- (void)readGradientState:(id)state
{
  v16 = *(state + 3);
  v17 = *(state + 8);
  objc_msgSend_setSecondaryOffset_(self, a2, &v16, v3, v4, v5, v6, v7);
  objc_msgSend_setSecondarySourceFeatureChannelOffset_(self, v10, *(state + 20), v11, v12, v13, v14, v15);
  self->super._secondaryKernelWidth = *(state + 21);
  self->super._secondaryKernelHeight = *(state + 22);
  self->super._secondaryStrideInPixelsX = *(state + 23);
  self->super._secondaryStrideInPixelsY = *(state + 24);
  self->super._secondaryDilationRateX = *(state + 25);
  self->super._secondaryDilationRateY = *(state + 26);
  self->super._secondaryEdgeMode = *(state + 30);
}

- (void)readBinaryGradientState:(id)state isSecondarySourceFilter:(BOOL)filter
{
  if (filter)
  {
    v24 = *(state + 72);
    v25 = *(state + 11);
    objc_msgSend_setSecondaryOffset_(self, a2, &v24, filter, v4, v5, v6, v7);
    v16 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryEdgeMode;
    v17 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryDilationRateY;
    v18 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryDilationRateX;
    v19 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryStrideInPixelsY;
    v20 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryStrideInPixelsX;
    v21 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryKernelHeight;
    v22 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryKernelWidth;
    v23 = &OBJC_IVAR___MPSNNBinaryGradientState__secondarySourceFeatureChannelOffset;
  }

  else
  {
    v24 = *(state + 3);
    v25 = *(state + 8);
    objc_msgSend_setSecondaryOffset_(self, a2, &v24, filter, v4, v5, v6, v7);
    v16 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryEdgeMode;
    v17 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryDilationRateY;
    v18 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryDilationRateX;
    v19 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryStrideInPixelsY;
    v20 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryStrideInPixelsX;
    v21 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryKernelHeight;
    v22 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryKernelWidth;
    v23 = &OBJC_IVAR___MPSNNBinaryGradientState__primarySourceFeatureChannelOffset;
  }

  objc_msgSend_setSecondarySourceFeatureChannelOffset_(self, v10, *(state + *v23), v11, v12, v13, v14, v15);
  self->super._secondaryKernelWidth = *(state + *v22);
  self->super._secondaryKernelHeight = *(state + *v21);
  self->super._secondaryStrideInPixelsX = *(state + *v20);
  self->super._secondaryStrideInPixelsY = *(state + *v19);
  self->super._secondaryDilationRateX = *(state + *v18);
  self->super._secondaryDilationRateY = *(state + *v17);
  self->super._secondaryEdgeMode = *(state + *v16);
}

@end