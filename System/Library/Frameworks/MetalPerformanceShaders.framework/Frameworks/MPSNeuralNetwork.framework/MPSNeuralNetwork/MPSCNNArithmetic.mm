@interface MPSCNNArithmetic
- (MPSCNNArithmetic)initWithCoder:(id)coder device:(id)device;
- (MPSCNNArithmetic)initWithDevice:(id)device;
- (MPSCNNArithmetic)initWithDevice:(id)device arithmeticType:(int)type;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset;
- (id)privateResultStateForPrimaryImage:(id)image secondaryImage:(id)secondaryImage sourceStates:(id)states destinationImage:(id)destinationImage commandBuffer:(id)buffer isTemporary:(BOOL)temporary;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer primaryImages:(MPSImageBatch *)primaryImages secondaryImages:(MPSImageBatch *)secondaryImages destinationStates:(MPSCNNArithmeticGradientStateBatch *)destinationStates destinationImages:(MPSImageBatch *)destinationImages;
- (void)encodeToCommandBuffer:(id)commandBuffer primaryImage:(MPSImage *)primaryImage secondaryImage:(MPSImage *)secondaryImage destinationState:(MPSCNNArithmeticGradientState *)destinationState destinationImage:(MPSImage *)destinationImage;
- (void)encodeWithCoder:(id)coder;
- (void)setPrimaryStrideInFeatureChannels:(NSUInteger)primaryStrideInFeatureChannels;
- (void)setPrimaryStrideInPixelsX:(unint64_t)x;
- (void)setPrimaryStrideInPixelsY:(unint64_t)y;
- (void)setSecondaryStrideInFeatureChannels:(NSUInteger)secondaryStrideInFeatureChannels;
- (void)setSecondaryStrideInPixelsX:(unint64_t)x;
- (void)setSecondaryStrideInPixelsY:(unint64_t)y;
@end

@implementation MPSCNNArithmetic

- (void)setPrimaryStrideInPixelsX:(unint64_t)x
{
  if (x >= 2)
  {
    v5 = MTLReportFailureTypeEnabled();
    xCopy2 = x;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure();
      selfCopy2 = self;
      xCopy2 = x;
    }

    selfCopy2->super._primaryStrideInPixelsX = xCopy2;
  }

  else
  {
    self->super._primaryStrideInPixelsX = x;
  }
}

- (void)setPrimaryStrideInPixelsY:(unint64_t)y
{
  if (y >= 2)
  {
    v5 = MTLReportFailureTypeEnabled();
    yCopy2 = y;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure();
      selfCopy2 = self;
      yCopy2 = y;
    }

    selfCopy2->super._primaryStrideInPixelsY = yCopy2;
  }

  else
  {
    self->super._primaryStrideInPixelsY = y;
  }
}

- (void)setPrimaryStrideInFeatureChannels:(NSUInteger)primaryStrideInFeatureChannels
{
  if (primaryStrideInFeatureChannels >= 2)
  {
    v5 = MTLReportFailureTypeEnabled();
    v6 = primaryStrideInFeatureChannels;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure();
      selfCopy2 = self;
      v6 = primaryStrideInFeatureChannels;
    }

    selfCopy2->_primaryStrideInFeatureChannels = v6;
  }

  else
  {
    self->_primaryStrideInFeatureChannels = primaryStrideInFeatureChannels;
  }
}

- (void)setSecondaryStrideInPixelsX:(unint64_t)x
{
  if (x >= 2)
  {
    v5 = MTLReportFailureTypeEnabled();
    xCopy2 = x;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure();
      selfCopy2 = self;
      xCopy2 = x;
    }

    selfCopy2->super._secondaryStrideInPixelsX = xCopy2;
  }

  else
  {
    self->super._secondaryStrideInPixelsX = x;
  }
}

- (void)setSecondaryStrideInPixelsY:(unint64_t)y
{
  if (y >= 2)
  {
    v5 = MTLReportFailureTypeEnabled();
    yCopy2 = y;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure();
      selfCopy2 = self;
      yCopy2 = y;
    }

    selfCopy2->super._secondaryStrideInPixelsY = yCopy2;
  }

  else
  {
    self->super._secondaryStrideInPixelsY = y;
  }
}

