@interface AVCaptureFileOutputInternal
- (AVCaptureFileOutputInternal)init;
@end

@implementation AVCaptureFileOutputInternal

- (AVCaptureFileOutputInternal)init
{
  v4.receiver = self;
  v4.super_class = AVCaptureFileOutputInternal;
  result = [(AVCaptureFileOutputInternal *)&v4 init];
  if (result)
  {
    v3 = MEMORY[0x1E6960C70];
    *&result->maxRecordedDuration.value = *MEMORY[0x1E6960C70];
    result->maxRecordedDuration.epoch = *(v3 + 16);
  }

  return result;
}

@end