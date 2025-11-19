@interface MPSNNGramMatrixCalculation
- (MPSNNGramMatrixCalculation)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNGramMatrixCalculation)initWithDevice:(id)device alpha:(float)alpha;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4;
- (id)resultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5;
- (id)temporaryResultStateForCommandBuffer:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNGramMatrixCalculation

- (MPSNNGramMatrixCalculation)initWithDevice:(id)device alpha:(float)alpha
{
  v24.receiver = self;
  v24.super_class = MPSNNGramMatrixCalculation;
  result = [(MPSCNNKernel *)&v24 initWithDevice:?];
  if (result)
  {
    result->super._checkFlags |= 0x8002u;
    result->super._encode = sub_239D1F77C;
    result->super._batchEncode = sub_239D1F8F0;
    result->super._encodeData = result;
    result->_alpha = alpha;
    result->_propertyCallback = 0;
    p_filters = &result->_filters;
    v8 = result;
    v9 = objc_alloc(MEMORY[0x277CD7508]);
    p_filters->i2mCopy = objc_msgSend_initWithDevice_dataLayout_(v9, v10, device, 0, v11, v12, v13, v14);
    v15 = objc_alloc(MEMORY[0x277CD7598]);
    p_filters->m2iCopy = objc_msgSend_initWithDevice_dataLayout_(v15, v16, device, 0, v17, v18, v19, v20);
    v21 = objc_alloc(MEMORY[0x277CD75E0]);
    v23 = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v21, v22, device, 1, 0, 4, 4, 4, alpha, 0.0);
    result = v8;
    p_filters->gemm_TN = v23;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v37.receiver = self;
  v37.super_class = MPSNNGramMatrixCalculation;
  v6 = [(MPSCNNKernel *)&v37 copyWithZone:a3 device:a4];
  alpha = self->_alpha;
  v6[90] = alpha;
  v8 = *(*(v6 + *MEMORY[0x277CD7350]) + 16);
  v9 = objc_alloc(MEMORY[0x277CD7508]);
  *(v6 + 42) = objc_msgSend_initWithDevice_dataLayout_(v9, v10, v8, 0, v11, v12, v13, v14);
  v15 = objc_alloc(MEMORY[0x277CD7598]);
  *(v6 + 43) = objc_msgSend_initWithDevice_dataLayout_(v15, v16, v8, 0, v17, v18, v19, v20);
  v21 = objc_alloc(MEMORY[0x277CD75E0]);
  *(v6 + 44) = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v21, v22, v8, 1, 0, 4, 4, 4, alpha, 0.0);
  *(v6 + 41) = 0;
  propertyCallback = self->_propertyCallback;
  if (propertyCallback && objc_msgSend_conformsToProtocol_(propertyCallback, v23, &unk_284D09E18, v24, v25, v26, v27, v28))
  {
    *(v6 + 41) = objc_msgSend_copyWithZone_(self->_propertyCallback, v30, a3, v31, v32, v33, v34, v35);
  }

  return v6;
}

- (void)dealloc
{
  p_filters = &self->_filters;

  v4.receiver = self;
  v4.super_class = MPSNNGramMatrixCalculation;
  [(MPSCNNKernel *)&v4 dealloc];
}

