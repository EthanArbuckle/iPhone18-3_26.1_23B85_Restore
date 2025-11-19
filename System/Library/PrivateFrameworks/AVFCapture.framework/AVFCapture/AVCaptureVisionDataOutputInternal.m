@interface AVCaptureVisionDataOutputInternal
- (AVCaptureVisionDataOutputInternal)init;
- (void)dealloc;
@end

@implementation AVCaptureVisionDataOutputInternal

- (AVCaptureVisionDataOutputInternal)init
{
  v4.receiver = self;
  v4.super_class = AVCaptureVisionDataOutputInternal;
  v2 = [(AVCaptureVisionDataOutputInternal *)&v4 init];
  if (v2)
  {
    v2->delegateCallbackHelper = [[AVCaptureDataOutputDelegateCallbackHelper alloc] initWithQueueName:@"com.apple.avfoundation.visiondataoutput.queue" canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:0];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureVisionDataOutputInternal;
  [(AVCaptureVisionDataOutputInternal *)&v3 dealloc];
}

@end