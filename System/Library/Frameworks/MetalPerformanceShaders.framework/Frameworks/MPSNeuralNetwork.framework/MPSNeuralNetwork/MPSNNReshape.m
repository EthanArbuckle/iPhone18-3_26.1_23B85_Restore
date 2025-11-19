@interface MPSNNReshape
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage destinationState:(MPSState *)outState destinationStateIsTemporary:(BOOL)isTemporary reshapedWidth:(NSUInteger)reshapedWidth reshapedHeight:(NSUInteger)reshapedHeight reshapedFeatureChannels:(NSUInteger)reshapedFeatureChannels;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage reshapedWidth:(NSUInteger)reshapedWidth reshapedHeight:(NSUInteger)reshapedHeight reshapedFeatureChannels:(NSUInteger)reshapedFeatureChannels;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages destinationStates:(MPSStateBatch *)outStates destinationStateIsTemporary:(BOOL)isTemporary reshapedWidth:(NSUInteger)reshapedWidth reshapedHeight:(NSUInteger)reshapedHeight reshapedFeatureChannels:(NSUInteger)reshapedFeatureChannels;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages reshapedWidth:(NSUInteger)reshapedWidth reshapedHeight:(NSUInteger)reshapedHeight reshapedFeatureChannels:(NSUInteger)reshapedFeatureChannels;
- (MPSNNReshape)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReshape)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNReshape

- (MPSNNReshape)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNReshape;
  result = [(MPSCNNKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super._encode = sub_239BAD85C;
    result->super._encodeData = result;
    result->super._checkFlags = 2562;
    result->_reshapedWidth = 0;
    result->_reshapedHeight = 0;
    result->_reshapedFeatureChannels = 0;
  }

  return result;
}

- (MPSNNReshape)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v27.receiver = self;
  v27.super_class = MPSNNReshape;
  v5 = [(MPSCNNKernel *)&v27 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_reshapedWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSNNReshape._reshapedWidth;", v7, v8, v9, v10, v11);
    v12->_reshapedHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSNNReshape._reshapedHeight;", v14, v15, v16, v17, v18);
    v12->_reshapedFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSNNReshape._reshapedFeatureChannels;", v20, v21, v22, v23, v24);
    v12->super._encode = sub_239BAD85C;
    v12->super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v26 = objc_opt_class();
    NSStringFromClass(v26);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v20.receiver = self;
  v20.super_class = MPSNNReshape;
  [(MPSCNNKernel *)&v20 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_reshapedWidth, @"MPSNNReshape._reshapedWidth;", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->_reshapedHeight, @"MPSNNReshape._reshapedHeight;", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, self->_reshapedFeatureChannels, @"MPSNNReshape._reshapedFeatureChannels;", v16, v17, v18, v19);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNNReshape;
  result = [(MPSCNNKernel *)&v6 copyWithZone:a3 device:a4];
  *(result + 41) = self->_reshapedWidth;
  *(result + 42) = self->_reshapedHeight;
  *(result + 43) = self->_reshapedFeatureChannels;
  return result;
}

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = MPSNNReshape;
  v3 = [(MPSCNNKernel *)&v11 debugDescription];
  return objc_msgSend_stringWithFormat_(v2, v4, @"%@\n\tReshapeOperation", v5, v6, v7, v8, v9, v3);
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6
{
  v27.receiver = self;
  v27.super_class = MPSNNReshape;
  v7 = [(MPSCNNKernel *)&v27 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 sourceOffset:a6];
  objc_msgSend_setWidth_(v7, v8, self->_reshapedWidth, v9, v10, v11, v12, v13);
  objc_msgSend_setHeight_(v7, v14, self->_reshapedHeight, v15, v16, v17, v18, v19);
  objc_msgSend_setFeatureChannels_(v7, v20, self->_reshapedFeatureChannels, v21, v22, v23, v24, v25);
  return v7;
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage reshapedWidth:(NSUInteger)reshapedWidth reshapedHeight:(NSUInteger)reshapedHeight reshapedFeatureChannels:(NSUInteger)reshapedFeatureChannels
{
  v9 = self->_reshapedWidth;
  v10 = self->_reshapedHeight;
  v11 = self->_reshapedFeatureChannels;
  self->_reshapedWidth = reshapedWidth;
  self->_reshapedHeight = reshapedHeight;
  self->_reshapedFeatureChannels = reshapedFeatureChannels;
  result = objc_msgSend_encodeToCommandBuffer_sourceImage_(self, a2, commandBuffer, sourceImage, reshapedWidth, reshapedHeight, reshapedFeatureChannels, v7);
  self->_reshapedWidth = v9;
  self->_reshapedHeight = v10;
  self->_reshapedFeatureChannels = v11;
  return result;
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage destinationState:(MPSState *)outState destinationStateIsTemporary:(BOOL)isTemporary reshapedWidth:(NSUInteger)reshapedWidth reshapedHeight:(NSUInteger)reshapedHeight reshapedFeatureChannels:(NSUInteger)reshapedFeatureChannels
{
  v10 = self->_reshapedWidth;
  v11 = self->_reshapedHeight;
  v12 = self->_reshapedFeatureChannels;
  self->_reshapedWidth = reshapedWidth;
  self->_reshapedHeight = reshapedHeight;
  self->_reshapedFeatureChannels = reshapedFeatureChannels;
  result = objc_msgSend_encodeToCommandBuffer_sourceImage_destinationState_destinationStateIsTemporary_(self, a2, commandBuffer, sourceImage, outState, isTemporary, reshapedWidth, reshapedHeight);
  self->_reshapedWidth = v10;
  self->_reshapedHeight = v11;
  self->_reshapedFeatureChannels = v12;
  return result;
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages reshapedWidth:(NSUInteger)reshapedWidth reshapedHeight:(NSUInteger)reshapedHeight reshapedFeatureChannels:(NSUInteger)reshapedFeatureChannels
{
  v9 = self->_reshapedWidth;
  v10 = self->_reshapedHeight;
  v11 = self->_reshapedFeatureChannels;
  self->_reshapedWidth = reshapedWidth;
  self->_reshapedHeight = reshapedHeight;
  self->_reshapedFeatureChannels = reshapedFeatureChannels;
  result = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_(self, a2, commandBuffer, sourceImages, reshapedWidth, reshapedHeight, reshapedFeatureChannels, v7);
  self->_reshapedWidth = v9;
  self->_reshapedHeight = v10;
  self->_reshapedFeatureChannels = v11;
  return result;
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages destinationStates:(MPSStateBatch *)outStates destinationStateIsTemporary:(BOOL)isTemporary reshapedWidth:(NSUInteger)reshapedWidth reshapedHeight:(NSUInteger)reshapedHeight reshapedFeatureChannels:(NSUInteger)reshapedFeatureChannels
{
  v10 = self->_reshapedWidth;
  v11 = self->_reshapedHeight;
  v12 = self->_reshapedFeatureChannels;
  self->_reshapedWidth = reshapedWidth;
  self->_reshapedHeight = reshapedHeight;
  self->_reshapedFeatureChannels = reshapedFeatureChannels;
  result = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_destinationStates_destinationStateIsTemporary_(self, a2, commandBuffer, sourceImages, outStates, isTemporary, reshapedWidth, reshapedHeight);
  self->_reshapedWidth = v10;
  self->_reshapedHeight = v11;
  self->_reshapedFeatureChannels = v12;
  return result;
}

@end