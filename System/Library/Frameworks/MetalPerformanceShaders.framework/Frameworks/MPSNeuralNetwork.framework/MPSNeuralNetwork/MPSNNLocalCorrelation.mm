@interface MPSNNLocalCorrelation
- (MPSNNLocalCorrelation)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNLocalCorrelation)initWithDevice:(id)device windowInX:(NSUInteger)windowInX windowInY:(NSUInteger)windowInY strideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNNLocalCorrelation

- (MPSNNLocalCorrelation)initWithDevice:(id)device windowInX:(NSUInteger)windowInX windowInY:(NSUInteger)windowInY strideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY
{
  v12.receiver = self;
  v12.super_class = MPSNNLocalCorrelation;
  result = [(MPSNNReduceBinary *)&v12 initWithDevice:device reduceOperation:15];
  if (result)
  {
    result->_windowInX = windowInX;
    result->_windowInY = windowInY;
    result->_strideInX = strideInX;
    result->_strideInY = strideInY;
    result->super.super._checkFlags |= 2u;
  }

  return result;
}

- (MPSNNLocalCorrelation)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v31.receiver = self;
  v31.super_class = MPSNNLocalCorrelation;
  v11 = [(MPSNNReduceBinary *)&v31 initWithCoder:aDecoder device:device];
  if (v11)
  {
    v11->_windowInX = objc_msgSend_decodeInt64ForKey_(aDecoder, v5, @"MPSNNReduce.windowInX", v6, v7, v8, v9, v10);
    v11->_windowInY = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSNNReduce.windowInY", v13, v14, v15, v16, v17);
    v11->_strideInX = objc_msgSend_decodeInt64ForKey_(aDecoder, v18, @"MPSNNReduce.strideInX", v19, v20, v21, v22, v23);
    v11->_strideInY = objc_msgSend_decodeInt64ForKey_(aDecoder, v24, @"MPSNNReduce.strideInY", v25, v26, v27, v28, v29);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v25.receiver = self;
  v25.super_class = MPSNNLocalCorrelation;
  [(MPSNNReduceBinary *)&v25 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_windowInX, @"MPSNNReduce.windowInX", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_windowInY, @"MPSNNReduce.windowInY", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_strideInX, @"MPSNNReduce.strideInX", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_strideInY, @"MPSNNReduce.strideInY", v21, v22, v23, v24);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNNLocalCorrelation;
  result = [(MPSNNReduceBinary *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 71) = self->_windowInX;
    *(result + 72) = self->_windowInY;
    *(result + 73) = self->_strideInX;
    *(result + 74) = self->_strideInY;
  }

  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset
{
  v17.receiver = self;
  v17.super_class = MPSNNLocalCorrelation;
  v9 = [(MPSCNNBinaryKernel *)&v17 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method primaryOffset:offset secondaryOffset:secondaryOffset kernelOffset:kernelOffset];
  objc_msgSend_setFeatureChannels_(v9, v10, ((2 * self->_windowInY) | 1) * ((2 * self->_windowInX) | 1), v11, v12, v13, v14, v15);
  return v9;
}

@end