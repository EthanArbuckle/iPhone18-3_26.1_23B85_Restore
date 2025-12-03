@interface MPSMatrixSoftMax
- (MPSMatrixSoftMax)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixSoftMax)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixSoftMax)initWithDevice:(id)device;
- (id)debugDescription;
- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix resultMatrix:(MPSMatrix *)resultMatrix;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixSoftMax

- (MPSMatrixSoftMax)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixSoftMax;
  result = [(MPSMatrixUnaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_sourceColumns = -1;
    result->_sourceRows = -1;
  }

  return result;
}

- (MPSMatrixSoftMax)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v21.receiver = self;
  v21.super_class = MPSMatrixSoftMax;
  v5 = [(MPSMatrixUnaryKernel *)&v21 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_sourceColumns = -1;
    v5->_sourceRows = -1;
    v5->_sourceColumns = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPMatrixSoftMax._sourceColumns;", v7, v8, v9, v10, v11);
    v12->_sourceRows = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPMatrixSoftMax._sourceRows", v14, v15, v16, v17, v18);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v20 = objc_opt_class();
    NSStringFromClass(v20);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v15.receiver = self;
  v15.super_class = MPSMatrixSoftMax;
  [(MPSMatrixUnaryKernel *)&v15 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_sourceColumns, @"MPMatrixSoftMax._sourceColumns;", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_sourceRows, @"MPMatrixSoftMax._sourceRows", v11, v12, v13, v14);
}

- (MPSMatrixSoftMax)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSMatrixSoftMax;
  result = [(MPSMatrixUnaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    result->_sourceColumns = self->_sourceColumns;
    result->_sourceRows = self->_sourceRows;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix resultMatrix:(MPSMatrix *)resultMatrix
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v21 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, commandBuffer, 0, v11, v12, v13, v14);
  v38 = v21;
  selfCopy = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v22 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v22 || (v23 = objc_opt_class(), v24 = NSStringFromClass(v23), objc_msgSend_setLabel_(self, v25, v24, v26, v27, v28, v29, v30, v21, self), (v22 = v24) != 0))
    {
      objc_msgSend_setLabel_(v21, v15, v22, v16, v17, v18, v19, v20, v38, selfCopy);
    }
  }

  sub_2399E6218(self, v21, commandBuffer, inputMatrix, resultMatrix, 0, v19, v20);
  if (*(&inputMatrix[3].super.isa + *MEMORY[0x277CD7388]))
  {
    MPSDecrementReadCount(inputMatrix);
  }

  objc_msgSend_endEncoding(v21, v31, v32, v33, v34, v35, v36, v37, v38, selfCopy);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSMatrixSoftMax;
  v4 = [(MPSMatrixUnaryKernel *)&v13 debugDescription];
  sourceRows = self->_sourceRows;
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@\n\tsourceRows:  \t%lu\n\tsourceColumns:\t%lu", v7, v8, v9, v10, v11, v4, sourceRows, self->_sourceColumns);
}

@end