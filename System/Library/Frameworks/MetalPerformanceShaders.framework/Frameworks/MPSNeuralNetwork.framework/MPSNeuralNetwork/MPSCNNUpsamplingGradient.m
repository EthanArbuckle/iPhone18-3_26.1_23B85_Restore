@interface MPSCNNUpsamplingGradient
- (MPSCNNUpsamplingGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSCNNUpsamplingGradient)initWithDevice:(id)a3 filterType:(unint64_t)a4 integerScaleFactorX:(unint64_t)a5 integerScaleFactorY:(unint64_t)a6;
- (MPSCNNUpsamplingGradient)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4;
- (void)encodeWithCoder:(id)a3;
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

- (MPSCNNUpsamplingGradient)initWithDevice:(id)a3 filterType:(unint64_t)a4 integerScaleFactorX:(unint64_t)a5 integerScaleFactorY:(unint64_t)a6
{
  v12.receiver = self;
  v12.super_class = MPSCNNUpsamplingGradient;
  result = [(MPSCNNGradientKernel *)&v12 initWithDevice:a3];
  if (!result)
  {
    return result;
  }

  if (!a5)
  {
    v10 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  result->_scaleFactorX = a5;
  if (!a6)
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

  result->_scaleFactorY = a6;
  if (a4 >= 2)
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
    result->_filterType = a4;
    if (a4 == 1)
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

- (MPSCNNUpsamplingGradient)initWithCoder:(id)a3 device:(id)a4
{
  v29.receiver = self;
  v29.super_class = MPSCNNUpsamplingGradient;
  v5 = [(MPSCNNGradientKernel *)&v29 initWithCoder:a3 device:a4];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_filterType = objc_msgSend_decodeInt64ForKey_(a3, v6, @"MPSCNNUpsamplingGradient.filterType", v7, v8, v9, v10, v11);
    objc_msgSend_decodeDoubleForKey_(a3, v13, @"MPSCNNUpsamplingGradient.scaleFactorX", v14, v15, v16, v17, v18);
    v12->_scaleFactorX = v19;
    objc_msgSend_decodeDoubleForKey_(a3, v20, @"MPSCNNUpsamplingGradient.scaleFactorY", v21, v22, v23, v24, v25);
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

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v22.receiver = self;
  v22.super_class = MPSCNNUpsamplingGradient;
  [(MPSCNNGradientKernel *)&v22 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_filterType, @"MPSCNNUpsamplingGradient.filterType", v6, v7, v8, v9);
  objc_msgSend_encodeDouble_forKey_(a3, v10, @"MPSCNNUpsamplingGradient.scaleFactorX", v11, v12, v13, v14, v15, self->_scaleFactorX);
  objc_msgSend_encodeDouble_forKey_(a3, v16, @"MPSCNNUpsamplingGradient.scaleFactorY", v17, v18, v19, v20, v21, self->_scaleFactorY);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSCNNUpsamplingGradient;
  result = [(MPSCNNGradientKernel *)&v6 copyWithZone:a3 device:a4];
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

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4
{
  v44.receiver = self;
  v44.super_class = MPSCNNUpsamplingGradient;
  v6 = [(MPSCNNGradientKernel *)&v44 destinationImageDescriptorForSourceImages:a3 sourceStates:a4];
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v7, 0, v8, v9, v10, v11, v12);
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