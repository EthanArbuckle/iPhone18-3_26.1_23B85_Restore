@interface MPSCNNDilatedPoolingMax
- (MPSCNNDilatedPoolingMax)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNDilatedPoolingMax)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight dilationRateX:(NSUInteger)dilationRateX dilationRateY:(NSUInteger)dilationRateY strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNDilatedPoolingMax

- (MPSCNNDilatedPoolingMax)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight dilationRateX:(NSUInteger)dilationRateX dilationRateY:(NSUInteger)dilationRateY strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v28.receiver = self;
  v28.super_class = MPSCNNDilatedPoolingMax;
  v11 = [(MPSCNNPooling *)&v28 initWithDevice:device kernelWidth:kernelWidth kernelHeight:kernelHeight strideInPixelsX:strideInPixelsX strideInPixelsY:strideInPixelsY];
  v19 = v11;
  if (!v11)
  {
    return v19;
  }

  if (dilationRateX)
  {
    if (dilationRateY)
    {
      v11->super.super._dilationRateX = dilationRateX;
      v11->super.super._dilationRateY = dilationRateY;
      v11->super.super._checkFlags |= 0x48422u;
      v11->super.super._batchEncode = sub_239D06D24;
      v11->super.super._encode = sub_239D06D44;
      v11->super.super._encodeData = v11;
      v20 = objc_msgSend_newPlugin(v11, v12, v13, v14, v15, v16, v17, v18);
      objc_msgSend_setPlugin_(v19, v21, v20, v22, v23, v24, v25, v26);
      return v19;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }
  }

  else if (MTLReportFailureTypeEnabled())
  {
LABEL_9:
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNDilatedPoolingMax)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v22.receiver = self;
  v22.super_class = MPSCNNDilatedPoolingMax;
  v4 = [(MPSCNNPooling *)&v22 initWithCoder:aDecoder device:device];
  v12 = v4;
  if (!v4)
  {
    return v12;
  }

  if (*(&v4->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v4->super.super._checkFlags |= 0x48422u;
    v4->super.super._encode = sub_239D06D44;
    v4->super.super._batchEncode = sub_239D06D24;
    v4->super.super._encodeData = v4;
    v13 = objc_msgSend_newPlugin(v4, v5, v6, v7, v8, v9, v10, v11);
    objc_msgSend_setPlugin_(v12, v14, v13, v15, v16, v17, v18, v19);
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

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSCNNDilatedPoolingMax;
  [(MPSCNNPooling *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v22.receiver = self;
  v22.super_class = MPSCNNDilatedPoolingMax;
  v5 = [(MPSCNNPooling *)&v22 copyWithZone:zone device:device];
  v13 = v5;
  if (v5)
  {
    *(v5 + 29) = self->super.super._dilationRateX;
    *(v5 + 30) = self->super.super._dilationRateY;
    *(v5 + 70) = self->super.super._checkFlags | 0x48422;
    *(v5 + 36) = sub_239D06D44;
    *(v5 + 37) = sub_239D06D24;
    *(v5 + 38) = v5;
    v14 = objc_msgSend_newPlugin(v5, v6, v7, v8, v9, v10, v11, v12);
    objc_msgSend_setPlugin_(v13, v15, v14, v16, v17, v18, v19, v20);
  }

  return v13;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v28.receiver = self;
  v28.super_class = MPSCNNDilatedPoolingMax;
  v4 = [(MPSCNNPooling *)&v28 debugDescription];
  v12 = objc_msgSend_dilationRateX(self, v5, v6, v7, v8, v9, v10, v11);
  v20 = objc_msgSend_dilationRateY(self, v13, v14, v15, v16, v17, v18, v19);
  return objc_msgSend_stringWithFormat_(v3, v21, @"%@\n\tdilationRateX: %lu\tdilationRateY: %lu", v22, v23, v24, v25, v26, v4, v12, v20);
}

@end