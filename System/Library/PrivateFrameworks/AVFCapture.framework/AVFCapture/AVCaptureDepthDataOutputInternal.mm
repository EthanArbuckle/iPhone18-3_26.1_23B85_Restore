@interface AVCaptureDepthDataOutputInternal
- (AVCaptureDepthDataOutputInternal)init;
- (void)dealloc;
@end

@implementation AVCaptureDepthDataOutputInternal

- (AVCaptureDepthDataOutputInternal)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureDepthDataOutputInternal;
  v2 = [(AVCaptureDepthDataOutputInternal *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->alwaysDiscardsLateDepthData = 257;
    v2->delegateCallbackHelper = [[AVCaptureDataOutputDelegateCallbackHelper alloc] initWithQueueName:@"com.apple.avfoundation.depthdataoutput.queue" canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:0];
    FigFlatDictionaryGetMakerNoteKeySpace();
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureDepthDataOutputInternal;
  [(AVCaptureDepthDataOutputInternal *)&v3 dealloc];
}

@end