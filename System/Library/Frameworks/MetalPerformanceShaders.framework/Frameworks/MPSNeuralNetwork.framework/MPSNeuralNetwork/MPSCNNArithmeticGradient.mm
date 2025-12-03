@interface MPSCNNArithmeticGradient
- (MPSCNNArithmeticGradient)initWithCoder:(id)coder device:(id)device;
- (MPSCNNArithmeticGradient)initWithDevice:(id)device;
- (MPSCNNArithmeticGradient)initWithDevice:(id)device arithmeticType:(int)type isSecondarySourceFilter:(BOOL)filter;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setSecondaryStrideInFeatureChannels:(NSUInteger)secondaryStrideInFeatureChannels;
- (void)setSecondaryStrideInPixelsX:(unint64_t)x;
- (void)setSecondaryStrideInPixelsY:(unint64_t)y;
@end

@implementation MPSCNNArithmeticGradient

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

    selfCopy2->super.super._secondaryStrideInPixelsX = xCopy2;
  }

  else
  {
    self->super.super._secondaryStrideInPixelsX = x;
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

    selfCopy2->super.super._secondaryStrideInPixelsY = yCopy2;
  }

  else
  {
    self->super.super._secondaryStrideInPixelsY = y;
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

- (MPSCNNArithmeticGradient)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNArithmeticGradient)initWithDevice:(id)device arithmeticType:(int)type isSecondarySourceFilter:(BOOL)filter
{
  v33.receiver = self;
  v33.super_class = MPSCNNArithmeticGradient;
  result = [(MPSCNNGradientKernel *)&v33 initWithDevice:?];
  if (result)
  {
    result->_primaryScale = 1.0;
    result->_secondaryScale = 1.0;
    result->_bias = 0.0;
    result->_minimumValue = -INFINITY;
    result->_maximumValue = INFINITY;
    result->super.super._secondaryStrideInPixelsX = 1;
    result->super.super._secondaryStrideInPixelsY = 1;
    result->_secondaryStrideInFeatureChannels = 1;
    result->_isSecondarySourceFilter = filter;
    if (type >= 10)
    {
      v32 = result;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return 0;
    }

    else
    {
      result->_arithmeticType = type;
      v9 = result;
      v10 = [MPSNNReduceRowSum alloc];
      v9->_reduceRows = objc_msgSend_initWithDevice_(v10, v11, device, v12, v13, v14, v15, v16);
      v17 = [MPSNNReduceColumnSum alloc];
      v9->_reduceColumns = objc_msgSend_initWithDevice_(v17, v18, device, v19, v20, v21, v22, v23);
      v24 = [MPSNNReduceFeatureChannelsSum alloc];
      v31 = objc_msgSend_initWithDevice_(v24, v25, device, v26, v27, v28, v29, v30);
      result = v9;
      v9->_reduceFeatureChannels = v31;
      v9->super.super._isBackwards = 0;
      v9->super.super._checkFlags |= 2u;
      v9->super.super._encode = sub_239BB632C;
      v9->super.super._encodeData = v9;
    }
  }

  return result;
}

