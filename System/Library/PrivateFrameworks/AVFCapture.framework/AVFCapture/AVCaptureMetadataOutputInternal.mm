@interface AVCaptureMetadataOutputInternal
- (AVCaptureMetadataOutputInternal)init;
- (void)dealloc;
@end

@implementation AVCaptureMetadataOutputInternal

- (AVCaptureMetadataOutputInternal)init
{
  v4.receiver = self;
  v4.super_class = AVCaptureMetadataOutputInternal;
  v2 = [(AVCaptureMetadataOutputInternal *)&v4 init];
  if (v2)
  {
    v2->delegateCallbackHelper = [[AVCaptureDataOutputDelegateCallbackHelper alloc] initWithQueueName:@"com.apple.avfoundation.metadataoutput.queue" canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:0];
    v2->faceTrackingMaxFaces = 0;
    v2->faceTrackingUsesFaceRecognition = MGGetBoolAnswer();
    v2->previousTwoCMTimesByDetectorType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->faceTrackingFailureFieldOfViewModifier = -1.0;
    v2->maxSynchronizationFrameDelay = 4;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureMetadataOutputInternal;
  [(AVCaptureMetadataOutputInternal *)&v3 dealloc];
}

@end