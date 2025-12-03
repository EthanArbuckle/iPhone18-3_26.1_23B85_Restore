@interface MPSMatrixCopyToImage
- (MPSMatrixCopyToImage)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixCopyToImage)initWithDevice:(id)device dataLayout:(MPSDataLayout)dataLayout;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeBatchToCommandBuffer:(id)buffer encoder:(id)encoder sourceMatrix:(id)matrix destinationImages:(id)images;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix destinationImages:(MPSImageBatch *)destinationImages;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix destinationImages:(id)images;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix destinationImage:(MPSImage *)destinationImage;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix destinationImage:(id)image;
- (void)encodeWithCoder:(id)coder;
- (void)setSourceMatrixOrigin:(MTLOrigin *)sourceMatrixOrigin;
@end

@implementation MPSMatrixCopyToImage

- (MPSMatrixCopyToImage)initWithDevice:(id)device dataLayout:(MPSDataLayout)dataLayout
{
  v6.receiver = self;
  v6.super_class = MPSMatrixCopyToImage;
  result = [(MPSKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_dataLayout = dataLayout;
    result->_sourceMatrixOrigin.y = 0;
    result->_sourceMatrixOrigin.z = 0;
    result->_sourceMatrixOrigin.x = 0;
    result->_sourceMatrixBatchIndex = 0;
  }

  return result;
}

- (MPSMatrixCopyToImage)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v29.receiver = self;
  v29.super_class = MPSMatrixCopyToImage;
  v5 = [(MPSKernel *)&v29 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_dataLayout = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageCopyToMatrix.dataLayout", v7, v8, v9);
    v10->_sourceMatrixBatchIndex = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSImageCopyToMatrix.destinationMatrixBatchIndex", v12, v13, v14);
    v10->_sourceMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSImageCopyToMatrix.destinationMatrixOriginX", v16, v17, v18);
    v10->_sourceMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSImageCopyToMatrix.destinationMatrixOriginY", v20, v21, v22);
    v10->_sourceMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v23, @"MPSImageCopyToMatrix.destinationMatrixOriginZ", v24, v25, v26);
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v28 = objc_opt_class();
    NSStringFromClass(v28);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v20.receiver = self;
  v20.super_class = MPSMatrixCopyToImage;
  [(MPSKernel *)&v20 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy[15], @"MPSImageCopyToMatrix.dataLayout", v6, v7);
  objc_msgSend_encodeInt64_forKey_(coder, v8, selfCopy[14], @"MPSImageCopyToMatrix.destinationMatrixBatchIndex", v9, v10);
  selfCopy += 11;
  objc_msgSend_encodeInt64_forKey_(coder, v11, *selfCopy, @"MPSImageCopyToMatrix.destinationMatrixOriginX", v12, v13);
  objc_msgSend_encodeInt64_forKey_(coder, v14, selfCopy[1], @"MPSImageCopyToMatrix.destinationMatrixOriginY", v15, v16);
  objc_msgSend_encodeInt64_forKey_(coder, v17, selfCopy[2], @"MPSImageCopyToMatrix.destinationMatrixOriginZ", v18, v19);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSMatrixCopyToImage;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 15) = self->_dataLayout;
    *(result + 14) = self->_sourceMatrixBatchIndex;
    *(result + 88) = *&self->_sourceMatrixOrigin.x;
    *(result + 13) = self->_sourceMatrixOrigin.z;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSMatrixCopyToImage;
  v4 = [(MPSKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tMatrixCopyToImage DataLayout:  %lu\n\tSourceMatrixBatchIndex: %lu \n\tSourceMatrixOrigin: %lu %lu %lu", v6, v7, v8, v4, self->_dataLayout, self->_sourceMatrixBatchIndex, self->_sourceMatrixOrigin.x, self->_sourceMatrixOrigin.y, self->_sourceMatrixOrigin.z);
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix destinationImage:(MPSImage *)destinationImage
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v17 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, commandBuffer, 0, v11, v12);
  v32 = v17;
  selfCopy = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v18 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v18 || (v19 = objc_opt_class(), v20 = NSStringFromClass(v19), objc_msgSend_setLabel_(self, v21, v20, v22, v23, v24), (v18 = v20) != 0))
    {
      objc_msgSend_setLabel_(v17, v13, v18, v14, v15, v16);
    }
  }

  v30 = *&self->_sourceMatrixOrigin.x;
  z = self->_sourceMatrixOrigin.z;
  sub_23997464C(self, v17, destinationImage, sourceMatrix, &v30, self->_dataLayout, self->_sourceMatrixBatchIndex);
  objc_msgSend_endEncoding(v17, v25, v26, v27, v28, v29);
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix destinationImage:(id)image
{
  v6 = *&self->_sourceMatrixOrigin.x;
  z = self->_sourceMatrixOrigin.z;
  v7 = v6;
  sub_23997464C(self, encoder, image, matrix, &v7, self->_dataLayout, self->_sourceMatrixBatchIndex);
}

