@interface AVCaptureStillImageOutputInternal
- (AVCaptureStillImageOutputInternal)init;
- (void)dealloc;
@end

@implementation AVCaptureStillImageOutputInternal

- (AVCaptureStillImageOutputInternal)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureStillImageOutputInternal;
  v2 = [(AVCaptureStillImageOutputInternal *)&v5 init];
  if (v2)
  {
    v2->stillImageRequests = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    v2->outputSettings = [v3 initWithObjectsAndKeys:{*MEMORY[0x1E6987D00], *MEMORY[0x1E6987CB0], 0}];
    v2->imageDataFormatType = 1785750887;
    v2->noiseReductionEnabled = 1;
    v2->shutterSoundID = 1108;
    v2->SISEnabled = 1;
    v2->prepareRequests = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->cameraSensorOrientationCompensationAutomaticallyEnabled = 1;
    v2->greenTeaLogger = ct_green_tea_logger_create();
  }

  return v2;
}

- (void)dealloc
{
  ct_green_tea_logger_destroy();
  v3.receiver = self;
  v3.super_class = AVCaptureStillImageOutputInternal;
  [(AVCaptureStillImageOutputInternal *)&v3 dealloc];
}

@end