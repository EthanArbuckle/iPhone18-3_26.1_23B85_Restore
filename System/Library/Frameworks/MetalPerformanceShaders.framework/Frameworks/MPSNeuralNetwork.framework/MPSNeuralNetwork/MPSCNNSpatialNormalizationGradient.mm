@interface MPSCNNSpatialNormalizationGradient
- (MPSCNNSpatialNormalizationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNSpatialNormalizationGradient)initWithDevice:(id)device;
- (MPSCNNSpatialNormalizationGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNSpatialNormalizationGradient

- (MPSCNNSpatialNormalizationGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight
{
  v8.receiver = self;
  v8.super_class = MPSCNNSpatialNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v8 initWithDevice:device];
  if (result)
  {
    result->super.super._primaryKernelWidth = kernelWidth;
    result->super.super._primaryKernelHeight = kernelHeight;
    result->super.super._secondaryKernelWidth = kernelWidth;
    result->super.super._secondaryKernelHeight = kernelHeight;
    result->_alpha = 1.0;
    result->_beta = 5.0;
    result->_delta = 1.0;
    result->super.super._checkFlags |= 2u;
    result->super.super._encode = sub_239CE4A24;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSCNNSpatialNormalizationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v30.receiver = self;
  v30.super_class = MPSCNNSpatialNormalizationGradient;
  v5 = [(MPSCNNGradientKernel *)&v30 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSCNNSpatialNormalizationGradient.alpha", v7, v8, v9, v10, v11);
    v12->_alpha = v13;
    objc_msgSend_decodeFloatForKey_(aDecoder, v14, @"MPSCNNSpatialNormalizationGradient.beta", v15, v16, v17, v18, v19);
    v12->_beta = v20;
    objc_msgSend_decodeFloatForKey_(aDecoder, v21, @"MPSCNNSpatialNormalizationGradient.delta", v22, v23, v24, v25, v26);
    v12->_delta = v27;
    v12->super.super._checkFlags |= 2u;
    v12->super.super._encode = sub_239CE4A24;
    v12->super.super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v29 = objc_opt_class();
    NSStringFromClass(v29);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v26.receiver = self;
  v26.super_class = MPSCNNSpatialNormalizationGradient;
  [(MPSCNNGradientKernel *)&v26 encodeWithCoder:?];
  *&v5 = self->_alpha;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSCNNSpatialNormalizationGradient.alpha", v7, v8, v9, v10, v11, v5);
  *&v12 = self->_beta;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"MPSCNNSpatialNormalizationGradient.beta", v14, v15, v16, v17, v18, v12);
  *&v19 = self->_delta;
  objc_msgSend_encodeFloat_forKey_(coder, v20, @"MPSCNNSpatialNormalizationGradient.delta", v21, v22, v23, v24, v25, v19);
}

- (MPSCNNSpatialNormalizationGradient)initWithDevice:(id)device
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
  v6.super_class = MPSCNNSpatialNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 30) = self->super.super._primaryKernelWidth;
    *(result + 31) = self->super.super._primaryKernelHeight;
    *(result + 32) = self->super.super._secondaryKernelWidth;
    *(result + 33) = self->super.super._secondaryKernelHeight;
    *(result + 108) = LODWORD(self->_alpha);
    *(result + 109) = LODWORD(self->_beta);
    *(result + 110) = LODWORD(self->_delta);
    self->super.super._checkFlags |= 2u;
    self->super.super._encode = sub_239CE4A24;
    self->super.super._encodeData = self;
  }

  return result;
}

@end