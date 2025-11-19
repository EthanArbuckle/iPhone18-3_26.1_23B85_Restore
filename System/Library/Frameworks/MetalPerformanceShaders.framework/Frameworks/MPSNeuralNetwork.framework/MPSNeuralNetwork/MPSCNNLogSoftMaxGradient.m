@interface MPSCNNLogSoftMaxGradient
- (MPSCNNLogSoftMaxGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNLogSoftMaxGradient)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNLogSoftMaxGradient

- (MPSCNNLogSoftMaxGradient)initWithDevice:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSCNNLogSoftMaxGradient;
  result = [(MPSCNNGradientKernel *)&v14 initWithDevice:?];
  if (result)
  {
    result->super.super._encode = sub_239D454C0;
    result->super.super._batchEncode = sub_239D45798;
    result->super.super._encodeData = result;
    result->super.super._checkFlags = 1026;
    v5 = result;
    v6 = [MPSNNReduceFeatureChannelsSum alloc];
    v13 = objc_msgSend_initWithDevice_(v6, v7, device, v8, v9, v10, v11, v12);
    result = v5;
    v5->_reductionKernel = v13;
  }

  return result;
}

- (MPSCNNLogSoftMaxGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v22.receiver = self;
  v22.super_class = MPSCNNLogSoftMaxGradient;
  v5 = [(MPSCNNGradientKernel *)&v22 initWithCoder:aDecoder device:?];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->super.super._encode = sub_239D454C0;
    v5->super.super._batchEncode = sub_239D45798;
    v5->super.super._encodeData = v5;
    v5->super.super._checkFlags = 1026;
    objc_msgSend_setPlugin_(v5, v6, 0, v7, v8, v9, v10, v11);
    v13 = [MPSNNReduceFeatureChannelsSum alloc];
    v12->_reductionKernel = objc_msgSend_initWithDevice_(v13, v14, device, v15, v16, v17, v18, v19);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v21 = objc_opt_class();
    NSStringFromClass(v21);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSCNNLogSoftMaxGradient;
  [(MPSCNNGradientKernel *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v24.receiver = self;
  v24.super_class = MPSCNNLogSoftMaxGradient;
  v6 = [(MPSCNNGradientKernel *)&v24 copyWithZone:a3 device:a4];
  v13 = v6;
  if (v6)
  {
    v6[47] = sub_239D454C0;
    v6[48] = sub_239D45798;
    v6[49] = v6;
    *(v6 + 92) = self->super.super._checkFlags;
    objc_msgSend_setPlugin_(v6, v7, 0, v8, v9, v10, v11, v12);
    v19 = *MEMORY[0x277CD7350];
    v20 = *(*(v13 + v19) + 16);
    reductionKernel = self->_reductionKernel;
    if ((*(&self->super.super.super.super.isa + v19))[2] == v20)
    {
      v22 = reductionKernel;
    }

    else
    {
      v22 = objc_msgSend_copyWithZone_device_(reductionKernel, v14, a3, v20, v15, v16, v17, v18);
    }

    v13[54] = v22;
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNLogSoftMaxGradient;
  [(MPSCNNBinaryKernel *)&v3 dealloc];
}

@end