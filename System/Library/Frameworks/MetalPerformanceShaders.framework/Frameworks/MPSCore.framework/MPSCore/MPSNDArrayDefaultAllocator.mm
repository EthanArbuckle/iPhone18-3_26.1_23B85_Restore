@interface MPSNDArrayDefaultAllocator
- (MPSNDArrayDefaultAllocator)init;
- (MPSNDArrayDefaultAllocator)initWithCoder:(id)coder;
- (id)arrayForCommandBuffer:(id)buffer arrayDescriptor:(id)descriptor kernel:(id)kernel;
- (id)bufferForCommandBuffer:(id)buffer size:(unint64_t)size options:(unint64_t)options kernel:(id)kernel;
- (void)dealloc;
@end

@implementation MPSNDArrayDefaultAllocator

- (MPSNDArrayDefaultAllocator)initWithCoder:(id)coder
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

- (id)arrayForCommandBuffer:(id)buffer arrayDescriptor:(id)descriptor kernel:(id)kernel
{
  v7 = [MPSNDArray alloc];
  v12 = objc_msgSend_device(buffer, v8, v9, v10, v11);
  v15 = objc_msgSend_initWithDevice_descriptor_(v7, v13, v12, descriptor, v14);
  v16 = v15;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22E344130;
  v21[3] = &unk_2787BE7E8;
  v21[4] = v15;
  objc_msgSend_addCompletedHandler_(buffer, v17, v21, v18, v19);
  return v15;
}

- (void)dealloc
{
  if (!self->_dealloc_ok)
  {
    selfCopy = self;
    v3 = MTLReportFailureTypeEnabled();
    self = selfCopy;
    if (v3)
    {
      MTLReportFailure();
      self = selfCopy;
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

- (id)bufferForCommandBuffer:(id)buffer size:(unint64_t)size options:(unint64_t)options kernel:(id)kernel
{
  v8 = objc_msgSend_device(buffer, a2, buffer, size, options, kernel);

  return objc_msgSend_newBufferWithLength_options_(v8, v9, size, options, v10);
}

@end