@interface AVCaptureDeviceControlRequest
+ (id)deviceControlRequestWithCompletionBlock:(id)a3;
- (id)_initWithCompletionBlock:(id)a3;
- (void)dealloc;
@end

@implementation AVCaptureDeviceControlRequest

+ (id)deviceControlRequestWithCompletionBlock:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) _initWithCompletionBlock:a3];

  return v3;
}

- (id)_initWithCompletionBlock:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVCaptureDeviceControlRequest;
  v4 = [(AVCaptureDeviceControlRequest *)&v6 init];
  if (v4)
  {
    v4->_completionBlock = [a3 copy];
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