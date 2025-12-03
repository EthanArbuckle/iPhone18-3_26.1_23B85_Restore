@interface AVCaptureDeviceDynamicAspectRatioRequest
+ (id)dynamicAspectRatioRequestWithCompletionBlock:(id)block requestID:(int)d;
- (id)_initWithCompletionBlock:(id)block requestID:(int)d;
- (void)dealloc;
@end

@implementation AVCaptureDeviceDynamicAspectRatioRequest

+ (id)dynamicAspectRatioRequestWithCompletionBlock:(id)block requestID:(int)d
{
  v4 = [objc_alloc(objc_opt_class()) _initWithCompletionBlock:block requestID:*&d];

  return v4;
}

- (id)_initWithCompletionBlock:(id)block requestID:(int)d
{
  v8.receiver = self;
  v8.super_class = AVCaptureDeviceDynamicAspectRatioRequest;
  v6 = [(AVCaptureDeviceDynamicAspectRatioRequest *)&v8 init];
  if (v6)
  {
    v6->_dynamicAspectRatioCompletionBlock = [block copy];
    v6->super._requestID = d;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureDeviceDynamicAspectRatioRequest;
  [(AVCaptureDeviceControlRequest *)&v3 dealloc];
}

@end