@interface ADVisualDepthOutput
+ (id)outputWithDepthForPrimaryPoV:(__CVBuffer *)v depthForSecondaryPoV:(__CVBuffer *)poV;
+ (id)outputWithDepthForPrimaryPoV:(__CVBuffer *)v depthForSecondaryPoV:(__CVBuffer *)poV confidenceForPrimaryPoV:(__CVBuffer *)primaryPoV confidenceForSecondaryPoV:(__CVBuffer *)secondaryPoV occlusionForPrimaryPoV:(__CVBuffer *)forPrimaryPoV occlusionForSecondaryPoV:(__CVBuffer *)forSecondaryPoV;
- (ADVisualDepthOutput)initWithDepthForPrimaryPoV:(__CVBuffer *)v depthForSecondaryPoV:(__CVBuffer *)poV confidenceForPrimaryPoV:(__CVBuffer *)primaryPoV confidenceForSecondaryPoV:(__CVBuffer *)secondaryPoV occlusionForPrimaryPoV:(__CVBuffer *)forPrimaryPoV occlusionForSecondaryPoV:(__CVBuffer *)forSecondaryPoV;
- (void)addPrimaryCalibration:(id)calibration secondaryCalibration:(id)secondaryCalibration timestamp:(double)timestamp;
- (void)dealloc;
@end

@implementation ADVisualDepthOutput

- (void)addPrimaryCalibration:(id)calibration secondaryCalibration:(id)secondaryCalibration timestamp:(double)timestamp
{
  calibrationCopy = calibration;
  secondaryCalibrationCopy = secondaryCalibration;
  self->_timestamp = timestamp;
  primaryPoVCameraCalibration = self->_primaryPoVCameraCalibration;
  self->_primaryPoVCameraCalibration = calibrationCopy;
  v12 = calibrationCopy;

  secondaryPoVCameraCalibration = self->_secondaryPoVCameraCalibration;
  self->_secondaryPoVCameraCalibration = secondaryCalibrationCopy;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_depthForPrimaryPoV);
  CVPixelBufferRelease(self->_depthForSecondaryPoV);
  CVPixelBufferRelease(self->_confidenceForPrimaryPoV);
  CVPixelBufferRelease(self->_confidenceForSecondaryPoV);
  CVPixelBufferRelease(self->_occlusionForPrimaryPoV);
  CVPixelBufferRelease(self->_occlusionForSecondaryPoV);
  v3.receiver = self;
  v3.super_class = ADVisualDepthOutput;
  [(ADVisualDepthOutput *)&v3 dealloc];
}

- (ADVisualDepthOutput)initWithDepthForPrimaryPoV:(__CVBuffer *)v depthForSecondaryPoV:(__CVBuffer *)poV confidenceForPrimaryPoV:(__CVBuffer *)primaryPoV confidenceForSecondaryPoV:(__CVBuffer *)secondaryPoV occlusionForPrimaryPoV:(__CVBuffer *)forPrimaryPoV occlusionForSecondaryPoV:(__CVBuffer *)forSecondaryPoV
{
  v16.receiver = self;
  v16.super_class = ADVisualDepthOutput;
  v14 = [(ADVisualDepthOutput *)&v16 init];
  if (v14)
  {
    v14->_depthForPrimaryPoV = CVPixelBufferRetain(v);
    v14->_depthForSecondaryPoV = CVPixelBufferRetain(poV);
    v14->_confidenceForPrimaryPoV = CVPixelBufferRetain(primaryPoV);
    v14->_confidenceForSecondaryPoV = CVPixelBufferRetain(secondaryPoV);
    v14->_occlusionForPrimaryPoV = CVPixelBufferRetain(forPrimaryPoV);
    v14->_occlusionForSecondaryPoV = CVPixelBufferRetain(forSecondaryPoV);
  }

  return v14;
}

+ (id)outputWithDepthForPrimaryPoV:(__CVBuffer *)v depthForSecondaryPoV:(__CVBuffer *)poV confidenceForPrimaryPoV:(__CVBuffer *)primaryPoV confidenceForSecondaryPoV:(__CVBuffer *)secondaryPoV occlusionForPrimaryPoV:(__CVBuffer *)forPrimaryPoV occlusionForSecondaryPoV:(__CVBuffer *)forSecondaryPoV
{
  v8 = [[ADVisualDepthOutput alloc] initWithDepthForPrimaryPoV:v depthForSecondaryPoV:poV confidenceForPrimaryPoV:primaryPoV confidenceForSecondaryPoV:secondaryPoV occlusionForPrimaryPoV:forPrimaryPoV occlusionForSecondaryPoV:forSecondaryPoV];

  return v8;
}

+ (id)outputWithDepthForPrimaryPoV:(__CVBuffer *)v depthForSecondaryPoV:(__CVBuffer *)poV
{
  v4 = [[ADVisualDepthOutput alloc] initWithDepthForPrimaryPoV:v depthForSecondaryPoV:poV confidenceForPrimaryPoV:0 confidenceForSecondaryPoV:0 occlusionForPrimaryPoV:0 occlusionForSecondaryPoV:0];

  return v4;
}

@end