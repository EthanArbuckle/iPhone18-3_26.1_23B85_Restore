@interface MPSCNNPoolingAverageGradient
- (MPSCNNPoolingAverageGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNPoolingAverageGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNPoolingAverageGradient

- (MPSCNNPoolingAverageGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v15.receiver = self;
  v15.super_class = MPSCNNPoolingAverageGradient;
  result = [(MPSCNNPoolingGradient *)&v15 initWithDevice:device kernelWidth:kernelWidth kernelHeight:kernelHeight strideInPixelsX:strideInPixelsX strideInPixelsY:strideInPixelsY];
  if (result)
  {
    result->_zeroPadSizeX = 0;
    result->_zeroPadSizeY = 0;
    result->super.super.super._encode = sub_239BB258C;
    result->super.super.super._batchEncode = sub_239BB2598;
    result->super.super.super._encodeData = result;
    result->super.super.super._checkFlags |= 0x22u;
    v14 = result;
    objc_msgSend_setPlugin_(result, v8, 0, v9, v10, v11, v12, v13);
    return v14;
  }

  return result;
}

- (MPSCNNPoolingAverageGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v25.receiver = self;
  v25.super_class = MPSCNNPoolingAverageGradient;
  v11 = [(MPSCNNPoolingGradient *)&v25 initWithCoder:aDecoder device:device];
  if (v11)
  {
    v11->_zeroPadSizeX = objc_msgSend_decodeInt64ForKey_(aDecoder, v5, @"MPSCNNPoolingGradient.padSizeX", v6, v7, v8, v9, v10);
    v11->_zeroPadSizeY = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSCNNPoolingGradient.padSizeY", v13, v14, v15, v16, v17);
    v11->super.super.super._encode = sub_239BB258C;
    v11->super.super.super._batchEncode = sub_239BB2598;
    v11->super.super.super._encodeData = v11;
    v11->super.super.super._checkFlags |= 0x22u;
    objc_msgSend_setPlugin_(v11, v18, 0, v19, v20, v21, v22, v23);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v15.receiver = self;
  v15.super_class = MPSCNNPoolingAverageGradient;
  [(MPSCNNPoolingGradient *)&v15 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_zeroPadSizeX, @"MPSCNNPoolingGradient.padSizeX", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_zeroPadSizeY, @"MPSCNNPoolingGradient.padSizeY", v11, v12, v13, v14);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSCNNPoolingAverageGradient;
  result = [(MPSCNNPoolingGradient *)&v13 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 57) = self->_zeroPadSizeX;
    *(result + 58) = self->_zeroPadSizeY;
    *(result + 47) = sub_239BB258C;
    *(result + 48) = sub_239BB2598;
    *(result + 92) = self->super.super.super._checkFlags | 0x22;
    *(result + 49) = result;
    v12 = result;
    objc_msgSend_setPlugin_(result, v6, 0, v7, v8, v9, v10, v11);
    return v12;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNPoolingAverageGradient;
  v4 = [(MPSCNNBinaryKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tzero pad size X: %lu\n\tzero pad size Y:%lu", v6, v7, v8, v9, v10, v4, self->_zeroPadSizeX, self->_zeroPadSizeY);
}

@end