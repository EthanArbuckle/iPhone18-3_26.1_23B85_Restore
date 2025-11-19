@interface MPSNNResizeBilinear
- (MPSNNResizeBilinear)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNResizeBilinear)initWithDevice:(id)device resizeWidth:(NSUInteger)resizeWidth resizeHeight:(NSUInteger)resizeHeight alignCorners:(BOOL)alignCorners;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNResizeBilinear

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6
{
  v21.receiver = self;
  v21.super_class = MPSNNResizeBilinear;
  v7 = [(MPSCNNKernel *)&v21 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 sourceOffset:a6];
  objc_msgSend_setWidth_(v7, v8, self->_resizeWidth, v9, v10, v11, v12, v13);
  objc_msgSend_setHeight_(v7, v14, self->_resizeHeight, v15, v16, v17, v18, v19);
  return v7;
}

- (MPSNNResizeBilinear)initWithDevice:(id)device resizeWidth:(NSUInteger)resizeWidth resizeHeight:(NSUInteger)resizeHeight alignCorners:(BOOL)alignCorners
{
  v11.receiver = self;
  v11.super_class = MPSNNResizeBilinear;
  result = [(MPSCNNKernel *)&v11 initWithDevice:device];
  if (result)
  {
    if (resizeWidth)
    {
      if (resizeHeight)
      {
        result->_resizeWidth = resizeWidth;
        result->_resizeHeight = resizeHeight;
        result->_alignCorners = alignCorners;
        result->super._checkFlags |= 2u;
        result->super._encode = sub_239D16C78;
        result->super._encodeData = result;
        return result;
      }

      v10 = result;
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = result;
      if (MTLReportFailureTypeEnabled())
      {
LABEL_9:
        MTLReportFailure();
      }
    }

    return 0;
  }

  return result;
}

- (MPSNNResizeBilinear)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v27.receiver = self;
  v27.super_class = MPSNNResizeBilinear;
  v5 = [(MPSCNNKernel *)&v27 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_resizeWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSNNResizeBilinear.resizeWidth", v7, v8, v9, v10, v11);
    v12->_resizeHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSNNResizeBilinear.resizeHeight", v14, v15, v16, v17, v18);
    v12->_alignCorners = objc_msgSend_decodeBoolForKey_(aDecoder, v19, @"MPSNNResizeBilinear.alignCorners", v20, v21, v22, v23, v24);
    v12->super._checkFlags |= 2u;
    v12->super._encode = sub_239D16C78;
    v12->super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v26 = objc_opt_class();
    NSStringFromClass(v26);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v20.receiver = self;
  v20.super_class = MPSNNResizeBilinear;
  [(MPSCNNKernel *)&v20 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_resizeWidth, @"MPSNNResizeBilinear.resizeWidth", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->_resizeHeight, @"MPSNNResizeBilinear.resizeHeight", v11, v12, v13, v14);
  objc_msgSend_encodeBool_forKey_(a3, v15, self->_alignCorners, @"MPSNNResizeBilinear.alignCorners", v16, v17, v18, v19);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNNResizeBilinear;
  result = [(MPSCNNKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 41) = self->_resizeWidth;
    *(result + 42) = self->_resizeHeight;
    *(result + 344) = self->_alignCorners;
  }

  return result;
}

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = MPSNNResizeBilinear;
  v3 = [(MPSCNNKernel *)&v11 debugDescription];
  return objc_msgSend_stringWithFormat_(v2, v4, @"%@\n\tResizeBilinearOperation", v5, v6, v7, v8, v9, v3);
}

@end