@interface MPSCNNUpsampling
- (MPSCNNUpsampling)initWithCoder:(id)a3 device:(id)a4;
- (MPSCNNUpsampling)initWithDevice:(id)a3 filterType:(unint64_t)a4 integerScaleFactorX:(unint64_t)a5 integerScaleFactorY:(unint64_t)a6 alignCorners:(BOOL)a7;
- (MPSCNNUpsampling)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNUpsampling

- (MPSCNNUpsampling)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNUpsampling)initWithDevice:(id)a3 filterType:(unint64_t)a4 integerScaleFactorX:(unint64_t)a5 integerScaleFactorY:(unint64_t)a6 alignCorners:(BOOL)a7
{
  v27.receiver = self;
  v27.super_class = MPSCNNUpsampling;
  result = [(MPSCNNKernel *)&v27 initWithDevice:a3];
  if (result)
  {
    if (a5)
    {
      result->_scaleFactorX = a5;
      if (a6)
      {
        result->_scaleFactorY = a6;
        if (a4 < 2)
        {
          result->_filterType = a4;
          result->super._isBackwards = 1;
          result->super._strideInPixelsX = a5;
          result->super._strideInPixelsY = a6;
          result->_alignCorners = a7;
          v18 = result;
          v19 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v12, 28, v13, v14, v15, v16, v17);
          objc_msgSend_setPadding_(v18, v20, v19, v21, v22, v23, v24, v25);
          result = v18;
          v18->super._checkFlags |= 2u;
          v18->super._encode = sub_239BEDC70;
          v18->super._batchEncode = sub_239BEDEFC;
          v18->super._encodeData = v18;
          return result;
        }

        v26 = result;
        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_12;
        }

LABEL_13:

        return 0;
      }

      v26 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_13;
      }
    }

    else
    {
      v26 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    MTLReportFailure();
    goto LABEL_13;
  }

  return result;
}

- (MPSCNNUpsampling)initWithCoder:(id)a3 device:(id)a4
{
  v35.receiver = self;
  v35.super_class = MPSCNNUpsampling;
  v5 = [(MPSCNNKernel *)&v35 initWithCoder:a3 device:a4];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_filterType = objc_msgSend_decodeInt64ForKey_(a3, v6, @"MPSCNNUpsampling.filterType", v7, v8, v9, v10, v11);
    objc_msgSend_decodeDoubleForKey_(a3, v13, @"MPSCNNUpsampling.scaleFactorX", v14, v15, v16, v17, v18);
    v12->_scaleFactorX = v19;
    objc_msgSend_decodeDoubleForKey_(a3, v20, @"MPSCNNUpsampling.scaleFactorY", v21, v22, v23, v24, v25);
    v12->_scaleFactorY = v26;
    v12->_alignCorners = objc_msgSend_decodeBoolForKey_(a3, v27, @"MPSCNNUpsampling.alignCorners", v28, v29, v30, v31, v32);
    v12->super._checkFlags |= 2u;
    v12->super._encode = sub_239BEDC70;
    v12->super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v34 = objc_opt_class();
    NSStringFromClass(v34);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v27.receiver = self;
  v27.super_class = MPSCNNUpsampling;
  [(MPSCNNKernel *)&v27 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_filterType, @"MPSCNNUpsampling.filterType", v6, v7, v8, v9);
  objc_msgSend_encodeDouble_forKey_(a3, v10, @"MPSCNNUpsampling.scaleFactorX", v11, v12, v13, v14, v15, self->_scaleFactorX);
  objc_msgSend_encodeDouble_forKey_(a3, v16, @"MPSCNNUpsampling.scaleFactorY", v17, v18, v19, v20, v21, self->_scaleFactorY);
  objc_msgSend_encodeBool_forKey_(a3, v22, self->_alignCorners, @"MPSCNNUpsampling.alignCorners", v23, v24, v25, v26);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSCNNUpsampling;
  result = [(MPSCNNKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 41) = self->_filterType;
    *(result + 42) = *&self->_scaleFactorX;
    *(result + 43) = *&self->_scaleFactorY;
    *(result + 352) = self->_alignCorners;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v29.receiver = self;
  v29.super_class = MPSCNNUpsampling;
  v4 = [(MPSCNNKernel *)&v29 debugDescription];
  objc_msgSend_scaleFactorX(self, v5, v6, v7, v8, v9, v10, v11);
  v13 = v12;
  objc_msgSend_scaleFactorY(self, v14, v15, v16, v17, v18, v19, v20);
  return objc_msgSend_stringWithFormat_(v3, v21, @"%@\n\tscaleFactorX: %f\tscaleFactorY: %f", v22, v23, v24, v25, v26, v4, v13, v27);
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6
{
  v46.receiver = self;
  v46.super_class = MPSCNNUpsampling;
  v8 = [(MPSCNNKernel *)&v46 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 sourceOffset:a6];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v9, 0, v10, v11, v12, v13, v14);
  if (v15)
  {
    v23 = v15;
    v24 = objc_msgSend_width(v15, v16, v17, v18, v19, v20, v21, v22);
    objc_msgSend_setWidth_(v8, v25, llround(fmax(self->_scaleFactorX * v24, 0.0)), v26, v27, v28, v29, v30);
    v38 = objc_msgSend_height(v23, v31, v32, v33, v34, v35, v36, v37);
    objc_msgSend_setHeight_(v8, v39, llround(fmax(self->_scaleFactorY * v38, 0.0)), v40, v41, v42, v43, v44);
  }

  return v8;
}

@end