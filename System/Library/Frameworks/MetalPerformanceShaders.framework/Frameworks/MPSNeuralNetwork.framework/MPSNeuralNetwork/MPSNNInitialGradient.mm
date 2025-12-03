@interface MPSNNInitialGradient
- (MPSNNInitialGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNNInitialGradient)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNNInitialGradient

- (MPSNNInitialGradient)initWithDevice:(id)device
{
  v22.receiver = self;
  v22.super_class = MPSNNInitialGradient;
  v4 = [(MPSCNNKernel *)&v22 initWithDevice:?];
  v5 = v4;
  if (v4)
  {
    v4->super._checkFlags |= 0x8002u;
    v4->super._encode = sub_239CF1140;
    v4->super._batchEncode = sub_239CF1254;
    v4->super._encodeData = v4;
    v6 = objc_autoreleasePoolPush();
    LODWORD(v7) = 1.0;
    v14 = objc_msgSend_cnnNeuronDescriptorWithType_a_b_(MPSNNNeuronDescriptor, v8, 2, v9, v10, v11, v12, v13, 0.0, v7);
    v15 = [MPSCNNNeuron alloc];
    v5->_neuronFilter = objc_msgSend_initWithDevice_neuronDescriptor_(v15, v16, device, v14, v17, v18, v19, v20);
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSNNInitialGradient;
  v7 = [MPSCNNKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v7[41] = objc_msgSend_copyWithZone_device_(self->_neuronFilter, v8, zone, device, v9, v10, v11, v12);
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNInitialGradient;
  [(MPSCNNKernel *)&v3 dealloc];
}

- (MPSNNInitialGradient)initWithCoder:(id)coder device:(id)device
{
  v24.receiver = self;
  v24.super_class = MPSNNInitialGradient;
  v5 = [(MPSCNNKernel *)&v24 initWithCoder:coder device:?];
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v5->super._checkFlags |= 0x8002u;
  v5->super._encode = sub_239CF1140;
  v5->super._batchEncode = sub_239CF1254;
  v5->super._encodeData = v5;
  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v7 = objc_autoreleasePoolPush();
    LODWORD(v8) = 1.0;
    v15 = objc_msgSend_cnnNeuronDescriptorWithType_a_b_(MPSNNNeuronDescriptor, v9, 2, v10, v11, v12, v13, v14, 0.0, v8);
    v16 = [MPSCNNNeuron alloc];
    v6->_neuronFilter = objc_msgSend_initWithDevice_neuronDescriptor_(v16, v17, device, v15, v18, v19, v20, v21);
    objc_autoreleasePoolPop(v7);
    return v6;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v23 = objc_opt_class();
    NSStringFromClass(v23);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSNNInitialGradient;
  [(MPSCNNKernel *)&v3 encodeWithCoder:coder];
}

@end