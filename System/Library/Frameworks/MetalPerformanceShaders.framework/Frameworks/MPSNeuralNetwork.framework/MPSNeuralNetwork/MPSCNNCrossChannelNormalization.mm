@interface MPSCNNCrossChannelNormalization
- (MPSCNNCrossChannelNormalization)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNCrossChannelNormalization)initWithDevice:(id)device;
- (MPSCNNCrossChannelNormalization)initWithDevice:(id)device kernelSize:(NSUInteger)kernelSize;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images;
- (id)encodeToCommandBuffer:(id)buffer sourceImage:(id)image;
- (void)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images destinationImages:(id)destinationImages;
- (void)encodeToCommandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNCrossChannelNormalization

- (MPSCNNCrossChannelNormalization)initWithDevice:(id)device kernelSize:(NSUInteger)kernelSize
{
  v6.receiver = self;
  v6.super_class = MPSCNNCrossChannelNormalization;
  result = [(MPSCNNKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_kernelSize = kernelSize;
    result->_alpha = 1.0;
    result->_beta = 5.0;
    result->_delta = 1.0;
    result->super._checkFlags |= 2u;
    result->super._encode = sub_239D64968;
    result->super._encodeData = result;
  }

  return result;
}

- (MPSCNNCrossChannelNormalization)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v36.receiver = self;
  v36.super_class = MPSCNNCrossChannelNormalization;
  v5 = [(MPSCNNKernel *)&v36 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_kernelSize = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSCNNCrossChannelNormalization.kernelSize", v7, v8, v9, v10, v11);
    objc_msgSend_decodeFloatForKey_(aDecoder, v13, @"MPSCNNCrossChannelNormalization.alpha", v14, v15, v16, v17, v18);
    v12->_alpha = v19;
    objc_msgSend_decodeFloatForKey_(aDecoder, v20, @"MPSCNNCrossChannelNormalization.beta", v21, v22, v23, v24, v25);
    v12->_beta = v26;
    objc_msgSend_decodeFloatForKey_(aDecoder, v27, @"MPSCNNCrossChannelNormalization.delta", v28, v29, v30, v31, v32);
    v12->_delta = v33;
    v12->super._checkFlags |= 2u;
    v12->super._encode = sub_239D64968;
    v12->super._encodeData = v12;
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

- (void)encodeToCommandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage
{
  v5.receiver = self;
  v5.super_class = MPSCNNCrossChannelNormalization;
  [(MPSCNNKernel *)&v5 encodeToCommandBuffer:buffer sourceImage:image destinationImage:destinationImage];
}

- (void)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images destinationImages:(id)destinationImages
{
  v5.receiver = self;
  v5.super_class = MPSCNNCrossChannelNormalization;
  [(MPSCNNKernel *)&v5 encodeBatchToCommandBuffer:buffer sourceImages:images destinationImages:destinationImages];
}

- (id)encodeToCommandBuffer:(id)buffer sourceImage:(id)image
{
  v5.receiver = self;
  v5.super_class = MPSCNNCrossChannelNormalization;
  return [(MPSCNNKernel *)&v5 encodeToCommandBuffer:buffer sourceImage:image];
}

- (id)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images
{
  v5.receiver = self;
  v5.super_class = MPSCNNCrossChannelNormalization;
  return [(MPSCNNKernel *)&v5 encodeBatchToCommandBuffer:buffer sourceImages:images];
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v31.receiver = self;
  v31.super_class = MPSCNNCrossChannelNormalization;
  [(MPSCNNKernel *)&v31 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_kernelSize, @"MPSCNNCrossChannelNormalization.kernelSize", v6, v7, v8, v9);
  *&v10 = self->_alpha;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"MPSCNNCrossChannelNormalization.alpha", v12, v13, v14, v15, v16, v10);
  *&v17 = self->_beta;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"MPSCNNCrossChannelNormalization.beta", v19, v20, v21, v22, v23, v17);
  *&v24 = self->_delta;
  objc_msgSend_encodeFloat_forKey_(coder, v25, @"MPSCNNCrossChannelNormalization.delta", v26, v27, v28, v29, v30, v24);
}

- (MPSCNNCrossChannelNormalization)initWithDevice:(id)device
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
  v6.super_class = MPSCNNCrossChannelNormalization;
  result = [(MPSCNNKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 41) = self->_kernelSize;
    *(result + 84) = LODWORD(self->_alpha);
    *(result + 85) = LODWORD(self->_beta);
    *(result + 86) = LODWORD(self->_delta);
    self->super._checkFlags |= 2u;
    self->super._encode = sub_239D64968;
    self->super._encodeData = self;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNCrossChannelNormalization;
  v4 = [(MPSCNNKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\talpha:          %f\n\tbeta:           %f\n\tdelta:          %f\n", v6, v7, v8, v9, v10, v4, self->_alpha, self->_beta, self->_delta);
}

@end