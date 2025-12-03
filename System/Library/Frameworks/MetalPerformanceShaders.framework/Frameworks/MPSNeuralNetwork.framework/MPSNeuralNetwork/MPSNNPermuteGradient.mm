@interface MPSNNPermuteGradient
- (MPSNNPermuteGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNNPermuteGradient)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImages:(id)images secondaryImages:(id)secondaryImages inStates:(id)states destinationImages:(id)destinationImages;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNNPermuteGradient

- (MPSNNPermuteGradient)initWithDevice:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSNNPermuteGradient;
  result = [(MPSCNNGradientKernel *)&v14 initWithDevice:?];
  if (result)
  {
    result->super.super._checkFlags |= 2u;
    v5 = result;
    v6 = [MPSNNPermute alloc];
    v13 = objc_msgSend_initWithDevice_(v6, v7, device, v8, v9, v10, v11, v12);
    result = v5;
    v5->_revPermuteKernel = v13;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSNNPermuteGradient;
  v7 = [MPSCNNGradientKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v7[54] = objc_msgSend_copyWithZone_device_(self->_revPermuteKernel, v8, zone, device, v9, v10, v11, v12);
  return v7;
}

- (MPSNNPermuteGradient)initWithCoder:(id)coder device:(id)device
{
  v16.receiver = self;
  v16.super_class = MPSNNPermuteGradient;
  v6 = [MPSCNNGradientKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->super.super._checkFlags |= 2u;
  if (*(&v6->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v8 = [MPSNNPermute alloc];
    v7->_revPermuteKernel = objc_msgSend_initWithCoder_device_(v8, v9, coder, device, v10, v11, v12, v13);
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v15 = objc_opt_class();
    NSStringFromClass(v15);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v11.receiver = self;
  v11.super_class = MPSNNPermuteGradient;
  [(MPSCNNGradientKernel *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeWithCoder_(self->_revPermuteKernel, v5, coder, v6, v7, v8, v9, v10);
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImages:(id)images secondaryImages:(id)secondaryImages inStates:(id)states destinationImages:(id)destinationImages
{
  v13 = objc_msgSend_objectAtIndexedSubscript_(states, a2, 0, buffer, images, secondaryImages, states, destinationImages);
  revPermuteKernel = self->_revPermuteKernel;
  v15 = *(v13 + 336);
  v24[0] = *(v13 + 320);
  v24[1] = v15;
  objc_msgSend_setDimensionOrder_(revPermuteKernel, v16, v24, v17, v18, v19, v20, v21);
  objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self->_revPermuteKernel, v22, encoder, buffer, images, 0, destinationImages, v23);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNPermuteGradient;
  [(MPSCNNBinaryKernel *)&v3 dealloc];
}

@end