- (void)setSecondaryStrideInFeatureChannels:(NSUInteger)secondaryStrideInFeatureChannels
{
  if (secondaryStrideInFeatureChannels >= 2)
  {
    v5 = MTLReportFailureTypeEnabled();
    v6 = secondaryStrideInFeatureChannels;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure();
      selfCopy2 = self;
      v6 = secondaryStrideInFeatureChannels;
    }

    selfCopy2->_secondaryStrideInFeatureChannels = v6;
  }

  else
  {
    self->_secondaryStrideInFeatureChannels = secondaryStrideInFeatureChannels;
  }
}

- (MPSCNNArithmetic)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNArithmetic)initWithDevice:(id)device arithmeticType:(int)type
{
  v7.receiver = self;
  v7.super_class = MPSCNNArithmetic;
  result = [(MPSCNNBinaryKernel *)&v7 initWithDevice:device];
  if (result)
  {
    result->_primaryScale = 1.0;
    result->_secondaryScale = 1.0;
    result->_bias = 0.0;
    result->_minimumValue = -INFINITY;
    result->_maximumValue = INFINITY;
    result->_primaryStrideInFeatureChannels = 1;
    result->_secondaryStrideInFeatureChannels = 1;
    if (type >= 10)
    {
      v6 = result;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return 0;
    }

    else
    {
      result->_arithmeticType = type;
      result->super._isBackwards = 0;
      result->super._checkFlags |= 2u;
      result->super._encode = sub_239BB4830;
      result->super._batchEncode = sub_239BB4C38;
      result->super._encodeData = result;
    }
  }

  return result;
}