- (MPSNNGramMatrixCalculation)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v44.receiver = self;
  v44.super_class = MPSNNGramMatrixCalculation;
  v6 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (v6)
  {
    v6->super._checkFlags |= 0x8002u;
    v6->super._encode = sub_239D1F77C;
    v6->super._batchEncode = sub_239D1F8F0;
    v6->super._encodeData = v6;
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_decodeFloatForKey_(aDecoder, v7, @"MPSCNNGram_alpha", v8, v9, v10, v11, v12);
      v13->_alpha = v14;
      v13->_propertyCallback = 0;
      if (objc_msgSend_decodeBoolForKey_(aDecoder, v15, @"MPSCNNGram_hasPropertyCallback", v16, v17, v18, v19, v20))
      {
        v13->_propertyCallback = objc_msgSend_decodeObjectForKey_(aDecoder, v21, @"MPSCNNGram_propertyCallback", v22, v23, v24, v25, v26);
      }

      alpha = v13->_alpha;
      v28 = objc_alloc(MEMORY[0x277CD7508]);
      v13->_filters.i2mCopy = objc_msgSend_initWithDevice_dataLayout_(v28, v29, device, 0, v30, v31, v32, v33);
      v34 = objc_alloc(MEMORY[0x277CD7598]);
      v13->_filters.m2iCopy = objc_msgSend_initWithDevice_dataLayout_(v34, v35, device, 0, v36, v37, v38, v39);
      v40 = objc_alloc(MEMORY[0x277CD75E0]);
      v13->_filters.gemm_TN = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v40, v41, device, 1, 0, 4, 4, 4, alpha, 0.0);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v42 = objc_opt_class();
        NSStringFromClass(v42);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v37.receiver = self;
  v37.super_class = MPSNNGramMatrixCalculation;
  [(MPSCNNKernel *)&v37 encodeWithCoder:?];
  *&v5 = self->_alpha;
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"MPSCNNGram_alpha", v7, v8, v9, v10, v11, v5);
  if (self->_propertyCallback && (objc_msgSend_conformsToProtocol_(self->_propertyCallback, v12, &unk_284D09FA0, v13, v14, v15, v16, v17) & 1) != 0)
  {
    v18 = objc_opt_class();
    v26 = objc_msgSend_supportsSecureCoding(v18, v19, v20, v21, v22, v23, v24, v25);
    objc_msgSend_encodeBool_forKey_(a3, v27, v26, @"MPSCNNGram_hasPropertyCallback", v28, v29, v30, v31);
    if (v26)
    {
      objc_msgSend_encodeObject_forKey_(a3, v32, self->_propertyCallback, @"MPSCNNGram_propertyCallback", v33, v34, v35, v36);
    }
  }

  else
  {
    objc_msgSend_encodeBool_forKey_(a3, v12, 0, @"MPSCNNGram_hasPropertyCallback", v14, v15, v16, v17);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNGramMatrixCalculation;
  v4 = [(MPSCNNKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\talpha: %f", v6, v7, v8, v9, v10, v4, self->_alpha);
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4
{
  v46.receiver = self;
  v46.super_class = MPSNNGramMatrixCalculation;
  v4 = [(MPSCNNKernel *)&v46 destinationImageDescriptorForSourceImages:a3 sourceStates:a4];
  objc_msgSend_width(v4, v5, v6, v7, v8, v9, v10, v11);
  objc_msgSend_height(v4, v12, v13, v14, v15, v16, v17, v18);
  v26 = objc_msgSend_featureChannels(v4, v19, v20, v21, v22, v23, v24, v25);
  objc_msgSend_setWidth_(v4, v27, v26, v28, v29, v30, v31, v32);
  objc_msgSend_setHeight_(v4, v33, 1, v34, v35, v36, v37, v38);
  objc_msgSend_setFeatureChannels_(v4, v39, v26, v40, v41, v42, v43, v44);
  return v4;
}

- (id)resultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5
{
  v9 = [MPSNNGramGradientState alloc];
  v16 = objc_msgSend_initWithResource_(v9, v10, 0, v11, v12, v13, v14, v15);
  objc_msgSend_alpha(self, v17, v18, v19, v20, v21, v22, v23);
  v16[72] = v29;
  propertyCallback = self->_propertyCallback;
  if (propertyCallback)
  {
    objc_msgSend_alphaForSourceImage_destinationImage_(propertyCallback, v24, a3, a5, v25, v26, v27, v28);
    v16[72] = v31;
  }

  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v24, v16, a3, a4, a5, v27, v28);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v32 = MEMORY[0x277CCACA8];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v41 = objc_msgSend_stringWithFormat_(v32, v35, @"created by %@", v36, v37, v38, v39, v40, v34);
    objc_msgSend_setLabel_(v16, v42, v41, v43, v44, v45, v46, v47);
  }

  return v16;
}

- (id)temporaryResultStateForCommandBuffer:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6
{
  if (a3)
  {
    v12 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNGramGradientState, a2, a3, a4, a5, a6, v6, v7);
  }

  else
  {
    v20 = [MPSNNGramGradientState alloc];
    v12 = objc_msgSend_initWithResource_(v20, v21, 0, v22, v23, v24, v25, v26);
  }

  v27 = v12;
  objc_msgSend_alpha(self, v13, v14, v15, v16, v17, v18, v19);
  v27[72] = v33;
  propertyCallback = self->_propertyCallback;
  if (propertyCallback)
  {
    objc_msgSend_alphaForSourceImage_destinationImage_(propertyCallback, v28, a4, a6, v29, v30, v31, v32);
    v27[72] = v35;
  }

  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v28, v27, a4, a5, a6, v31, v32);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v36 = MEMORY[0x277CCACA8];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v45 = objc_msgSend_stringWithFormat_(v36, v39, @"created by %@", v40, v41, v42, v43, v44, v38);
    objc_msgSend_setLabel_(v27, v46, v45, v47, v48, v49, v50, v51);
  }

  return v27;
}

@end