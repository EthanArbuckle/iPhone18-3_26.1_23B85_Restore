@interface MPSNNReduceUnary
- (MPSNNReduceUnary)initWithCoder:(id)coder device:(id)device;
- (MPSNNReduceUnary)initWithDevice:(id)device;
- (MPSNNReduceUnary)initWithDevice:(id)device reduceOperation:(int)operation;
- (MTLRegion)clipRectSource;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSNNReduceUnary

- (MPSNNReduceUnary)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSNNReduceUnary)initWithDevice:(id)device reduceOperation:(int)operation
{
  v8.receiver = self;
  v8.super_class = MPSNNReduceUnary;
  result = [(MPSCNNKernel *)&v8 initWithDevice:device];
  if (result)
  {
    v7 = *(MEMORY[0x277CD7200] + 16);
    v6 = *(MEMORY[0x277CD7200] + 32);
    *&result->_clipRectSource.origin.x = *MEMORY[0x277CD7200];
    *&result->_clipRectSource.origin.z = v7;
    *&result->_clipRectSource.size.height = v6;
    result->_reduceOp = operation;
    result->_weightValue = 1.0;
    result->super._encode = sub_239D22058;
    result->super._batchEncode = sub_239D222C4;
    result->super._encodeData = result;
    result->super._checkFlags = 2560;
  }

  return result;
}

- (MPSNNReduceUnary)initWithCoder:(id)coder device:(id)device
{
  v58.receiver = self;
  v58.super_class = MPSNNReduceUnary;
  v5 = [(MPSCNNKernel *)&v58 initWithCoder:coder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->super._encode = sub_239D22058;
    v5->super._batchEncode = sub_239D222C4;
    v5->super._encodeData = v5;
    v5->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSNNReduce.clipRectSource.origin.x", v7, v8, v9, v10, v11);
    v12->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(coder, v13, @"MPSNNReduce.clipRectSource.origin.y", v14, v15, v16, v17, v18);
    v12->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(coder, v19, @"MPSNNReduce.clipRectSource.origin.z", v20, v21, v22, v23, v24);
    v12->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(coder, v25, @"MPSNNReduce.clipRectSource.size.width", v26, v27, v28, v29, v30);
    v12->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(coder, v31, @"MPSNNReduce.clipRectSource.size.height", v32, v33, v34, v35, v36);
    v12->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(coder, v37, @"MPSNNReduce.clipRectSource.size.depth", v38, v39, v40, v41, v42);
    v12->_reduceOp = objc_msgSend_decodeInt64ForKey_(coder, v43, @"MPSNNReduce.reduceOp", v44, v45, v46, v47, v48);
    objc_msgSend_decodeFloatForKey_(coder, v49, @"MPSNNReduce.weight", v50, v51, v52, v53, v54);
    v12->_weightValue = v55;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v57 = objc_opt_class();
    NSStringFromClass(v57);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v47.receiver = self;
  v47.super_class = MPSNNReduceUnary;
  [(MPSCNNKernel *)&v47 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_clipRectSource.origin.x, @"MPSNNReduce.clipRectSource.origin.x", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_clipRectSource.origin.y, @"MPSNNReduce.clipRectSource.origin.y", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_clipRectSource.origin.z, @"MPSNNReduce.clipRectSource.origin.z", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_clipRectSource.size.width, @"MPSNNReduce.clipRectSource.size.width", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(coder, v25, self->_clipRectSource.size.height, @"MPSNNReduce.clipRectSource.size.height", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(coder, v30, self->_clipRectSource.size.depth, @"MPSNNReduce.clipRectSource.size.depth", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(coder, v35, self->_reduceOp, @"MPSNNReduce.reduceOp", v36, v37, v38, v39);
  *&v40 = self->_weightValue;
  objc_msgSend_encodeFloat_forKey_(coder, v41, @"MPSNNReduce.weight", v42, v43, v44, v45, v46, v40);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNNReduceUnary;
  result = [(MPSCNNKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    v7 = *&self->_clipRectSource.origin.z;
    v6 = *&self->_clipRectSource.size.height;
    *(result + 328) = *&self->_clipRectSource.origin.x;
    *(result + 344) = v7;
    *(result + 360) = v6;
    *(result + 94) = self->_reduceOp;
    *(result + 95) = LODWORD(self->_weightValue);
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNReduceUnary;
  v4 = [(MPSCNNKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tReduceOperation: %lu", v6, v7, v8, v9, v10, v4, self->_reduceOp);
}

- (MTLRegion)clipRectSource
{
  v3 = *&self[7].origin.y;
  *&retstr->origin.x = *&self[6].size.depth;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[7].size.width;
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