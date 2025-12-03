@interface MPSCNNLocalContrastNormalizationGradient
- (MPSCNNLocalContrastNormalizationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNLocalContrastNormalizationGradient)initWithDevice:(id)device;
- (MPSCNNLocalContrastNormalizationGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNLocalContrastNormalizationGradient

- (MPSCNNLocalContrastNormalizationGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight
{
  v8.receiver = self;
  v8.super_class = MPSCNNLocalContrastNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v8 initWithDevice:device];
  if (result)
  {
    result->super.super._primaryKernelWidth = kernelWidth;
    result->super.super._primaryKernelHeight = kernelHeight;
    result->super.super._secondaryKernelWidth = kernelWidth;
    result->super.super._secondaryKernelHeight = kernelHeight;
    result->_alpha = 0.0;
    result->_beta = 0.5;
    result->_delta = 0.00097656;
    result->_p0 = 1.0;
    result->_pm = 0.0;
    result->_ps = 1.0;
    result->super.super._checkFlags |= 2u;
    result->super.super._encode = sub_239CE539C;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSCNNLocalContrastNormalizationGradient)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v4 = objc_opt_class();
    NSStringFromClass(v4);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNLocalContrastNormalizationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v51.receiver = self;
  v51.super_class = MPSCNNLocalContrastNormalizationGradient;
  v5 = [(MPSCNNGradientKernel *)&v51 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSCNNLocalContrastNormalizationGradient.alpha", v7, v8, v9, v10, v11);
    v12->_alpha = v13;
    objc_msgSend_decodeFloatForKey_(aDecoder, v14, @"MPSCNNLocalContrastNormalizationGradient.beta", v15, v16, v17, v18, v19);
    v12->_beta = v20;
    objc_msgSend_decodeFloatForKey_(aDecoder, v21, @"MPSCNNLocalContrastNormalizationGradient.delta", v22, v23, v24, v25, v26);
    v12->_delta = v27;
    objc_msgSend_decodeFloatForKey_(aDecoder, v28, @"MPSCNNLocalContrastNormalizationGradient.p0", v29, v30, v31, v32, v33);
    v12->_p0 = v34;
    objc_msgSend_decodeFloatForKey_(aDecoder, v35, @"MPSCNNLocalContrastNormalizationGradient.pm", v36, v37, v38, v39, v40);
    v12->_pm = v41;
    objc_msgSend_decodeFloatForKey_(aDecoder, v42, @"MPSCNNLocalContrastNormalizationGradient.ps", v43, v44, v45, v46, v47);
    v12->_ps = v48;
    v12->super.super._checkFlags |= 2u;
    v12->super.super._encode = sub_239CE539C;
    v12->super.super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v50 = objc_opt_class();
    NSStringFromClass(v50);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v47.receiver = self;
  v47.super_class = MPSCNNLocalContrastNormalizationGradient;
  [(MPSCNNGradientKernel *)&v47 encodeWithCoder:?];
  *&v5 = self->_alpha;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSCNNLocalContrastNormalizationGradient.alpha", v7, v8, v9, v10, v11, v5);
  *&v12 = self->_beta;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"MPSCNNLocalContrastNormalizationGradient.beta", v14, v15, v16, v17, v18, v12);
  *&v19 = self->_delta;
  objc_msgSend_encodeFloat_forKey_(coder, v20, @"MPSCNNLocalContrastNormalizationGradient.delta", v21, v22, v23, v24, v25, v19);
  *&v26 = self->_p0;
  objc_msgSend_encodeFloat_forKey_(coder, v27, @"MPSCNNLocalContrastNormalizationGradient.p0", v28, v29, v30, v31, v32, v26);
  *&v33 = self->_pm;
  objc_msgSend_encodeFloat_forKey_(coder, v34, @"MPSCNNLocalContrastNormalizationGradient.pm", v35, v36, v37, v38, v39, v33);
  *&v40 = self->_ps;
  objc_msgSend_encodeFloat_forKey_(coder, v41, @"MPSCNNLocalContrastNormalizationGradient.ps", v42, v43, v44, v45, v46, v40);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSCNNLocalContrastNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 108) = LODWORD(self->_alpha);
    *(result + 109) = LODWORD(self->_beta);
    *(result + 110) = LODWORD(self->_delta);
    *(result + 111) = LODWORD(self->_p0);
    *(result + 112) = LODWORD(self->_pm);
    *(result + 113) = LODWORD(self->_ps);
    self->super.super._checkFlags |= 2u;
    self->super.super._encode = sub_239CE539C;
    self->super.super._encodeData = self;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNLocalContrastNormalizationGradient;
  v4 = [(MPSCNNBinaryKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\talpha:          %f\n\tbeta:           %f\n\tdelta:          %f\n\tp0:             %f\n\tpm:             %f\n\tps:             %f\n", v6, v7, v8, v9, v10, v4, self->_alpha, self->_beta, self->_delta, self->_p0, self->_pm, self->_ps);
}

@end