@interface MPSTemporaryImageDefaultAllocator
- (MPSTemporaryImageDefaultAllocator)initWithCoder:(id)coder;
- (id)imageForCommandBuffer:(id)buffer imageDescriptor:(id)descriptor kernel:(id)kernel;
@end

@implementation MPSTemporaryImageDefaultAllocator

- (id)imageForCommandBuffer:(id)buffer imageDescriptor:(id)descriptor kernel:(id)kernel
{
  objc_msgSend_setStorageMode_(descriptor, a2, 2, descriptor, kernel);

  return MEMORY[0x2821F9670](MPSTemporaryImage, sel_temporaryImageWithCommandBuffer_imageDescriptor_, buffer, descriptor, v7);
}

- (MPSTemporaryImageDefaultAllocator)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = MPSTemporaryImageDefaultAllocator;
  v3 = [(MPSImageDefaultAllocator *)&v13 init];
  if (!v3)
  {
    return v3;
  }

  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v3, v5, v4, v6, v7))
  {
    v3->super._dealloc_ok = 1;

    return objc_msgSend_defaultAllocator(MPSTemporaryImage, v8, v9, v10, v11);
  }

  v3->super._dealloc_ok = 0;
  return v3;
}

@end