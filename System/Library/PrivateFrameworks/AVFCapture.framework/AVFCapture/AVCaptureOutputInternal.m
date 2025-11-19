@interface AVCaptureOutputInternal
- (AVCaptureOutputInternal)init;
- (void)dealloc;
@end

@implementation AVCaptureOutputInternal

- (AVCaptureOutputInternal)init
{
  v6.receiver = self;
  v6.super_class = AVCaptureOutputInternal;
  v2 = [(AVCaptureOutputInternal *)&v6 init];
  if (v2)
  {
    *(v2 + 1) = dispatch_queue_create("capture.output.FigCaptureSessionSyncQueue", 0);
    *(v2 + 5) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    *(v2 + 12) = 0;
    v3 = MEMORY[0x1E695EFD0];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *(v2 + 56) = *MEMORY[0x1E695EFD0];
    *(v2 + 72) = v4;
    *(v2 + 88) = *(v3 + 32);
  }

  return v2;
}

- (void)dealloc
{
  figCaptureSession = self->figCaptureSession;
  if (figCaptureSession)
  {
    CFRelease(figCaptureSession);
  }

  v4.receiver = self;
  v4.super_class = AVCaptureOutputInternal;
  [(AVCaptureOutputInternal *)&v4 dealloc];
}

@end