- (MPSCNNArithmetic)initWithCoder:(id)coder device:(id)device
{
  v62.receiver = self;
  v62.super_class = MPSCNNArithmetic;
  v5 = [(MPSCNNBinaryKernel *)&v62 initWithCoder:coder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(coder, v6, @"MPSArithmetic.primaryScale", v7, v8, v9, v10, v11);
    v12->_primaryScale = v13;
    objc_msgSend_decodeFloatForKey_(coder, v14, @"MPSArithmetic.secondaryScale", v15, v16, v17, v18, v19);
    v12->_secondaryScale = v20;
    objc_msgSend_decodeFloatForKey_(coder, v21, @"MPSArithmetic.bias", v22, v23, v24, v25, v26);
    v12->_bias = v27;
    objc_msgSend_decodeFloatForKey_(coder, v28, @"MPSArithmetic.minimumValue", v29, v30, v31, v32, v33);
    v12->_minimumValue = v34;
    objc_msgSend_decodeFloatForKey_(coder, v35, @"MPSArithmetic.maximumValue", v36, v37, v38, v39, v40);
    v12->_maximumValue = v41;
    v12->_primaryStrideInFeatureChannels = objc_msgSend_decodeInt64ForKey_(coder, v42, @"MPSArithmetic.primaryStrideInFeatureChannels", v43, v44, v45, v46, v47);
    v12->_secondaryStrideInFeatureChannels = objc_msgSend_decodeInt64ForKey_(coder, v48, @"MPSArithmetic.secondaryStrideInFeatureChannels", v49, v50, v51, v52, v53);
    v12->_arithmeticType = objc_msgSend_decodeInt64ForKey_(coder, v54, @"MPSArithmetic.arithmeticType", v55, v56, v57, v58, v59);
    v12->super._encode = sub_239BB4830;
    v12->super._batchEncode = sub_239BB4C38;
    v12->super._encodeData = v12;
    v12->super._checkFlags = 2561;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v61 = objc_opt_class();
    NSStringFromClass(v61);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v55.receiver = self;
  v55.super_class = MPSCNNArithmetic;
  [(MPSCNNBinaryKernel *)&v55 encodeWithCoder:?];
  *&v5 = self->_primaryScale;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSArithmetic.primaryScale", v7, v8, v9, v10, v11, v5);
  *&v12 = self->_secondaryScale;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"MPSArithmetic.secondaryScale", v14, v15, v16, v17, v18, v12);
  *&v19 = self->_bias;
  objc_msgSend_encodeFloat_forKey_(coder, v20, @"MPSArithmetic.bias", v21, v22, v23, v24, v25, v19);
  *&v26 = self->_minimumValue;
  objc_msgSend_encodeFloat_forKey_(coder, v27, @"MPSArithmetic.minimumValue", v28, v29, v30, v31, v32, v26);
  *&v33 = self->_maximumValue;
  objc_msgSend_encodeFloat_forKey_(coder, v34, @"MPSArithmetic.maximumValue", v35, v36, v37, v38, v39, v33);
  objc_msgSend_encodeInt64_forKey_(coder, v40, self->_primaryStrideInFeatureChannels, @"MPSArithmetic.primaryStrideInFeatureChannels", v41, v42, v43, v44);
  objc_msgSend_encodeInt64_forKey_(coder, v45, self->_secondaryStrideInFeatureChannels, @"MPSArithmetic.secondaryStrideInFeatureChannels", v46, v47, v48, v49);
  objc_msgSend_encodeInt64_forKey_(coder, v50, self->_arithmeticType, @"MPSArithmetic.arithmeticType", v51, v52, v53, v54);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSCNNArithmetic;
  result = [(MPSCNNBinaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 104) = LODWORD(self->_primaryScale);
    *(result + 105) = LODWORD(self->_secondaryScale);
    *(result + 106) = LODWORD(self->_bias);
    *(result + 107) = LODWORD(self->_minimumValue);
    *(result + 108) = LODWORD(self->_maximumValue);
    *(result + 55) = self->_primaryStrideInFeatureChannels;
    *(result + 56) = self->_secondaryStrideInFeatureChannels;
    *(result + 114) = self->_arithmeticType;
    *(result + 47) = sub_239BB4830;
    *(result + 48) = sub_239BB4C38;
    *(result + 49) = self;
    *(result + 92) = 2561;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNArithmetic;
  v4 = [(MPSCNNBinaryKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tprimaryScale: %f\n \tsecondaryScale: %f\n \tbias: %f\n \tminmumValue: %f\n \tmaximumValue: %f\n \tprimaryStrideInPixelsX: %lu\n \tprimaryStrideInPixelsY: %lu\n \tprimaryStrideInFeatureChannels: %lu\n \tsecondaryStrideInPixelsX: %lu\n \tsecondaryStrideInPixelsY: %lu\n \tsecondaryStrideInFeatureChannels: %lu\n \tarithmeticType: %lu", v6, v7, v8, v9, v10, v4, self->_primaryScale, self->_secondaryScale, self->_bias, self->_minimumValue, self->_maximumValue, self->super._primaryStrideInPixelsX, self->super._primaryStrideInPixelsY, self->_primaryStrideInFeatureChannels, self->super._secondaryStrideInPixelsX, self->super._secondaryStrideInPixelsY, self->_secondaryStrideInFeatureChannels, self->_arithmeticType);
}

- (id)privateResultStateForPrimaryImage:(id)image secondaryImage:(id)secondaryImage sourceStates:(id)states destinationImage:(id)destinationImage commandBuffer:(id)buffer isTemporary:(BOOL)temporary
{
  if (states && (*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v105 = objc_opt_class();
    v106 = NSStringFromClass(v105);
    MTLReportFailure();
  }

  v13 = objc_msgSend_width(destinationImage, a2, image, secondaryImage, states, destinationImage, buffer, temporary, v106);
  v21 = objc_msgSend_height(destinationImage, v14, v15, v16, v17, v18, v19, v20);
  v36 = objc_msgSend_featureChannels(destinationImage, v22, v23, v24, v25, v26, v27, v28) + 3;
  v37 = v36 >> 2;
  if (v36 > 7)
  {
    v39 = 3;
  }

  else
  {
    v38 = objc_msgSend_textureType(destinationImage, v29, v30, v31, v32, v33, v34, v35);
    if (v38 == 3)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    if (v38 == 3)
    {
      v37 = 1;
    }
  }

  v40 = objc_opt_new();
  objc_msgSend_setTextureType_(v40, v41, v39, v42, v43, v44, v45, v46);
  objc_msgSend_setPixelFormat_(v40, v47, 125, v48, v49, v50, v51, v52);
  if (objc_msgSend_featureChannels(destinationImage, v53, v54, v55, v56, v57, v58, v59) == 1)
  {
    objc_msgSend_setPixelFormat_(v40, v60, 55, v62, v63, v64, v65, v66);
  }

  else if (objc_msgSend_featureChannels(destinationImage, v60, v61, v62, v63, v64, v65, v66) == 2)
  {
    objc_msgSend_setPixelFormat_(v40, v67, 105, v68, v69, v70, v71, v72);
  }

  objc_msgSend_setWidth_(v40, v67, v13, v68, v69, v70, v71, v72);
  objc_msgSend_setHeight_(v40, v73, v21, v74, v75, v76, v77, v78);
  objc_msgSend_setArrayLength_(v40, v79, v37, v80, v81, v82, v83, v84);
  if (temporary)
  {
    v90 = objc_msgSend_temporaryStateWithCommandBuffer_textureDescriptor_(MPSCNNArithmeticGradientState, v85, buffer, v40, v86, v87, v88, v89);
    if (!v90)
    {
      return v90;
    }

    goto LABEL_18;
  }

  v91 = [MPSCNNArithmeticGradientState alloc];
  v90 = objc_msgSend_initWithDevice_textureDescriptor_(v91, v92, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v40, v93, v94, v95, v96);
  if (v90)
  {
LABEL_18:
    v109.receiver = self;
    v109.super_class = MPSCNNArithmetic;
    [(MPSCNNBinaryKernel *)&v109 copyToBinaryGradientState:v90 primaryImage:image secondaryImage:secondaryImage sourceStates:states destinationImage:destinationImage];
    v90[53] = objc_msgSend_pixelFormat(v40, v97, v98, v99, v100, v101, v102, v103);
    v90[54] = v13;
    v90[55] = v21;
    v90[56] = v37;
    v90[57] = self->_primaryStrideInFeatureChannels;
    v90[58] = self->_secondaryStrideInFeatureChannels;
  }

  return v90;
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset
{
  v12 = objc_msgSend_count(images, a2, images, states, method, offset, secondaryOffset, kernelOffset);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && v12 <= 1 && MTLReportFailureTypeEnabled())
  {
    v86 = objc_opt_class();
    v87 = NSStringFromClass(v86);
    MTLReportFailure();
  }

  v19 = objc_msgSend_objectAtIndexedSubscript_(images, v13, 0, v14, v15, v16, v17, v18, v87);
  v26 = objc_msgSend_objectAtIndexedSubscript_(images, v20, 1, v21, v22, v23, v24, v25);
  v33 = objc_msgSend_objectAtIndexedSubscript_(images, v27, 0, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_primarySourceFeatureChannelOffset(self, v34, v35, v36, v37, v38, v39, v40);
  v49 = objc_msgSend_primarySourceFeatureChannelMaxCount(self, v42, v43, v44, v45, v46, v47, v48);
  v56 = MEMORY[0x277CD72F8];
  v57 = *(v33 + *MEMORY[0x277CD72F8]);
  v58 = v57 >= v41;
  v59 = v57 - v41;
  if (!v58)
  {
    v59 = 0;
  }

  if (v59 >= v49)
  {
    v60 = v49;
  }

  else
  {
    v60 = v59;
  }

  v61 = objc_msgSend_objectAtIndexedSubscript_(images, v50, 1, v51, v52, v53, v54, v55);
  v69 = objc_msgSend_secondarySourceFeatureChannelOffset(self, v62, v63, v64, v65, v66, v67, v68);
  v77 = objc_msgSend_secondarySourceFeatureChannelMaxCount(self, v70, v71, v72, v73, v74, v75, v76);
  v78 = *v56;
  v79 = *(v61 + v78);
  v58 = v79 >= v69;
  v80 = v79 - v69;
  if (!v58)
  {
    v80 = 0;
  }

  if (v80 >= v77)
  {
    v80 = v77;
  }

  if (v60 <= 1 && *(v26 + v78) >= 2uLL)
  {
    self->_primaryStrideInFeatureChannels = 0;
  }

  if (v80 <= 1 && *(v19 + *v56) >= 2uLL)
  {
    self->_secondaryStrideInFeatureChannels = 0;
  }

  v81 = MEMORY[0x277CD7330];
  v82 = *MEMORY[0x277CD7330];
  if (*(v19 + v82) <= 1uLL && *(v26 + v82) >= 2uLL)
  {
    self->super._primaryStrideInPixelsX = 0;
    v82 = *v81;
  }

  if (*(v26 + v82) <= 1uLL && *(v19 + v82) >= 2uLL)
  {
    self->super._secondaryStrideInPixelsX = 0;
  }

  v83 = MEMORY[0x277CD7308];
  v84 = *MEMORY[0x277CD7308];
  if (*(v19 + v84) <= 1uLL && *(v26 + v84) >= 2uLL)
  {
    self->super._primaryStrideInPixelsY = 0;
    v84 = *v83;
  }

  if (*(v26 + v84) <= 1uLL && *(v19 + v84) >= 2uLL)
  {
    self->super._secondaryStrideInPixelsY = 0;
  }

  v91.receiver = self;
  v91.super_class = MPSCNNArithmetic;
  return [(MPSCNNBinaryKernel *)&v91 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method primaryOffset:offset secondaryOffset:secondaryOffset kernelOffset:kernelOffset];
}

- (void)encodeToCommandBuffer:(id)commandBuffer primaryImage:(MPSImage *)primaryImage secondaryImage:(MPSImage *)secondaryImage destinationState:(MPSCNNArithmeticGradientState *)destinationState destinationImage:(MPSImage *)destinationImage
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    selfCopy = self;
    v11 = commandBuffer;
    v12 = primaryImage;
    v13 = secondaryImage;
    v14 = destinationImage;
    if (!destinationState && MTLReportFailureTypeEnabled())
    {
      v16 = objc_opt_class();
      NSStringFromClass(v16);
      NSStringFromSelector(a2);
      MTLReportFailure();
    }

    objc_opt_class();
    objc_opt_isKindOfClass();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    destinationImage = v14;
    secondaryImage = v13;
    primaryImage = v12;
    commandBuffer = v11;
    self = selfCopy;
    if ((isKindOfClass & 1) == 0)
    {
      v17 = MTLReportFailureTypeEnabled();
      commandBuffer = v11;
      primaryImage = v12;
      secondaryImage = v13;
      destinationImage = v14;
      v18 = v17;
      self = selfCopy;
      if (v18)
      {
        v19 = objc_opt_class();
        NSStringFromClass(v19);
        NSStringFromSelector(a2);
        MTLReportFailure();
        self = selfCopy;
        commandBuffer = v11;
        primaryImage = v12;
        secondaryImage = v13;
        destinationImage = v14;
      }
    }
  }

  MEMORY[0x2821F9670](self, sel_encodeToCommandBuffer_primaryImage_secondaryImage_inState_destinationImage_, commandBuffer, primaryImage, secondaryImage, destinationState, destinationImage, v7);
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer primaryImages:(MPSImageBatch *)primaryImages secondaryImages:(MPSImageBatch *)secondaryImages destinationStates:(MPSCNNArithmeticGradientStateBatch *)destinationStates destinationImages:(MPSImageBatch *)destinationImages
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    selfCopy = self;
    v11 = commandBuffer;
    v12 = primaryImages;
    v13 = secondaryImages;
    v14 = destinationImages;
    if (!destinationStates && MTLReportFailureTypeEnabled())
    {
      v22 = objc_opt_class();
      v26 = NSStringFromClass(v22);
      v27 = NSStringFromSelector(a2);
      MTLReportFailure();
    }

    objc_msgSend_objectAtIndexedSubscript_(destinationStates, a2, 0, primaryImages, secondaryImages, destinationStates, destinationImages, v7, v26, v27);
    objc_opt_class();
    objc_opt_isKindOfClass();
    objc_msgSend_objectAtIndexedSubscript_(destinationStates, v15, 0, v16, v17, v18, v19, v20);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    destinationImages = v14;
    secondaryImages = v13;
    primaryImages = v12;
    commandBuffer = v11;
    self = selfCopy;
    if ((isKindOfClass & 1) == 0)
    {
      v23 = MTLReportFailureTypeEnabled();
      commandBuffer = v11;
      primaryImages = v12;
      secondaryImages = v13;
      destinationImages = v14;
      v24 = v23;
      self = selfCopy;
      if (v24)
      {
        v25 = objc_opt_class();
        NSStringFromClass(v25);
        NSStringFromSelector(a2);
        MTLReportFailure();
        self = selfCopy;
        commandBuffer = v11;
        primaryImages = v12;
        secondaryImages = v13;
        destinationImages = v14;
      }
    }
  }

  objc_msgSend_encodeBatchToCommandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, a2, commandBuffer, primaryImages, secondaryImages, destinationStates, destinationImages, v7);
}

@end