@interface AVCaptureFileOutputDelegateWrapper
+ (id)wrapperWithURL:(id)a3 delegate:(id)a4 settingsID:(int64_t)a5 connections:(id)a6;
- (AVCaptureFileOutputDelegateWrapper)initWithURL:(id)a3 delegate:(id)a4 settingsID:(int64_t)a5 connections:(id)a6;
- (void)dealloc;
@end

@implementation AVCaptureFileOutputDelegateWrapper

+ (id)wrapperWithURL:(id)a3 delegate:(id)a4 settingsID:(int64_t)a5 connections:(id)a6
{
  v6 = [objc_alloc(objc_opt_class()) initWithURL:a3 delegate:a4 settingsID:a5 connections:a6];

  return v6;
}

- (AVCaptureFileOutputDelegateWrapper)initWithURL:(id)a3 delegate:(id)a4 settingsID:(int64_t)a5 connections:(id)a6
{
  v14.receiver = self;
  v14.super_class = AVCaptureFileOutputDelegateWrapper;
  v10 = [(AVCaptureFileOutputDelegateWrapper *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_settingsID = a5;
    v10->_outputFileURL = [a3 copy];
    v11->_connections = a6;
    v12 = objc_alloc_init(MEMORY[0x1E69881A0]);
    v11->_delegateStorage = v12;
    if (a4)
    {
      [(AVWeakReferencingDelegateStorage *)v12 setDelegate:a4 queue:MEMORY[0x1E69E96A0]];
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