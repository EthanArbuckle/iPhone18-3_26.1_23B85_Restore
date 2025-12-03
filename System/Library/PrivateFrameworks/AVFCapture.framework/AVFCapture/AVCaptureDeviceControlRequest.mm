@interface AVCaptureDeviceControlRequest
+ (id)deviceControlRequestWithCompletionBlock:(id)block;
- (id)_initWithCompletionBlock:(id)block;
- (void)dealloc;
@end

@implementation AVCaptureDeviceControlRequest

+ (id)deviceControlRequestWithCompletionBlock:(id)block
{
  v3 = [objc_alloc(objc_opt_class()) _initWithCompletionBlock:block];

  return v3;
}

- (id)_initWithCompletionBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = AVCaptureDeviceControlRequest;
  v4 = [(AVCaptureDeviceControlRequest *)&v6 init];
  if (v4)
  {
    v4->_completionBlock = [block copy];
    v4->_requestID = atomic_fetch_add_explicit(&sDeviceControlRequestID, 1u, memory_order_relaxed) + 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureDeviceControlRequest;
  [(AVCaptureDeviceControlRequest *)&v3 dealloc];
}

@end