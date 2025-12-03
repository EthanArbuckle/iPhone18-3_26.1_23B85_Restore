@interface MPSNNConcatenationGradient
- (MPSNNConcatenationGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNNConcatenationGradient)initWithDevice:(id)device sourceIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNNConcatenationGradient

- (MPSNNConcatenationGradient)initWithDevice:(id)device sourceIndex:(unint64_t)index
{
  v6.receiver = self;
  v6.super_class = MPSNNConcatenationGradient;
  result = [(MPSCNNGradientKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_sourceIndex = index;
    result->super.super._encode = sub_239CFFE54;
    result->super.super._encodeData = result;
    result->super.super._checkFlags = 141826;
  }

  return result;
}

- (MPSNNConcatenationGradient)initWithCoder:(id)coder device:(id)device
{
  v15.receiver = self;
  v15.super_class = MPSNNConcatenationGradient;
  v5 = [(MPSCNNGradientKernel *)&v15 initWithCoder:coder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->super.super._encode = sub_239CFFE54;
    v5->super.super._encodeData = v5;
    v5->_sourceIndex = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSNNConcatenationGradient.sourceIndex", v7, v8, v9, v10, v11);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v14 = objc_opt_class();
    NSStringFromClass(v14);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v10.receiver = self;
  v10.super_class = MPSNNConcatenationGradient;
  [(MPSCNNGradientKernel *)&v10 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_sourceIndex, @"MPSNNConcatenationGradient.sourceIndex", v6, v7, v8, v9);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNNConcatenationGradient;
  result = [(MPSCNNGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 54) = self->_sourceIndex;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNConcatenationGradient;
  v4 = [(MPSCNNBinaryKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tSource Index: %lu", v6, v7, v8, v9, v10, v4, self->_sourceIndex);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset
{
  kernelOffsetCopy = kernelOffset;
  if (states)
  {
    v15 = objc_msgSend_primarySourceFeatureChannelOffset(self, a2, images, states, method, offset, secondaryOffset, kernelOffset);
    v23 = objc_msgSend_primarySourceFeatureChannelMaxCount(self, v16, v17, v18, v19, v20, v21, v22);
    v31 = objc_msgSend_count(states, v24, v25, v26, v27, v28, v29, v30);
    if (v31)
    {
      v38 = v31;
      v52 = kernelOffsetCopy;
      v39 = 0;
      v50 = v15;
      v51 = v23;
      objc_msgSend_objectAtIndexedSubscript_(states, v32, 0, v33, v34, v35, v36, v37);
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = (*(objc_msgSend_objectAtIndexedSubscript_(states, v40, v39, v41, v42, v43, v44, v45) + 296) + 16 * self->_sourceIndex);
          v48 = *v46;
          v47 = v46[1];
          v15 += v48;
          if (v23 >= v47)
          {
            v23 = v47;
          }
        }

        if (v38 == ++v39)
        {
          break;
        }

        objc_msgSend_objectAtIndexedSubscript_(states, v40, v39, v41, v42, v43, v44, v45);
      }

      if (v50 != v15)
      {
        objc_msgSend_setPrimarySourceFeatureChannelOffset_(self, v40, v15, v41, v42, v43, v44, v45);
      }

      kernelOffsetCopy = v52;
      if (v51 != v23)
      {
        objc_msgSend_setPrimarySourceFeatureChannelMaxCount_(self, v40, v23, v41, v42, v43, v44, v45);
      }
    }
  }

  v53.receiver = self;
  v53.super_class = MPSNNConcatenationGradient;
  return [(MPSCNNBinaryKernel *)&v53 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method primaryOffset:offset secondaryOffset:secondaryOffset kernelOffset:kernelOffsetCopy];
}

@end