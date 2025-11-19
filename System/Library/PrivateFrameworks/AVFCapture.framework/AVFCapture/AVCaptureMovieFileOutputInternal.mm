@interface AVCaptureMovieFileOutputInternal
- (AVCaptureMovieFileOutputInternal)init;
- (void)dealloc;
@end

@implementation AVCaptureMovieFileOutputInternal

- (AVCaptureMovieFileOutputInternal)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureMovieFileOutputInternal;
  v2 = [(AVCaptureMovieFileOutputInternal *)&v5 init];
  if (v2)
  {
    *(v2 + 2) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v2 + 3) = objc_alloc_init(MEMORY[0x1E695DF70]);
    CMTimeMake(&v4, 10, 1);
    *(v2 + 32) = v4;
    v2[88] = 0;
    *(v2 + 8) = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2[129] = 0;
  }

  return v2;
}

- (void)dealloc
{
  ct_green_tea_logger_destroy();

  v3.receiver = self;
  v3.super_class = AVCaptureMovieFileOutputInternal;
  [(AVCaptureMovieFileOutputInternal *)&v3 dealloc];
}

@end