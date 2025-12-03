@interface MPSCNNUpsamplingGradient
- (MPSCNNUpsamplingGradient)initWithCoder:(id)coder device:(id)device;
- (MPSCNNUpsamplingGradient)initWithDevice:(id)device;
- (MPSCNNUpsamplingGradient)initWithDevice:(id)device filterType:(unint64_t)type integerScaleFactorX:(unint64_t)x integerScaleFactorY:(unint64_t)y;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNUpsamplingGradient

- (MPSCNNUpsamplingGradient)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNUpsamplingGradient)initWithDevice:(id)device filterType:(unint64_t)type integerScaleFactorX:(unint64_t)x integerScaleFactorY:(unint64_t)y
{
  v12.receiver = self;
  v12.super_class = MPSCNNUpsamplingGradient;
  result = [(MPSCNNGradientKernel *)&v12 initWithDevice:device];
  if (!result)
  {
    return result;
  }

  if (!x)
  {
    v10 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  result->_scaleFactorX = x;
  if (!y)
  {
    v10 = result;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_12:
      MTLReportFailure();
    }

LABEL_13:

    return 0;
  }

  result->_scaleFactorY = y;
  if (type >= 2)
  {
    v11 = result;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return 0;
  }

  else
  {
    result->_filterType = type;
    if (type == 1)
    {
      result->super.super._secondaryKernelWidth = 2;
      result->super.super._secondaryKernelHeight = 2;
    }

    result->super.super._checkFlags |= 2u;
    result->super.super._encode = sub_239CF541C;
    result->super.super._batchEncode = sub_239CF56D8;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSCNNUpsamplingGradient)initWithCoder:(id)coder device:(id)device
{
  v29.receiver = self;
  v29.super_class = MPSCNNUpsamplingGradient;
  v5 = [(MPSCNNGradientKernel *)&v29 initWithCoder:coder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_filterType = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSCNNUpsamplingGradient.filterType", v7, v8, v9, v10, v11);
    objc_msgSend_decodeDoubleForKey_(coder, v13, @"MPSCNNUpsamplingGradient.scaleFactorX", v14, v15, v16, v17, v18);
    v12->_scaleFactorX = v19;
    objc_msgSend_decodeDoubleForKey_(coder, v20, @"MPSCNNUpsamplingGradient.scaleFactorY", v21, v22, v23, v24, v25);
    v12->_scaleFactorY = v26;
    v12->super.super._checkFlags |= 2u;
    v12->super.super._encode = sub_239CF541C;
    v12->super.super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v28 = objc_opt_class();
    NSStringFromClass(v28);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v22.receiver = self;
  v22.super_class = MPSCNNUpsamplingGradient;
  [(MPSCNNGradientKernel *)&v22 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_filterType, @"MPSCNNUpsamplingGradient.filterType", v6, v7, v8, v9);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"MPSCNNUpsamplingGradient.scaleFactorX", v11, v12, v13, v14, v15, self->_scaleFactorX);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"MPSCNNUpsamplingGradient.scaleFactorY", v17, v18, v19, v20, v21, self->_scaleFactorY);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSCNNUpsamplingGradient;
  result = [(MPSCNNGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 54) = self->_filterType;
    *(result + 55) = *&self->_scaleFactorX;
    *(result + 56) = *&self->_scaleFactorY;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v29.receiver = self;
  v29.super_class = MPSCNNUpsamplingGradient;
  v4 = [(MPSCNNBinaryKernel *)&v29 debugDescription];
  objc_msgSend_scaleFactorX(self, v5, v6, v7, v8, v9, v10, v11);
  v13 = v12;
  objc_msgSend_scaleFactorY(self, v14, v15, v16, v17, v18, v19, v20);
  return objc_msgSend_stringWithFormat_(v3, v21, @"%@\n\tscaleFactorX: %f\tscaleFactorY: %f", v22, v23, v24, v25, v26, v4, v13, v27);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states
{
  v44.receiver = self;
  v44.super_class = MPSCNNUpsamplingGradient;
  v6 = [(MPSCNNGradientKernel *)&v44 destinationImageDescriptorForSourceImages:images sourceStates:states];
  v13 = objc_msgSend_objectAtIndexedSubscript_(images, v7, 0, v8, v9, v10, v11, v12);
  if (v13)
  {
    v21 = v13;
    v22 = objc_msgSend_width(v13, v14, v15, v16, v17, v18, v19, v20);
    objc_msgSend_setWidth_(v6, v23, llround(fmax(v22 / self->_scaleFactorX, 0.0)), v24, v25, v26, v27, v28);
    v36 = objc_msgSend_height(v21, v29, v30, v31, v32, v33, v34, v35);
    objc_msgSend_setHeight_(v6, v37, llround(fmax(v36 / self->_scaleFactorY, 0.0)), v38, v39, v40, v41, v42);
  }

  return v6;
}

@end