@interface MPSMatrixLogSoftMax
- (MPSMatrixLogSoftMax)initWithCoder:(id)coder device:(id)device;
- (MPSMatrixLogSoftMax)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)buffer inputMatrix:(id)matrix resultMatrix:(id)resultMatrix;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixLogSoftMax

- (MPSMatrixLogSoftMax)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixLogSoftMax;
  return [(MPSMatrixSoftMax *)&v4 initWithDevice:device];
}

- (MPSMatrixLogSoftMax)initWithCoder:(id)coder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSMatrixLogSoftMax;
  result = [(MPSMatrixSoftMax *)&v7 initWithCoder:coder device:device];
  if (result && *(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    v5 = result;
    if (MTLReportFailureTypeEnabled())
    {
      v6 = objc_opt_class();
      NSStringFromClass(v6);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSMatrixLogSoftMax;
  [(MPSMatrixSoftMax *)&v3 encodeWithCoder:coder];
}

- (void)encodeToCommandBuffer:(id)buffer inputMatrix:(id)matrix resultMatrix:(id)resultMatrix
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v21 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, buffer, 0, v11, v12, v13, v14);
  v38 = v21;
  selfCopy = self;
  if ((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v22 = *(&self->super.super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v22 || (v23 = objc_opt_class(), v24 = NSStringFromClass(v23), objc_msgSend_setLabel_(self, v25, v24, v26, v27, v28, v29, v30, v21, self), (v22 = v24) != 0))
    {
      objc_msgSend_setLabel_(v21, v15, v22, v16, v17, v18, v19, v20, v38, selfCopy);
    }
  }

  sub_2399E6218(self, v21, buffer, matrix, resultMatrix, 1, v19, v20);
  if (*(matrix + *MEMORY[0x277CD7388] + 24))
  {
    MPSDecrementReadCount(matrix);
  }

  objc_msgSend_endEncoding(v21, v31, v32, v33, v34, v35, v36, v37, v38, selfCopy);
}

@end