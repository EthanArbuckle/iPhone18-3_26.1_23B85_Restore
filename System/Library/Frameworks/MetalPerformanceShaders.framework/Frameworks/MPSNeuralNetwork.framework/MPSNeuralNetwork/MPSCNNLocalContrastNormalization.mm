@interface MPSCNNLocalContrastNormalization
- (MPSCNNLocalContrastNormalization)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNLocalContrastNormalization)initWithDevice:(id)device;
- (MPSCNNLocalContrastNormalization)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images;
- (id)encodeToCommandBuffer:(id)buffer sourceImage:(id)image;
- (void)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images destinationImages:(id)destinationImages;
- (void)encodeToCommandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNLocalContrastNormalization

- (MPSCNNLocalContrastNormalization)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight
{
  v8.receiver = self;
  v8.super_class = MPSCNNLocalContrastNormalization;
  result = [(MPSCNNKernel *)&v8 initWithDevice:device];
  if (result)
  {
    result->super._kernelWidth = kernelWidth;
    result->super._kernelHeight = kernelHeight;
    result->_alpha = 0.0;
    result->_beta = 0.5;
    result->_delta = 0.00097656;
    result->_p0 = 1.0;
    result->_pm = 0.0;
    result->_ps = 1.0;
    result->super._checkFlags |= 2u;
    result->super._encode = sub_239D66044;
    result->super._encodeData = result;
  }

  return result;
}

- (MPSCNNLocalContrastNormalization)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v4 = objc_opt_class();
    NSStringFromClass(v4);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNLocalContrastNormalization)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v51.receiver = self;
  v51.super_class = MPSCNNLocalContrastNormalization;
  v5 = [(MPSCNNKernel *)&v51 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSCNNLocalContrastNormalization.alpha", v7, v8, v9, v10, v11);
    v12->_alpha = v13;
    objc_msgSend_decodeFloatForKey_(aDecoder, v14, @"MPSCNNLocalContrastNormalization.beta", v15, v16, v17, v18, v19);
    v12->_beta = v20;
    objc_msgSend_decodeFloatForKey_(aDecoder, v21, @"MPSCNNLocalContrastNormalization.delta", v22, v23, v24, v25, v26);
    v12->_delta = v27;
    objc_msgSend_decodeFloatForKey_(aDecoder, v28, @"MPSCNNLocalContrastNormalization.p0", v29, v30, v31, v32, v33);
    v12->_p0 = v34;
    objc_msgSend_decodeFloatForKey_(aDecoder, v35, @"MPSCNNLocalContrastNormalization.pm", v36, v37, v38, v39, v40);
    v12->_pm = v41;
    objc_msgSend_decodeFloatForKey_(aDecoder, v42, @"MPSCNNLocalContrastNormalization.ps", v43, v44, v45, v46, v47);
    v12->_ps = v48;
    v12->super._checkFlags |= 2u;
    v12->super._encode = sub_239D66044;
    v12->super._encodeData = v12;
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

- (void)encodeToCommandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage
{
  v5.receiver = self;
  v5.super_class = MPSCNNLocalContrastNormalization;
  [(MPSCNNKernel *)&v5 encodeToCommandBuffer:buffer sourceImage:image destinationImage:destinationImage];
}

- (void)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images destinationImages:(id)destinationImages
{
  v5.receiver = self;
  v5.super_class = MPSCNNLocalContrastNormalization;
  [(MPSCNNKernel *)&v5 encodeBatchToCommandBuffer:buffer sourceImages:images destinationImages:destinationImages];
}

- (id)encodeToCommandBuffer:(id)buffer sourceImage:(id)image
{
  v5.receiver = self;
  v5.super_class = MPSCNNLocalContrastNormalization;
  return [(MPSCNNKernel *)&v5 encodeToCommandBuffer:buffer sourceImage:image];
}

- (id)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images
{
  v5.receiver = self;
  v5.super_class = MPSCNNLocalContrastNormalization;
  return [(MPSCNNKernel *)&v5 encodeBatchToCommandBuffer:buffer sourceImages:images];
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v47.receiver = self;
  v47.super_class = MPSCNNLocalContrastNormalization;
  [(MPSCNNKernel *)&v47 encodeWithCoder:?];
  *&v5 = self->_alpha;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSCNNLocalContrastNormalization.alpha", v7, v8, v9, v10, v11, v5);
  *&v12 = self->_beta;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"MPSCNNLocalContrastNormalization.beta", v14, v15, v16, v17, v18, v12);
  *&v19 = self->_delta;
  objc_msgSend_encodeFloat_forKey_(coder, v20, @"MPSCNNLocalContrastNormalization.delta", v21, v22, v23, v24, v25, v19);
  *&v26 = self->_p0;
  objc_msgSend_encodeFloat_forKey_(coder, v27, @"MPSCNNLocalContrastNormalization.p0", v28, v29, v30, v31, v32, v26);
  *&v33 = self->_pm;
  objc_msgSend_encodeFloat_forKey_(coder, v34, @"MPSCNNLocalContrastNormalization.pm", v35, v36, v37, v38, v39, v33);
  *&v40 = self->_ps;
  objc_msgSend_encodeFloat_forKey_(coder, v41, @"MPSCNNLocalContrastNormalization.ps", v42, v43, v44, v45, v46, v40);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSCNNLocalContrastNormalization;
  result = [(MPSCNNKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 82) = LODWORD(self->_alpha);
    *(result + 83) = LODWORD(self->_beta);
    *(result + 84) = LODWORD(self->_delta);
    *(result + 85) = LODWORD(self->_p0);
    *(result + 86) = LODWORD(self->_pm);
    *(result + 87) = LODWORD(self->_ps);
    self->super._checkFlags |= 2u;
    self->super._encode = sub_239D66044;
    self->super._encodeData = self;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNLocalContrastNormalization;
  v4 = [(MPSCNNKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\talpha:          %f\n\tbeta:           %f\n\tdelta:          %f\n\tp0:             %f\n\tpm:             %f\n\tps:             %f\n", v6, v7, v8, v9, v10, v4, self->_alpha, self->_beta, self->_delta, self->_p0, self->_pm, self->_ps);
}

@end