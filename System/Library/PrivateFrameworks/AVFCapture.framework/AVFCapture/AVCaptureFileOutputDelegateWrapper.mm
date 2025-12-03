@interface AVCaptureFileOutputDelegateWrapper
+ (id)wrapperWithURL:(id)l delegate:(id)delegate settingsID:(int64_t)d connections:(id)connections;
- (AVCaptureFileOutputDelegateWrapper)initWithURL:(id)l delegate:(id)delegate settingsID:(int64_t)d connections:(id)connections;
- (void)dealloc;
@end

@implementation AVCaptureFileOutputDelegateWrapper

+ (id)wrapperWithURL:(id)l delegate:(id)delegate settingsID:(int64_t)d connections:(id)connections
{
  v6 = [objc_alloc(objc_opt_class()) initWithURL:l delegate:delegate settingsID:d connections:connections];

  return v6;
}

- (AVCaptureFileOutputDelegateWrapper)initWithURL:(id)l delegate:(id)delegate settingsID:(int64_t)d connections:(id)connections
{
  v14.receiver = self;
  v14.super_class = AVCaptureFileOutputDelegateWrapper;
  v10 = [(AVCaptureFileOutputDelegateWrapper *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_settingsID = d;
    v10->_outputFileURL = [l copy];
    v11->_connections = connections;
    v12 = objc_alloc_init(MEMORY[0x1E69881A0]);
    v11->_delegateStorage = v12;
    if (delegate)
    {
      [(AVWeakReferencingDelegateStorage *)v12 setDelegate:delegate queue:MEMORY[0x1E69E96A0]];
    }
  }

  return v11;
}

- (void)dealloc
{
  pendingDidStopRecordingUnregistrationCaptureSession = self->_pendingDidStopRecordingUnregistrationCaptureSession;
  if (pendingDidStopRecordingUnregistrationCaptureSession)
  {
    CFRelease(pendingDidStopRecordingUnregistrationCaptureSession);
  }

  v4.receiver = self;
  v4.super_class = AVCaptureFileOutputDelegateWrapper;
  [(AVCaptureFileOutputDelegateWrapper *)&v4 dealloc];
}

@end