@interface MPSImageCopyToMatrix
- (MPSImageCopyToMatrix)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageCopyToMatrix)initWithDevice:(id)device dataLayout:(MPSDataLayout)dataLayout;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeBatchToCommandBuffer:(id)a3 encoder:(id)a4 sourceImages:(id)a5 destinationMatrix:(id)a6;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages destinationMatrix:(MPSMatrix *)destinationMatrix;
- (void)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 destinationMatrix:(id)a6;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage destinationMatrix:(MPSMatrix *)destinationMatrix;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImage:(id)a5 destinationMatrix:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)setDestinationMatrixOrigin:(MTLOrigin *)destinationMatrixOrigin;
@end

@implementation MPSImageCopyToMatrix

- (MPSImageCopyToMatrix)initWithDevice:(id)device dataLayout:(MPSDataLayout)dataLayout
{
  v6.receiver = self;
  v6.super_class = MPSImageCopyToMatrix;
  result = [(MPSKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_dataLayout = dataLayout;
    result->_destinationMatrixOrigin.y = 0;
    result->_destinationMatrixOrigin.z = 0;
    result->_destinationMatrixOrigin.x = 0;
    result->_destinationMatrixBatchIndex = 0;
  }

  return result;
}

- (MPSImageCopyToMatrix)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v29.receiver = self;
  v29.super_class = MPSImageCopyToMatrix;
  v5 = [(MPSKernel *)&v29 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_dataLayout = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageCopyToMatrix.dataLayout", v7, v8, v9);
    v10->_destinationMatrixBatchIndex = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSImageCopyToMatrix.destinationMatrixBatchIndex", v12, v13, v14);
    v10->_destinationMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSImageCopyToMatrix.destinationMatrixOriginX", v16, v17, v18);
    v10->_destinationMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSImageCopyToMatrix.destinationMatrixOriginY", v20, v21, v22);
    v10->_destinationMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v23, @"MPSImageCopyToMatrix.destinationMatrixOriginZ", v24, v25, v26);
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

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v20.receiver = self;
  v20.super_class = MPSImageCopyToMatrix;
  [(MPSKernel *)&v20 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, v4[15], @"MPSImageCopyToMatrix.dataLayout", v6, v7);
  objc_msgSend_encodeInt64_forKey_(a3, v8, v4[14], @"MPSImageCopyToMatrix.destinationMatrixBatchIndex", v9, v10);
  v4 += 11;
  objc_msgSend_encodeInt64_forKey_(a3, v11, *v4, @"MPSImageCopyToMatrix.destinationMatrixOriginX", v12, v13);
  objc_msgSend_encodeInt64_forKey_(a3, v14, v4[1], @"MPSImageCopyToMatrix.destinationMatrixOriginY", v15, v16);
  objc_msgSend_encodeInt64_forKey_(a3, v17, v4[2], @"MPSImageCopyToMatrix.destinationMatrixOriginZ", v18, v19);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSImageCopyToMatrix;
  result = [(MPSKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 15) = self->_dataLayout;
    *(result + 14) = self->_destinationMatrixBatchIndex;
    *(result + 88) = *&self->_destinationMatrixOrigin.x;
    *(result + 13) = self->_destinationMatrixOrigin.z;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageCopyToMatrix;
  v4 = [(MPSKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tImageCopyToMatrix DataLayout:  %lu\n\tDestinationMatrixBatchIndex: %lu \n\tDestinationMatrixOrigin: %lu %lu %lu", v6, v7, v8, v4, self->_dataLayout, self->_destinationMatrixBatchIndex, self->_destinationMatrixOrigin.x, self->_destinationMatrixOrigin.y, self->_destinationMatrixOrigin.z);
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage destinationMatrix:(MPSMatrix *)destinationMatrix
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v17 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, commandBuffer, 0, v11, v12);
  v32 = v17;
  v33 = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v18 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v18 || (v19 = objc_opt_class(), v20 = NSStringFromClass(v19), objc_msgSend_setLabel_(self, v21, v20, v22, v23, v24), (v18 = v20) != 0))
    {
      objc_msgSend_setLabel_(v17, v13, v18, v14, v15, v16);
    }
  }

  v30 = *&self->_destinationMatrixOrigin.x;
  z = self->_destinationMatrixOrigin.z;
  sub_23997464C(self, v17, sourceImage, destinationMatrix, &v30, self->_dataLayout, self->_destinationMatrixBatchIndex);
  MPSDecrementReadCount(sourceImage);
  objc_msgSend_endEncoding(v17, v25, v26, v27, v28, v29);
}

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImage:(id)a5 destinationMatrix:(id)a6
{
  v7 = *&self->_destinationMatrixOrigin.x;
  z = self->_destinationMatrixOrigin.z;
  v8 = v7;
  sub_23997464C(self, a3, a5, a6, &v8, self->_dataLayout, self->_destinationMatrixBatchIndex);

  MPSDecrementReadCount(a5);
}

- (void)encodeBatchToCommandBuffer:(id)a3 encoder:(id)a4 sourceImages:(id)a5 destinationMatrix:(id)a6
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7350]))[1476])
  {
    destinationMatrixOrigin = self->_destinationMatrixOrigin;
    sub_239974FEC(self, a4, a3, a5, a6, &destinationMatrixOrigin.x, self->_dataLayout, self->_destinationMatrixBatchIndex, 1);
  }

  else
  {
    x = self->_destinationMatrixOrigin.x;
    v22 = *&self->_destinationMatrixOrigin.y;
    if (objc_msgSend_count(a5, a2, a3, a4, a5, a6))
    {
      v15 = 0;
      do
      {
        v16 = objc_msgSend_objectAtIndexedSubscript_(a5, v11, v15, v12, v13, v14);
        destinationMatrixOrigin.x = x;
        *&destinationMatrixOrigin.y = v22;
        sub_23997464C(self, a4, v16, a6, &destinationMatrixOrigin, self->_dataLayout, self->_destinationMatrixBatchIndex);
        ++x;
        ++v15;
      }

      while (v15 < objc_msgSend_count(a5, v17, v18, v19, v20, v21));
    }
  }
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages destinationMatrix:(MPSMatrix *)destinationMatrix
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v17 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, commandBuffer, 0, v11, v12);
  v30 = v17;
  v31 = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v18 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v18 || (v19 = objc_opt_class(), v20 = NSStringFromClass(v19), objc_msgSend_setLabel_(self, v21, v20, v22, v23, v24, v17, self), (v18 = v20) != 0))
    {
      objc_msgSend_setLabel_(v17, v13, v18, v14, v15, v16, v30, v31);
    }
  }

  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceImages_destinationMatrix_(self, v13, commandBuffer, v17, sourceImages, destinationMatrix, v30, v31);
  MPSDecrementReadCount();
  objc_msgSend_endEncoding(v17, v25, v26, v27, v28, v29);
}

- (void)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 destinationMatrix:(id)a6
{
  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceImages_destinationMatrix_(self, a2, a4, a3, a5, a6);

  MPSDecrementReadCount();
}

- (void)setDestinationMatrixOrigin:(MTLOrigin *)destinationMatrixOrigin
{
  z = destinationMatrixOrigin->z;
  *&self->_destinationMatrixOrigin.x = *&destinationMatrixOrigin->x;
  self->_destinationMatrixOrigin.z = z;
}

@end