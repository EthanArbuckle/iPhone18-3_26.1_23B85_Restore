@interface AVCaptureStillImageRequest
+ (id)request;
- (void)dealloc;
@end

@implementation AVCaptureStillImageRequest

+ (id)request
{
  v2 = objc_alloc_init(AVCaptureStillImageRequest);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureStillImageRequest;
  [(AVCaptureStillImageRequest *)&v3 dealloc];
}

@end