@interface AVCaptureSystemPressureStateInternal
- (AVCaptureSystemPressureStateInternal)initWithFigLevel:(int)a3 factors:(unint64_t)a4 recommendedFrameRateRangeForPortrait:(id)a5 recommendedFrameRateRangeForPhotoMode:(id)a6;
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

- (AVCaptureSystemPressureStateInternal)initWithFigLevel:(int)a3 factors:(unint64_t)a4 recommendedFrameRateRangeForPortrait:(id)a5 recommendedFrameRateRangeForPhotoMode:(id)a6
{
  v13.receiver = self;
  v13.super_class = AVCaptureSystemPressureStateInternal;
  v10 = [(AVCaptureSystemPressureStateInternal *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_figLevel = a3;
    v10->_factors = a4;
    v10->_recommendedFrameRateRangeForPortrait = a5;
    v11->_recommendedFrameRateRangeForPhotoMode = a6;
  }

  return v11;
}

- (AVFrameRateRange)recommendedFrameRateRangeForPhotoMode
{
  v2 = self->_recommendedFrameRateRangeForPhotoMode;

  return v2;
}

@end