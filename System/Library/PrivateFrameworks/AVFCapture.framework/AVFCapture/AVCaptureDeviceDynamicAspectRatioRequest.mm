@interface AVCaptureDeviceDynamicAspectRatioRequest
+ (id)dynamicAspectRatioRequestWithCompletionBlock:(id)a3 requestID:(int)a4;
- (id)_initWithCompletionBlock:(id)a3 requestID:(int)a4;
- (void)dealloc;
@end

@implementation AVCaptureDeviceDynamicAspectRatioRequest

+ (id)dynamicAspectRatioRequestWithCompletionBlock:(id)a3 requestID:(int)a4
{
  v4 = [objc_alloc(objc_opt_class()) _initWithCompletionBlock:a3 requestID:*&a4];

  return v4;
}

- (id)_initWithCompletionBlock:(id)a3 requestID:(int)a4
{
  v8.receiver = self;
  v8.super_class = AVCaptureDeviceDynamicAspectRatioRequest;
  v6 = [(AVCaptureDeviceDynamicAspectRatioRequest *)&v8 init];
  if (v6)
  {
    v6->_dynamicAspectRatioCompletionBlock = [a3 copy];
    v6->super._requestID = a4;
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