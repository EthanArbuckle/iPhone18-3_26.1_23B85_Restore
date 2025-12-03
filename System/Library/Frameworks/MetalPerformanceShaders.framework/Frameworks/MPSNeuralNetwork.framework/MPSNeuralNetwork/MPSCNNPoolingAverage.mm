@interface MPSCNNPoolingAverage
- (BOOL)pluginSupportsBatchEncode;
- (MPSCNNPoolingAverage)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNPoolingAverage)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNPoolingAverage

- (MPSCNNPoolingAverage)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v24.receiver = self;
  v24.super_class = MPSCNNPoolingAverage;
  v7 = [(MPSCNNPooling *)&v24 initWithDevice:device kernelWidth:kernelWidth kernelHeight:kernelHeight strideInPixelsX:strideInPixelsX strideInPixelsY:strideInPixelsY];
  v15 = v7;
  if (v7)
  {
    v7->_zeroPadSizeX = 0;
    v7->_zeroPadSizeY = 0;
    v7->super.super._encode = sub_239D06554;
    v7->super.super._batchEncode = sub_239D0655C;
    v7->super.super._encodeData = v7;
    v7->super.super._checkFlags |= 0x8422u;
    v16 = objc_msgSend_newPlugin(v7, v8, v9, v10, v11, v12, v13, v14);
    objc_msgSend_setPlugin_(v15, v17, v16, v18, v19, v20, v21, v22);
  }

  return v15;
}

- (BOOL)pluginSupportsBatchEncode
{
  v9 = objc_msgSend_plugin(self, a2, v2, v3, v4, v5, v6, v7);
  if (v9)
  {
    objc_msgSend_plugin(self, v10, v11, v12, v13, v14, v15, v16);
    LOBYTE(v9) = objc_opt_respondsToSelector();
  }

  return v9 & 1;
}

- (MPSCNNPoolingAverage)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v33.receiver = self;
  v33.super_class = MPSCNNPoolingAverage;
  v11 = [(MPSCNNPooling *)&v33 initWithCoder:aDecoder device:device];
  if (v11)
  {
    v11->_zeroPadSizeX = objc_msgSend_decodeInt64ForKey_(aDecoder, v5, @"MPSCNNPooling.padSizeX", v6, v7, v8, v9, v10);
    v11->_zeroPadSizeY = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSCNNPooling.padSizeY", v13, v14, v15, v16, v17);
    v11->super.super._encode = sub_239D06554;
    v11->super.super._batchEncode = sub_239D0655C;
    v11->super.super._encodeData = v11;
    v11->super.super._checkFlags |= 0x8422u;
    v25 = objc_msgSend_newPlugin(v11, v18, v19, v20, v21, v22, v23, v24);
    objc_msgSend_setPlugin_(v11, v26, v25, v27, v28, v29, v30, v31);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v15.receiver = self;
  v15.super_class = MPSCNNPoolingAverage;
  [(MPSCNNPooling *)&v15 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_zeroPadSizeX, @"MPSCNNPooling.padSizeX", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_zeroPadSizeY, @"MPSCNNPooling.padSizeY", v11, v12, v13, v14);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v22.receiver = self;
  v22.super_class = MPSCNNPoolingAverage;
  v5 = [(MPSCNNPooling *)&v22 copyWithZone:zone device:device];
  v13 = v5;
  if (v5)
  {
    *(v5 + 41) = self->_zeroPadSizeX;
    *(v5 + 42) = self->_zeroPadSizeY;
    *(v5 + 36) = sub_239D06554;
    *(v5 + 37) = sub_239D0655C;
    *(v5 + 70) = self->super.super._checkFlags | 0x8422;
    *(v5 + 38) = v5;
    v14 = objc_msgSend_newPlugin(v5, v6, v7, v8, v9, v10, v11, v12);
    objc_msgSend_setPlugin_(v13, v15, v14, v16, v17, v18, v19, v20);
  }

  return v13;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNPoolingAverage;
  v4 = [(MPSCNNPooling *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tzero pad size X: %lu\n\tzero pad size Y:%lu", v6, v7, v8, v9, v10, v4, self->_zeroPadSizeX, self->_zeroPadSizeY);
}

@end