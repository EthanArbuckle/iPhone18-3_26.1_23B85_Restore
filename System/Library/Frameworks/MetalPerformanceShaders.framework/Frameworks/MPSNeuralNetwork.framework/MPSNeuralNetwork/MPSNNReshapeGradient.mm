@interface MPSNNReshapeGradient
- (MPSNNReshapeGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReshapeGradient)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 primaryOffset:(id *)a6 secondaryOffset:(id *)a7 kernelOffset:(id *)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNReshapeGradient

- (MPSNNReshapeGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNReshapeGradient;
  result = [(MPSCNNGradientKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super.super._encode = sub_239BAE344;
    result->super.super._encodeData = result;
    result->super.super._checkFlags = 2562;
  }

  return result;
}

- (MPSNNReshapeGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSNNReshapeGradient;
  result = [(MPSCNNGradientKernel *)&v7 initWithCoder:aDecoder device:device];
  if (result)
  {
    if (*(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      result->super.super._encode = sub_239BAE344;
      result->super.super._encodeData = result;
    }

    else
    {
      v5 = result;
      if (MTLReportFailureTypeEnabled())
      {
        v6 = objc_opt_class();
        NSStringFromClass(v6);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSNNReshapeGradient;
  [(MPSCNNGradientKernel *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNNReshapeGradient;
  return [(MPSCNNGradientKernel *)&v5 copyWithZone:a3 device:a4];
}

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = MPSNNReshapeGradient;
  v3 = [(MPSCNNBinaryKernel *)&v11 debugDescription];
  return objc_msgSend_stringWithFormat_(v2, v4, @"%@\n\tReshapeGradientOperation", v5, v6, v7, v8, v9, v3);
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 primaryOffset:(id *)a6 secondaryOffset:(id *)a7 kernelOffset:(id *)a8
{
  v70.receiver = self;
  v70.super_class = MPSNNReshapeGradient;
  v10 = [(MPSCNNBinaryKernel *)&v70 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 primaryOffset:a6 secondaryOffset:a7 kernelOffset:a8];
  v17 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12, v13, v14, v15, v16);
  v25 = objc_msgSend_width(v17, v18, v19, v20, v21, v22, v23, v24);
  v33 = objc_msgSend_height(v17, v26, v27, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_featureChannels(v17, v34, v35, v36, v37, v38, v39, v40);
  v48 = objc_msgSend_objectAtIndexedSubscript_(a4, v42, 0, v43, v44, v45, v46, v47);
  v49 = v33 - v48[7];
  v50 = v41 - v48[20];
  objc_msgSend_setWidth_(v10, v51, v25 - v48[6], v52, v53, v54, v55, v56);
  objc_msgSend_setHeight_(v10, v57, v49, v58, v59, v60, v61, v62);
  objc_msgSend_setFeatureChannels_(v10, v63, v50, v64, v65, v66, v67, v68);
  return v10;
}

@end