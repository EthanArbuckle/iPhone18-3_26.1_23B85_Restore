@interface MPSCNNPoolingL2Norm
- (MPSCNNPoolingL2Norm)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNPoolingL2Norm)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
@end

@implementation MPSCNNPoolingL2Norm

- (MPSCNNPoolingL2Norm)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v24.receiver = self;
  v24.super_class = MPSCNNPoolingL2Norm;
  v7 = [(MPSCNNPooling *)&v24 initWithDevice:device kernelWidth:kernelWidth kernelHeight:kernelHeight strideInPixelsX:strideInPixelsX strideInPixelsY:strideInPixelsY];
  v15 = v7;
  if (v7)
  {
    v7->super.super._encode = sub_239D069E4;
    v7->super.super._batchEncode = sub_239D069EC;
    v7->super.super._encodeData = v7;
    v7->super.super._checkFlags |= 0x8422u;
    v16 = objc_msgSend_newPlugin(v7, v8, v9, v10, v11, v12, v13, v14);
    objc_msgSend_setPlugin_(v15, v17, v16, v18, v19, v20, v21, v22);
  }

  return v15;
}

- (MPSCNNPoolingL2Norm)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v21.receiver = self;
  v21.super_class = MPSCNNPoolingL2Norm;
  v4 = [(MPSCNNPooling *)&v21 initWithCoder:aDecoder device:device];
  v12 = v4;
  if (v4)
  {
    v4->super.super._encode = sub_239D069E4;
    v4->super.super._batchEncode = sub_239D069EC;
    v4->super.super._encodeData = v4;
    v4->super.super._checkFlags |= 0x8422u;
    v13 = objc_msgSend_newPlugin(v4, v5, v6, v7, v8, v9, v10, v11);
    objc_msgSend_setPlugin_(v12, v14, v13, v15, v16, v17, v18, v19);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v22.receiver = self;
  v22.super_class = MPSCNNPoolingL2Norm;
  v5 = [(MPSCNNPooling *)&v22 copyWithZone:a3 device:a4];
  v13 = v5;
  if (v5)
  {
    *(v5 + 36) = sub_239D069E4;
    *(v5 + 37) = sub_239D069EC;
    *(v5 + 38) = v5;
    *(v5 + 70) = self->super.super._checkFlags | 0x8422;
    v14 = objc_msgSend_newPlugin(v5, v6, v7, v8, v9, v10, v11, v12);
    objc_msgSend_setPlugin_(v13, v15, v14, v16, v17, v18, v19, v20);
  }

  return v13;
}

@end