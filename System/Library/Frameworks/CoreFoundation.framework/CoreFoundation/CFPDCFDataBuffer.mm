@interface CFPDCFDataBuffer
- (CFPDCFDataBuffer)initWithCFData:(__CFData *)a3;
- (id)copyXPCData;
- (void)dealloc;
@end

@implementation CFPDCFDataBuffer

- (CFPDCFDataBuffer)initWithCFData:(__CFData *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CFPDCFDataBuffer;
  v4 = [(CFPDCFDataBuffer *)&v7 init];
  if (v4)
  {
    v4->data = CFRetain(a3);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  CFRelease(self->data);
  v4.receiver = self;
  v4.super_class = CFPDCFDataBuffer;
  [(CFPDCFDataBuffer *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (id)copyXPCData
{
  DispatchData = _CFDataCreateDispatchData(self->data);
  v3 = xpc_data_create_with_dispatch_data(DispatchData);
  dispatch_release(DispatchData);
  return v3;
}

@end