- (MPSCNNArithmeticGradient)initWithCoder:(id)coder device:(id)device
{
  v84.receiver = self;
  v84.super_class = MPSCNNArithmeticGradient;
  v6 = [MPSCNNGradientKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (!v6)
  {
    return v13;
  }

  if (*(&v6->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(coder, v7, @"MPSArithmetic.primaryScale", v8, v9, v10, v11, v12);
    v13->_primaryScale = v14;
    objc_msgSend_decodeFloatForKey_(coder, v15, @"MPSArithmetic.secondaryScale", v16, v17, v18, v19, v20);
    v13->_secondaryScale = v21;
    objc_msgSend_decodeFloatForKey_(coder, v22, @"MPSArithmetic.bias", v23, v24, v25, v26, v27);
    v13->_bias = v28;
    objc_msgSend_decodeFloatForKey_(coder, v29, @"MPSArithmetic.minimumValue", v30, v31, v32, v33, v34);
    v13->_minimumValue = v35;
    objc_msgSend_decodeFloatForKey_(coder, v36, @"MPSArithmetic.maximumValue", v37, v38, v39, v40, v41);
    v13->_maximumValue = v42;
    v13->_secondaryStrideInFeatureChannels = objc_msgSend_decodeInt64ForKey_(coder, v43, @"MPSArithmetic.secondaryStrideInFeatureChannels", v44, v45, v46, v47, v48);
    v13->_isSecondarySourceFilter = objc_msgSend_decodeBoolForKey_(coder, v49, @"MPSArithmetic.isSecondarySourceFilter", v50, v51, v52, v53, v54);
    v13->_arithmeticType = objc_msgSend_decodeInt64ForKey_(coder, v55, @"MPSArithmetic.arithmeticType", v56, v57, v58, v59, v60);
    v61 = [MPSNNReduceRowSum alloc];
    v13->_reduceRows = objc_msgSend_initWithDevice_(v61, v62, device, v63, v64, v65, v66, v67);
    v68 = [MPSNNReduceColumnSum alloc];
    v13->_reduceColumns = objc_msgSend_initWithDevice_(v68, v69, device, v70, v71, v72, v73, v74);
    v75 = [MPSNNReduceFeatureChannelsSum alloc];
    v13->_reduceFeatureChannels = objc_msgSend_initWithDevice_(v75, v76, device, v77, v78, v79, v80, v81);
    v13->super.super._encode = sub_239BB632C;
    v13->super.super._encodeData = v13;
    v13->super.super._checkFlags = 2561;
    return v13;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v83 = objc_opt_class();
    NSStringFromClass(v83);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v55.receiver = self;
  v55.super_class = MPSCNNArithmeticGradient;
  [(MPSCNNGradientKernel *)&v55 encodeWithCoder:?];
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
  objc_msgSend_encodeInt64_forKey_(coder, v40, self->_secondaryStrideInFeatureChannels, @"MPSArithmetic.secondaryStrideInFeatureChannels", v41, v42, v43, v44);
  objc_msgSend_encodeBool_forKey_(coder, v45, self->_isSecondarySourceFilter, @"MPSArithmetic.isSecondarySourceFilter", v46, v47, v48, v49);
  objc_msgSend_encodeInt64_forKey_(coder, v50, self->_arithmeticType, @"MPSArithmetic.arithmeticType", v51, v52, v53, v54);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v28.receiver = self;
  v28.super_class = MPSCNNArithmeticGradient;
  v6 = [(MPSCNNGradientKernel *)&v28 copyWithZone:zone device:device];
  v12 = v6;
  if (v6)
  {
    v6[108] = LODWORD(self->_primaryScale);
    v6[109] = LODWORD(self->_secondaryScale);
    v6[110] = LODWORD(self->_bias);
    v6[111] = LODWORD(self->_minimumValue);
    v6[112] = LODWORD(self->_maximumValue);
    *(v6 + 36) = self->super.super._secondaryStrideInPixelsX;
    *(v6 + 37) = self->super.super._secondaryStrideInPixelsY;
    *(v6 + 57) = self->_secondaryStrideInFeatureChannels;
    *(v6 + 468) = self->_isSecondarySourceFilter;
    v6[116] = self->_arithmeticType;
    v13 = *MEMORY[0x277CD7350];
    v14 = *(*(v6 + v13) + 16);
    reduceRows = self->_reduceRows;
    if ((*(&self->super.super.super.super.isa + v13))[2] == v14)
    {
      v12[59] = reduceRows;
      v12[60] = self->_reduceColumns;
      v26 = self->_reduceFeatureChannels;
    }

    else
    {
      v12[59] = objc_msgSend_copyWithZone_device_(reduceRows, v7, zone, *(*(v12 + v13) + 16), v8, v9, v10, v11);
      v12[60] = objc_msgSend_copyWithZone_device_(self->_reduceColumns, v16, zone, v14, v17, v18, v19, v20);
      v26 = objc_msgSend_copyWithZone_device_(self->_reduceFeatureChannels, v21, zone, v14, v22, v23, v24, v25);
    }

    v12[61] = v26;
    v12[47] = sub_239BB632C;
    v12[49] = self;
    *(v12 + 92) = 2561;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNArithmeticGradient;
  [(MPSCNNBinaryKernel *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNArithmeticGradient;
  v4 = [(MPSCNNBinaryKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tprimaryScale: %f\n \tsecondaryScale: %f\n \tbias: %f\n \tminmumValue: %f\n \tmaximumValue: %f\n \tprimaryStrideInPixelsX: %lu\n \tprimaryStrideInPixelsY: %lu\n \tsecondaryStrideInPixelsX: %lu\n \tsecondaryStrideInPixelsY: %lu\n \tsecondaryStrideInFeatureChannels: %lu\n \tisSecondarySourceFilter: %d\n \tarithmeticType: %lu", v6, v7, v8, v9, v10, v4, self->_primaryScale, self->_secondaryScale, self->_bias, self->_minimumValue, self->_maximumValue, self->super.super._primaryStrideInPixelsX, self->super.super._primaryStrideInPixelsY, self->super.super._secondaryStrideInPixelsX, self->super.super._secondaryStrideInPixelsY, self->_secondaryStrideInFeatureChannels, self->_isSecondarySourceFilter, self->_arithmeticType);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset
{
  v15 = objc_msgSend_count(images, a2, images, states, method, offset, secondaryOffset, kernelOffset);
  if ((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && v15 <= 1 && MTLReportFailureTypeEnabled())
  {
    v66 = objc_opt_class();
    v67 = NSStringFromClass(v66);
    MTLReportFailure();
  }

  v22 = objc_msgSend_objectAtIndexedSubscript_(images, v16, 0, v17, v18, v19, v20, v21, v67);
  v29 = objc_msgSend_objectAtIndexedSubscript_(images, v23, 1, v24, v25, v26, v27, v28);
  v37 = MEMORY[0x277CD72F8];
  v38 = *(v29 + *MEMORY[0x277CD72F8]);
  if (states)
  {
    if (objc_msgSend_count(states, v30, v31, v32, v33, v34, v35, v36))
    {
      objc_msgSend_objectAtIndexedSubscript_(states, v30, 0, v32, v33, v34, v35, v36);
      objc_opt_class();
      v37 = MEMORY[0x277CD72F8];
      if (objc_opt_isKindOfClass())
      {
        v39 = objc_msgSend_objectAtIndexedSubscript_(states, v30, 0, v32, v33, v34, v35, v36);
        if (self->_isSecondarySourceFilter)
        {
          v40 = &OBJC_IVAR___MPSNNBinaryGradientState__secondarySourceFeatureChannels;
        }

        else
        {
          v40 = &OBJC_IVAR___MPSNNBinaryGradientState__primarySourceFeatureChannels;
        }

        v38 = *(v39 + *v40);
      }
    }
  }

  if (v38 <= 1 && *(v22 + *v37) >= 2uLL)
  {
    self->_secondaryStrideInFeatureChannels = 0;
  }

  if (states)
  {
    v41 = objc_msgSend_objectAtIndexedSubscript_(states, v30, 0, v32, v33, v34, v35, v36);
    objc_msgSend_readBinaryGradientState_isSecondarySourceFilter_(self, v42, v41, self->_isSecondarySourceFilter, v43, v44, v45, v46);
    objc_msgSend_objectAtIndexedSubscript_(states, v47, 0, v48, v49, v50, v51, v52);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = objc_msgSend_objectAtIndexedSubscript_(states, v53, 0, v54, v55, v56, v57, v58);
      isSecondarySourceFilter = self->_isSecondarySourceFilter;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v62 = 2;
      if ((isKindOfClass ^ isSecondarySourceFilter))
      {
        v62 = 3;
        v63 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryStrideInPixelsX;
      }

      else
      {
        v63 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryStrideInPixelsX;
      }

      self->_secondaryStrideInFeatureChannels = *(v59 + OBJC_IVAR___MPSCNNArithmeticGradientState__resourcePixelFormat[v62]);
      if ((isKindOfClass ^ isSecondarySourceFilter))
      {
        v64 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryStrideInPixelsY;
      }

      else
      {
        v64 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryStrideInPixelsY;
      }

      self->super.super._secondaryStrideInPixelsX = *(v59 + *v63);
      self->super.super._secondaryStrideInPixelsY = *(v59 + *v64);
    }
  }

  v68.receiver = self;
  v68.super_class = MPSCNNArithmeticGradient;
  return [(MPSCNNBinaryKernel *)&v68 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method primaryOffset:offset secondaryOffset:secondaryOffset kernelOffset:kernelOffset];
}

@end