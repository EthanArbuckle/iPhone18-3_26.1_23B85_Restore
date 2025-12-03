@interface MPSNNGramMatrixCalculationGradient
- (MPSNNGramMatrixCalculationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNGramMatrixCalculationGradient)initWithDevice:(id)device alpha:(float)alpha;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNNGramMatrixCalculationGradient

- (MPSNNGramMatrixCalculationGradient)initWithDevice:(id)device alpha:(float)alpha
{
  v27.receiver = self;
  v27.super_class = MPSNNGramMatrixCalculationGradient;
  result = [(MPSCNNGradientKernel *)&v27 initWithDevice:?];
  if (result)
  {
    result->super.super._checkFlags |= 0x8002u;
    result->super.super._encode = sub_239D203FC;
    result->super.super._batchEncode = sub_239D205BC;
    result->super.super._encodeData = result;
    result->_alpha = alpha;
    p_filters = &result->_filters;
    v8 = result;
    v9 = objc_alloc(MEMORY[0x277CD7508]);
    p_filters->fwdFilters.i2mCopy = objc_msgSend_initWithDevice_dataLayout_(v9, v10, device, 0, v11, v12, v13, v14);
    v15 = objc_alloc(MEMORY[0x277CD7598]);
    p_filters->fwdFilters.m2iCopy = objc_msgSend_initWithDevice_dataLayout_(v15, v16, device, 0, v17, v18, v19, v20);
    v21 = objc_alloc(MEMORY[0x277CD75E0]);
    v22 = alpha;
    p_filters->fwdFilters.gemm_TN = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v21, v23, device, 1, 0, 4, 4, 4, v22, 0.0);
    v24 = objc_alloc(MEMORY[0x277CD75E0]);
    v26 = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v24, v25, device, 0, 0, 4, 4, 4, v22, 0.0);
    result = v8;
    p_filters->gemm_NN = v26;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v26.receiver = self;
  v26.super_class = MPSNNGramMatrixCalculationGradient;
  v5 = [(MPSCNNGradientKernel *)&v26 copyWithZone:zone device:device];
  alpha = self->_alpha;
  v5[116] = alpha;
  v7 = *(*(v5 + *MEMORY[0x277CD7350]) + 16);
  v8 = objc_alloc(MEMORY[0x277CD7508]);
  *(v5 + 54) = objc_msgSend_initWithDevice_dataLayout_(v8, v9, v7, 0, v10, v11, v12, v13);
  v14 = objc_alloc(MEMORY[0x277CD7598]);
  *(v5 + 55) = objc_msgSend_initWithDevice_dataLayout_(v14, v15, v7, 0, v16, v17, v18, v19);
  v20 = objc_alloc(MEMORY[0x277CD75E0]);
  v21 = alpha;
  *(v5 + 56) = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v20, v22, v7, 1, 0, 4, 4, 4, v21, 0.0);
  v23 = objc_alloc(MEMORY[0x277CD75E0]);
  *(v5 + 57) = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v23, v24, v7, 0, 0, 4, 4, 4, v21, 0.0);
  return v5;
}

- (void)dealloc
{
  p_filters = &self->_filters;

  v4.receiver = self;
  v4.super_class = MPSNNGramMatrixCalculationGradient;
  [(MPSCNNBinaryKernel *)&v4 dealloc];
}

- (MPSNNGramMatrixCalculationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v35.receiver = self;
  v35.super_class = MPSNNGramMatrixCalculationGradient;
  v6 = [MPSCNNGradientKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (v6)
  {
    v6->super.super._checkFlags |= 0x8002u;
    v6->super.super._encode = sub_239D203FC;
    v6->super.super._batchEncode = sub_239D205BC;
    v6->super.super._encodeData = v6;
    if (*(&v6->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_decodeFloatForKey_(aDecoder, v7, @"MPSCNNGram_alpha", v8, v9, v10, v11, v12);
      v15 = v14;
      v13->_alpha = v14;
      v16 = objc_alloc(MEMORY[0x277CD7508]);
      v13->_filters.fwdFilters.i2mCopy = objc_msgSend_initWithDevice_dataLayout_(v16, v17, device, 0, v18, v19, v20, v21);
      v22 = objc_alloc(MEMORY[0x277CD7598]);
      v13->_filters.fwdFilters.m2iCopy = objc_msgSend_initWithDevice_dataLayout_(v22, v23, device, 0, v24, v25, v26, v27);
      v28 = objc_alloc(MEMORY[0x277CD75E0]);
      v29 = v15;
      v13->_filters.fwdFilters.gemm_TN = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v28, v30, device, 1, 0, 4, 4, 4, v29, 0.0);
      v31 = objc_alloc(MEMORY[0x277CD75E0]);
      v13->_filters.gemm_NN = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v31, v32, device, 0, 0, 4, 4, 4, v29, 0.0);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v33 = objc_opt_class();
        NSStringFromClass(v33);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v12.receiver = self;
  v12.super_class = MPSNNGramMatrixCalculationGradient;
  [(MPSCNNGradientKernel *)&v12 encodeWithCoder:?];
  *&v5 = self->_alpha;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSCNNGram_alpha", v7, v8, v9, v10, v11, v5);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNGramMatrixCalculationGradient;
  v4 = [(MPSCNNBinaryKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\talpha: %f", v6, v7, v8, v9, v10, v4, self->_alpha);
}

@end