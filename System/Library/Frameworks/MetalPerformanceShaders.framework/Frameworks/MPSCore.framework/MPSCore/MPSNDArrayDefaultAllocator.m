@interface MPSNDArrayDefaultAllocator
- (MPSNDArrayDefaultAllocator)init;
- (MPSNDArrayDefaultAllocator)initWithCoder:(id)a3;
- (id)arrayForCommandBuffer:(id)a3 arrayDescriptor:(id)a4 kernel:(id)a5;
- (id)bufferForCommandBuffer:(id)a3 size:(unint64_t)a4 options:(unint64_t)a5 kernel:(id)a6;
- (void)dealloc;
@end

@implementation MPSNDArrayDefaultAllocator

- (MPSNDArrayDefaultAllocator)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = MPSNDArrayDefaultAllocator;
  v3 = [(MPSNDArrayDefaultAllocator *)&v13 init];
  if (!v3)
  {
    return v3;
  }

  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v3, v5, v4, v6, v7))
  {
    v3->_dealloc_ok = 1;

    return objc_msgSend_defaultAllocator(MPSNDArray, v8, v9, v10, v11);
  }

  v3->_dealloc_ok = 0;
  return v3;
}

- (id)arrayForCommandBuffer:(id)a3 arrayDescriptor:(id)a4 kernel:(id)a5
{
  v7 = [MPSNDArray alloc];
  v12 = objc_msgSend_device(a3, v8, v9, v10, v11);
  v15 = objc_msgSend_initWithDevice_descriptor_(v7, v13, v12, a4, v14);
  v16 = v15;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22E344130;
  v21[3] = &unk_2787BE7E8;
  v21[4] = v15;
  objc_msgSend_addCompletedHandler_(a3, v17, v21, v18, v19);
  return v15;
}

- (void)dealloc
{
  if (!self->_dealloc_ok)
  {
    v2 = self;
    v3 = MTLReportFailureTypeEnabled();
    self = v2;
    if (v3)
    {
      MTLReportFailure();
      self = v2;
    }
  }

  v4.receiver = self;
  v4.super_class = MPSNDArrayDefaultAllocator;
  [(MPSNDArrayDefaultAllocator *)&v4 dealloc];
}

- (MPSNDArrayDefaultAllocator)init
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayDefaultAllocator;
  result = [(MPSNDArrayDefaultAllocator *)&v3 init];
  if (result)
  {
    result->_dealloc_ok = 0;
  }

  return result;
}

- (id)bufferForCommandBuffer:(id)a3 size:(unint64_t)a4 options:(unint64_t)a5 kernel:(id)a6
{
  v8 = objc_msgSend_device(a3, a2, a3, a4, a5, a6);

  return objc_msgSend_newBufferWithLength_options_(v8, v9, a4, a5, v10);
}

@end