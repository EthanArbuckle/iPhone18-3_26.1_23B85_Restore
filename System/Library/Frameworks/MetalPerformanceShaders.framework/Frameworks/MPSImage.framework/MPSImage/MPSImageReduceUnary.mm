@interface MPSImageReduceUnary
- (MPSImageReduceUnary)initWithCoder:(id)coder device:(id)device;
- (MPSImageReduceUnary)initWithDevice:(id)device;
- (MPSImageReduceUnary)initWithDevice:(id)device reduceOperation:(int)operation;
- (MTLRegion)clipRectSource;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSImageReduceUnary

- (MPSImageReduceUnary)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSImageReduceUnary)initWithDevice:(id)device reduceOperation:(int)operation
{
  v8.receiver = self;
  v8.super_class = MPSImageReduceUnary;
  result = [(MPSUnaryImageKernel *)&v8 initWithDevice:device];
  if (result)
  {
    v7 = *(MEMORY[0x277CD7200] + 16);
    v6 = *(MEMORY[0x277CD7200] + 32);
    *&result->_clipRectSource.origin.x = *MEMORY[0x277CD7200];
    *&result->_clipRectSource.origin.z = v7;
    *&result->_clipRectSource.size.height = v6;
    result->_reduceOp = operation;
    result->super._encode = sub_2399498C0;
    result->super._encodeData = result;
  }

  return result;
}

- (MPSImageReduceUnary)initWithCoder:(id)coder device:(id)device
{
  v37.receiver = self;
  v37.super_class = MPSImageReduceUnary;
  v5 = [(MPSUnaryImageKernel *)&v37 initWithCoder:coder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->super._encode = sub_2399498C0;
    v5->super._encodeData = v5;
    v5->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSImageReduce.clipRectSource.origin.x", v7, v8, v9);
    v10->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(coder, v11, @"MPSImageReduce.clipRectSource.origin.y", v12, v13, v14);
    v10->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(coder, v15, @"MPSImageReduce.clipRectSource.origin.z", v16, v17, v18);
    v10->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(coder, v19, @"MPSImageReduce.clipRectSource.size.width", v20, v21, v22);
    v10->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(coder, v23, @"MPSImageReduce.clipRectSource.size.height", v24, v25, v26);
    v10->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(coder, v27, @"MPSImageReduce.clipRectSource.size.depth", v28, v29, v30);
    v10->_reduceOp = objc_msgSend_decodeInt64ForKey_(coder, v31, @"MPSImageReduce.reduceOp", v32, v33, v34);
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v36 = objc_opt_class();
    NSStringFromClass(v36);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v26.receiver = self;
  v26.super_class = MPSImageReduceUnary;
  [(MPSUnaryImageKernel *)&v26 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_clipRectSource.origin.x, @"MPSImageReduce.clipRectSource.origin.x", v6, v7);
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_clipRectSource.origin.y, @"MPSImageReduce.clipRectSource.origin.y", v9, v10);
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_clipRectSource.origin.z, @"MPSImageReduce.clipRectSource.origin.z", v12, v13);
  objc_msgSend_encodeInt64_forKey_(coder, v14, self->_clipRectSource.size.width, @"MPSImageReduce.clipRectSource.size.width", v15, v16);
  objc_msgSend_encodeInt64_forKey_(coder, v17, self->_clipRectSource.size.height, @"MPSImageReduce.clipRectSource.size.height", v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_clipRectSource.size.depth, @"MPSImageReduce.clipRectSource.size.depth", v21, v22);
  objc_msgSend_encodeInt64_forKey_(coder, v23, self->_reduceOp, @"MPSImageReduce.reduceOp", v24, v25);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageReduceUnary;
  result = [(MPSUnaryImageKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    v7 = *&self->_clipRectSource.origin.z;
    v6 = *&self->_clipRectSource.size.height;
    *(result + 13) = *&self->_clipRectSource.origin.x;
    *(result + 14) = v7;
    *(result + 15) = v6;
    *(result + 64) = self->_reduceOp;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageReduceUnary;
  v4 = [(MPSUnaryImageKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tReduceOperation: %lu", v6, v7, v8, v4, self->_reduceOp);
}

- (MTLRegion)clipRectSource
{
  v3 = *&self[4].size.height;
  *&retstr->origin.x = *&self[4].origin.z;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[5].origin.x;
  return self;
}

- (void)setClipRectSource:(MTLRegion *)clipRectSource
{
  v4 = *&clipRectSource->origin.z;
  v3 = *&clipRectSource->size.height;
  *&self->_clipRectSource.origin.x = *&clipRectSource->origin.x;
  *&self->_clipRectSource.origin.z = v4;
  *&self->_clipRectSource.size.height = v3;
}

@end