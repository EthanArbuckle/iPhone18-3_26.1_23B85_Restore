@interface MPSTemporaryNDArrayDefaultAllocator
- (MPSTemporaryNDArrayDefaultAllocator)initWithCoder:(id)coder;
@end

@implementation MPSTemporaryNDArrayDefaultAllocator

- (MPSTemporaryNDArrayDefaultAllocator)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = MPSTemporaryNDArrayDefaultAllocator;
  v3 = [(MPSNDArrayDefaultAllocator *)&v13 init];
  if (!v3)
  {
    return v3;
  }

  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v3, v5, v4, v6, v7))
  {
    v3->super._dealloc_ok = 1;

    return objc_msgSend_defaultAllocator(MPSTemporaryNDArray, v8, v9, v10, v11);
  }

  v3->super._dealloc_ok = 0;
  return v3;
}

@end