@interface MPSTemporaryImageDefaultAllocator
- (MPSTemporaryImageDefaultAllocator)initWithCoder:(id)a3;
- (id)imageForCommandBuffer:(id)a3 imageDescriptor:(id)a4 kernel:(id)a5;
@end

@implementation MPSTemporaryImageDefaultAllocator

- (id)imageForCommandBuffer:(id)a3 imageDescriptor:(id)a4 kernel:(id)a5
{
  objc_msgSend_setStorageMode_(a4, a2, 2, a4, a5);

  return MEMORY[0x2821F9670](MPSTemporaryImage, sel_temporaryImageWithCommandBuffer_imageDescriptor_, a3, a4, v7);
}

- (MPSTemporaryImageDefaultAllocator)initWithCoder:(id)a3
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