@interface MPSCNNUpsampling
- (MPSCNNUpsampling)initWithCoder:(id)coder device:(id)device;
- (MPSCNNUpsampling)initWithDevice:(id)device;
- (MPSCNNUpsampling)initWithDevice:(id)device filterType:(unint64_t)type integerScaleFactorX:(unint64_t)x integerScaleFactorY:(unint64_t)y alignCorners:(BOOL)corners;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset;
- (void)encodeWithCoder:(id)coder;
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

- (MPSCNNUpsampling)initWithDevice:(id)device filterType:(unint64_t)type integerScaleFactorX:(unint64_t)x integerScaleFactorY:(unint64_t)y alignCorners:(BOOL)corners
{
  v27.receiver = self;
  v27.super_class = MPSCNNUpsampling;
  result = [(MPSCNNKernel *)&v27 initWithDevice:device];
  if (result)
  {
    if (x)
    {
      result->_scaleFactorX = x;
      if (y)
      {
        result->_scaleFactorY = y;
        if (type < 2)
        {
          result->_filterType = type;
          result->super._isBackwards = 1;
          result->super._strideInPixelsX = x;
          result->super._strideInPixelsY = y;
          result->_alignCorners = corners;
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

- (MPSCNNUpsampling)initWithCoder:(id)coder device:(id)device
{
  v35.receiver = self;
  v35.super_class = MPSCNNUpsampling;
  v5 = [(MPSCNNKernel *)&v35 initWithCoder:coder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_filterType = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSCNNUpsampling.filterType", v7, v8, v9, v10, v11);
    objc_msgSend_decodeDoubleForKey_(coder, v13, @"MPSCNNUpsampling.scaleFactorX", v14, v15, v16, v17, v18);
    v12->_scaleFactorX = v19;
    objc_msgSend_decodeDoubleForKey_(coder, v20, @"MPSCNNUpsampling.scaleFactorY", v21, v22, v23, v24, v25);
    v12->_scaleFactorY = v26;
    v12->_alignCorners = objc_msgSend_decodeBoolForKey_(coder, v27, @"MPSCNNUpsampling.alignCorners", v28, v29, v30, v31, v32);
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

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v27.receiver = self;
  v27.super_class = MPSCNNUpsampling;
  [(MPSCNNKernel *)&v27 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_filterType, @"MPSCNNUpsampling.filterType", v6, v7, v8, v9);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"MPSCNNUpsampling.scaleFactorX", v11, v12, v13, v14, v15, self->_scaleFactorX);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"MPSCNNUpsampling.scaleFactorY", v17, v18, v19, v20, v21, self->_scaleFactorY);
  objc_msgSend_encodeBool_forKey_(coder, v22, self->_alignCorners, @"MPSCNNUpsampling.alignCorners", v23, v24, v25, v26);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSCNNUpsampling;
  result = [(MPSCNNKernel *)&v6 copyWithZone:zone device:device];
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

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset
{
  v46.receiver = self;
  v46.super_class = MPSCNNUpsampling;
  v8 = [(MPSCNNKernel *)&v46 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method sourceOffset:offset];
  v15 = objc_msgSend_objectAtIndexedSubscript_(images, v9, 0, v10, v11, v12, v13, v14);
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