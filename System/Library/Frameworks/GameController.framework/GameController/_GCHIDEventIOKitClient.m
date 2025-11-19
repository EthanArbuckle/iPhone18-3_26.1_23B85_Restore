@interface _GCHIDEventIOKitClient
- (_GCHIDEventIOKitClient)init;
- (_GCHIDEventIOKitClient)initWithClient:(id)a3 queue:(id)a4;
@end

@implementation _GCHIDEventIOKitClient

- (_GCHIDEventIOKitClient)initWithClient:(id)a3 queue:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [_GCHIDEventIOKitClient initWithClient:a2 queue:self];
  }

  v13.receiver = self;
  v13.super_class = _GCHIDEventIOKitClient;
  v10 = [(_GCHIDEventSubject *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_ioClient, a3);
    [v8 setEventCallBack:_HIDEventCallback target:v11 context:0];
  }

  return v11;
}

- (_GCHIDEventIOKitClient)init
{
  [(_GCHIDEventIOKitClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)initWithClient:(uint64_t)a1 queue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCHIDEventIOKitClient.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"client != NULL"}];
}

@end