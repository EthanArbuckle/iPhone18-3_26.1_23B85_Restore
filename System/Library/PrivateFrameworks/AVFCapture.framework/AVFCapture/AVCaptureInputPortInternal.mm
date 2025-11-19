@interface AVCaptureInputPortInternal
- (AVCaptureInputPortInternal)init;
- (void)dealloc;
@end

@implementation AVCaptureInputPortInternal

- (AVCaptureInputPortInternal)init
{
  v3.receiver = self;
  v3.super_class = AVCaptureInputPortInternal;
  result = [(AVCaptureInputPortInternal *)&v3 init];
  if (result)
  {
    result->enabled = 1;
  }

  return result;
}

- (void)dealloc
{
  self->input = 0;

  formatDescription = self->formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  clock = self->clock;
  if (clock)
  {
    CFRelease(clock);
  }

  v5.receiver = self;
  v5.super_class = AVCaptureInputPortInternal;
  [(AVCaptureInputPortInternal *)&v5 dealloc];
}

@end