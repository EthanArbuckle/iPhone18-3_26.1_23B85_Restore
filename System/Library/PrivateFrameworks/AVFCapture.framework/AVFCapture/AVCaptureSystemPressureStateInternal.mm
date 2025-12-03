@interface AVCaptureSystemPressureStateInternal
- (AVCaptureSystemPressureStateInternal)initWithFigLevel:(int)level factors:(unint64_t)factors recommendedFrameRateRangeForPortrait:(id)portrait recommendedFrameRateRangeForPhotoMode:(id)mode;
- (AVFrameRateRange)recommendedFrameRateRangeForPhotoMode;
- (AVFrameRateRange)recommendedFrameRateRangeForPortrait;
- (void)dealloc;
@end

@implementation AVCaptureSystemPressureStateInternal

- (AVFrameRateRange)recommendedFrameRateRangeForPortrait
{
  v2 = self->_recommendedFrameRateRangeForPortrait;

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureSystemPressureStateInternal;
  [(AVCaptureSystemPressureStateInternal *)&v3 dealloc];
}

- (AVCaptureSystemPressureStateInternal)initWithFigLevel:(int)level factors:(unint64_t)factors recommendedFrameRateRangeForPortrait:(id)portrait recommendedFrameRateRangeForPhotoMode:(id)mode
{
  v13.receiver = self;
  v13.super_class = AVCaptureSystemPressureStateInternal;
  v10 = [(AVCaptureSystemPressureStateInternal *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_figLevel = level;
    v10->_factors = factors;
    v10->_recommendedFrameRateRangeForPortrait = portrait;
    v11->_recommendedFrameRateRangeForPhotoMode = mode;
  }

  return v11;
}

- (AVFrameRateRange)recommendedFrameRateRangeForPhotoMode
{
  v2 = self->_recommendedFrameRateRangeForPhotoMode;

  return v2;
}

@end