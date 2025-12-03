@interface MPSCNNCrossChannelNormalizationGradient
- (MPSCNNCrossChannelNormalizationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNCrossChannelNormalizationGradient)initWithDevice:(id)device;
- (MPSCNNCrossChannelNormalizationGradient)initWithDevice:(id)device kernelSize:(NSUInteger)kernelSize;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNCrossChannelNormalizationGradient

- (MPSCNNCrossChannelNormalizationGradient)initWithDevice:(id)device kernelSize:(NSUInteger)kernelSize
{
  v6.receiver = self;
  v6.super_class = MPSCNNCrossChannelNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_kernelSize = kernelSize;
    result->_alpha = 1.0;
    result->_beta = 5.0;
    result->_delta = 1.0;
    result->super.super._checkFlags |= 2u;
    result->super.super._encode = sub_239CE41CC;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSCNNCrossChannelNormalizationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v36.receiver = self;
  v36.super_class = MPSCNNCrossChannelNormalizationGradient;
  v5 = [(MPSCNNGradientKernel *)&v36 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_kernelSize = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSCNNCrossChannelNormalizationGradient.kernelSize", v7, v8, v9, v10, v11);
    objc_msgSend_decodeFloatForKey_(aDecoder, v13, @"MPSCNNCrossChannelNormalizationGradient.alpha", v14, v15, v16, v17, v18);
    v12->_alpha = v19;
    objc_msgSend_decodeFloatForKey_(aDecoder, v20, @"MPSCNNCrossChannelNormalizationGradient.beta", v21, v22, v23, v24, v25);
    v12->_beta = v26;
    objc_msgSend_decodeFloatForKey_(aDecoder, v27, @"MPSCNNCrossChannelNormalizationGradient.delta", v28, v29, v30, v31, v32);
    v12->_delta = v33;
    v12->super.super._checkFlags |= 2u;
    v12->super.super._encode = sub_239CE41CC;
    v12->super.super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v35 = objc_opt_class();
    NSStringFromClass(v35);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v31.receiver = self;
  v31.super_class = MPSCNNCrossChannelNormalizationGradient;
  [(MPSCNNGradientKernel *)&v31 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_kernelSize, @"MPSCNNCrossChannelNormalizationGradient.kernelSize", v6, v7, v8, v9);
  *&v10 = self->_alpha;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"MPSCNNCrossChannelNormalizationGradient.alpha", v12, v13, v14, v15, v16, v10);
  *&v17 = self->_beta;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"MPSCNNCrossChannelNormalizationGradient.beta", v19, v20, v21, v22, v23, v17);
  *&v24 = self->_delta;
  objc_msgSend_encodeFloat_forKey_(coder, v25, @"MPSCNNCrossChannelNormalizationGradient.delta", v26, v27, v28, v29, v30, v24);
}

- (MPSCNNCrossChannelNormalizationGradient)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v4 = objc_opt_class();
    NSStringFromClass(v4);
    MTLReportFailure();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSCNNCrossChannelNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 54) = self->_kernelSize;
    *(result + 110) = LODWORD(self->_alpha);
    *(result + 111) = LODWORD(self->_beta);
    *(result + 112) = LODWORD(self->_delta);
    self->super.super._checkFlags |= 2u;
    self->super.super._encode = sub_239CE41CC;
    self->super.super._encodeData = self;
  }

  return result;
}

@end