@interface MPSCNNPoolingGradient
- (MPSCNNPoolingGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNPoolingGradient)initWithDevice:(id)device;
- (MPSCNNPoolingGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (unint64_t)maxBatchSize;
- (void)encodeWithCoder:(id)coder;
- (void)setKernelWidth:(unint64_t)width kernelHeight:(unint64_t)height strideInPixelsX:(unint64_t)x strideInPixelsY:(unint64_t)y;
- (void)setSourceSize:(MTLSize *)sourceSize;
@end

@implementation MPSCNNPoolingGradient

- (MPSCNNPoolingGradient)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v4 = objc_opt_class();
    NSStringFromClass(v4);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNPoolingGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v12.receiver = self;
  v12.super_class = MPSCNNPoolingGradient;
  result = [(MPSCNNGradientKernel *)&v12 initWithDevice:device];
  if (result)
  {
    result->super.super._primaryKernelWidth = kernelWidth;
    result->super.super._primaryKernelHeight = kernelHeight;
    result->super.super._primaryStrideInPixelsX = strideInPixelsX;
    result->super.super._primaryStrideInPixelsY = strideInPixelsY;
    result->super.super._secondaryStrideInPixelsX = result->super.super._primaryStrideInPixelsX;
    result->super.super._secondaryStrideInPixelsY = result->super.super._primaryStrideInPixelsY;
    result->_sourceSize.width = -1;
    result->_sourceSize.height = -1;
    result->_sourceSize.depth = -1;
    result->super.super._encode = 0;
    result->super.super._batchEncode = 0;
    result->super.super._encodeData = result;
  }

  return result;
}

- (void)setKernelWidth:(unint64_t)width kernelHeight:(unint64_t)height strideInPixelsX:(unint64_t)x strideInPixelsY:(unint64_t)y
{
  self->super.super._primaryKernelWidth = width;
  self->super.super._primaryKernelHeight = height;
  self->super.super._primaryStrideInPixelsX = x;
  self->super.super._primaryStrideInPixelsY = y;
  self->super.super._secondaryStrideInPixelsX = self->super.super._primaryStrideInPixelsX;
  self->super.super._secondaryStrideInPixelsY = self->super.super._primaryStrideInPixelsY;
}

- (unint64_t)maxBatchSize
{
  if (((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7350]))[1477] & 4) != 0)
  {
    return 8;
  }

  else
  {
    return 32;
  }
}

- (MPSCNNPoolingGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v30.receiver = self;
  v30.super_class = MPSCNNPoolingGradient;
  v5 = [(MPSCNNGradientKernel *)&v30 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v13 = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSCNNPoolingGradient.sourceSize.width", v7, v8, v9, v10, v11);
    v20 = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"MPSCNNPoolingGradient.sourceSize.height", v15, v16, v17, v18, v19);
    v27 = objc_msgSend_decodeInt64ForKey_(aDecoder, v21, @"MPSCNNPoolingGradient.sourceSize.depth", v22, v23, v24, v25, v26);
    v12->super.super._secondaryStrideInPixelsX = v12->super.super._primaryStrideInPixelsX;
    v12->super.super._secondaryStrideInPixelsY = v12->super.super._primaryStrideInPixelsY;
    v12->_sourceSize.width = v13;
    v12->_sourceSize.height = v20;
    v12->_sourceSize.depth = v27;
    v12->super.super._checkFlags = 1;
    v12->super.super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v29 = objc_opt_class();
    NSStringFromClass(v29);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v20.receiver = self;
  v20.super_class = MPSCNNPoolingGradient;
  [(MPSCNNGradientKernel *)&v20 encodeWithCoder:?];
  selfCopy += 54;
  objc_msgSend_encodeInt64_forKey_(coder, v5, *selfCopy, @"MPSCNNPoolingGradient.sourceSize.width", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, selfCopy[1], @"MPSCNNPoolingGradient.sourceSize.height", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, selfCopy[2], @"MPSCNNPoolingGradient.sourceSize.depth", v16, v17, v18, v19);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSCNNPoolingGradient;
  result = [(MPSCNNGradientKernel *)&v7 copyWithZone:zone device:device];
  if (result)
  {
    depth = self->_sourceSize.depth;
    *(result + 27) = *&self->_sourceSize.width;
    *(result + 56) = depth;
  }

  return result;
}

- (void)setSourceSize:(MTLSize *)sourceSize
{
  depth = sourceSize->depth;
  *&self->_sourceSize.width = *&sourceSize->width;
  self->_sourceSize.depth = depth;
}

@end