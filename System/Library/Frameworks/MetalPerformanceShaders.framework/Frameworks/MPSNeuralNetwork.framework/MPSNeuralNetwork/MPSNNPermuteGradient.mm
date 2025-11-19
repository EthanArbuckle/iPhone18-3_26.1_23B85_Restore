@interface MPSNNPermuteGradient
- (MPSNNPermuteGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSNNPermuteGradient)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImages:(id)a5 secondaryImages:(id)a6 inStates:(id)a7 destinationImages:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNPermuteGradient

- (MPSNNPermuteGradient)initWithDevice:(id)a3
{
  v14.receiver = self;
  v14.super_class = MPSNNPermuteGradient;
  result = [(MPSCNNGradientKernel *)&v14 initWithDevice:?];
  if (result)
  {
    result->super.super._checkFlags |= 2u;
    v5 = result;
    v6 = [MPSNNPermute alloc];
    v13 = objc_msgSend_initWithDevice_(v6, v7, a3, v8, v9, v10, v11, v12);
    result = v5;
    v5->_revPermuteKernel = v13;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v14.receiver = self;
  v14.super_class = MPSNNPermuteGradient;
  v7 = [MPSCNNGradientKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v7[54] = objc_msgSend_copyWithZone_device_(self->_revPermuteKernel, v8, a3, a4, v9, v10, v11, v12);
  return v7;
}

- (MPSNNPermuteGradient)initWithCoder:(id)a3 device:(id)a4
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
    v7->_revPermuteKernel = objc_msgSend_initWithCoder_device_(v8, v9, a3, a4, v10, v11, v12, v13);
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

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v11.receiver = self;
  v11.super_class = MPSNNPermuteGradient;
  [(MPSCNNGradientKernel *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeWithCoder_(self->_revPermuteKernel, v5, a3, v6, v7, v8, v9, v10);
}

- (void)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImages:(id)a5 secondaryImages:(id)a6 inStates:(id)a7 destinationImages:(id)a8
{
  v13 = objc_msgSend_objectAtIndexedSubscript_(a7, a2, 0, a4, a5, a6, a7, a8);
  revPermuteKernel = self->_revPermuteKernel;
  v15 = *(v13 + 336);
  v24[0] = *(v13 + 320);
  v24[1] = v15;
  objc_msgSend_setDimensionOrder_(revPermuteKernel, v16, v24, v17, v18, v19, v20, v21);
  objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self->_revPermuteKernel, v22, a3, a4, a5, 0, a8, v23);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNPermuteGradient;
  [(MPSCNNBinaryKernel *)&v3 dealloc];
}

@end