- (void)encodeBatchToCommandBuffer:(id)buffer encoder:(id)encoder sourceMatrix:(id)matrix destinationImages:(id)images
{
  if ((*(**(&self->super.super.isa + *MEMORY[0x277CD7350]) + 56))(*(&self->super.super.isa + *MEMORY[0x277CD7350]), a2))
  {
    *v29 = *&self->_sourceMatrixOrigin.x;
    *&v29[16] = self->_sourceMatrixOrigin.z;
    sub_239974FEC(self, encoder, buffer, images, matrix, v29, self->_dataLayout, self->_sourceMatrixBatchIndex, 0);
  }

  else
  {
    x = self->_sourceMatrixOrigin.x;
    v28 = *&self->_sourceMatrixOrigin.y;
    if (objc_msgSend_count(images, v11, v12, v13, v14, v15))
    {
      v21 = 0;
      do
      {
        v22 = objc_msgSend_objectAtIndexedSubscript_(images, v17, v21, v18, v19, v20);
        *v29 = x;
        *&v29[8] = v28;
        sub_23997464C(self, encoder, v22, matrix, v29, self->_dataLayout, self->_sourceMatrixBatchIndex);
        ++x;
        ++v21;
      }

      while (v21 < objc_msgSend_count(images, v23, v24, v25, v26, v27));
    }
  }
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix destinationImages:(MPSImageBatch *)destinationImages
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v17 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, commandBuffer, 0, v11, v12);
  v30 = v17;
  selfCopy = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v18 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v18 || (v19 = objc_opt_class(), v20 = NSStringFromClass(v19), objc_msgSend_setLabel_(self, v21, v20, v22, v23, v24, v17, self), (v18 = v20) != 0))
    {
      objc_msgSend_setLabel_(v17, v13, v18, v14, v15, v16, v30, selfCopy);
    }
  }

  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceMatrix_destinationImages_(self, v13, commandBuffer, v17, sourceMatrix, destinationImages, v30, selfCopy);
  if (*(&sourceMatrix[3].super.isa + *MEMORY[0x277CD7388]))
  {
    MPSDecrementReadCount(sourceMatrix);
  }

  objc_msgSend_endEncoding(v17, v25, v26, v27, v28, v29);
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix destinationImages:(id)images
{
  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceMatrix_destinationImages_(self, a2, buffer, encoder, matrix, images);
  if (*(matrix + *MEMORY[0x277CD7388] + 24))
  {

    MPSDecrementReadCount(matrix);
  }
}

- (void)setSourceMatrixOrigin:(MTLOrigin *)sourceMatrixOrigin
{
  z = sourceMatrixOrigin->z;
  *&self->_sourceMatrixOrigin.x = *&sourceMatrixOrigin->x;
  self->_sourceMatrixOrigin.z = z;
}

@end