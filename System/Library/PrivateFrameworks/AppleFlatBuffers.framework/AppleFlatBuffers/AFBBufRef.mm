@interface AFBBufRef
- (AFBBufRef)initWithData:(id)data;
- (void)dealloc;
@end

@implementation AFBBufRef

- (void)dealloc
{
  cfReleaseBackingDataDeallocator = self->_cfReleaseBackingDataDeallocator;
  if (cfReleaseBackingDataDeallocator)
  {
    CFRelease(cfReleaseBackingDataDeallocator);
  }

  v4.receiver = self;
  v4.super_class = AFBBufRef;
  [(AFBBufRef *)&v4 dealloc];
}

- (AFBBufRef)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = AFBBufRef;
  v6 = [(AFBBufRef *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    context.version = 0;
    context.info = v7;
    memset(&context.retain, 0, 24);
    context.allocate = cfAllocateAlwaysFailing;
    context.reallocate = 0;
    context.deallocate = cfDeallocateBackingObject;
    context.preferredSize = 0;
    v7->_cfReleaseBackingDataDeallocator = CFAllocatorCreate(0, &context);
  }

  return v7;
}

@end