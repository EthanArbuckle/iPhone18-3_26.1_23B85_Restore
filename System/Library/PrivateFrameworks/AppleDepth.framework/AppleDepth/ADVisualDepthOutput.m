@interface ADVisualDepthOutput
+ (id)outputWithDepthForPrimaryPoV:(__CVBuffer *)a3 depthForSecondaryPoV:(__CVBuffer *)a4;
+ (id)outputWithDepthForPrimaryPoV:(__CVBuffer *)a3 depthForSecondaryPoV:(__CVBuffer *)a4 confidenceForPrimaryPoV:(__CVBuffer *)a5 confidenceForSecondaryPoV:(__CVBuffer *)a6 occlusionForPrimaryPoV:(__CVBuffer *)a7 occlusionForSecondaryPoV:(__CVBuffer *)a8;
- (ADVisualDepthOutput)initWithDepthForPrimaryPoV:(__CVBuffer *)a3 depthForSecondaryPoV:(__CVBuffer *)a4 confidenceForPrimaryPoV:(__CVBuffer *)a5 confidenceForSecondaryPoV:(__CVBuffer *)a6 occlusionForPrimaryPoV:(__CVBuffer *)a7 occlusionForSecondaryPoV:(__CVBuffer *)a8;
- (void)addPrimaryCalibration:(id)a3 secondaryCalibration:(id)a4 timestamp:(double)a5;
- (void)dealloc;
@end

@implementation ADVisualDepthOutput

- (void)addPrimaryCalibration:(id)a3 secondaryCalibration:(id)a4 timestamp:(double)a5
{
  v8 = a3;
  v9 = a4;
  self->_timestamp = a5;
  primaryPoVCameraCalibration = self->_primaryPoVCameraCalibration;
  self->_primaryPoVCameraCalibration = v8;
  v12 = v8;

  secondaryPoVCameraCalibration = self->_secondaryPoVCameraCalibration;
  self->_secondaryPoVCameraCalibration = v9;
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

- (ADVisualDepthOutput)initWithDepthForPrimaryPoV:(__CVBuffer *)a3 depthForSecondaryPoV:(__CVBuffer *)a4 confidenceForPrimaryPoV:(__CVBuffer *)a5 confidenceForSecondaryPoV:(__CVBuffer *)a6 occlusionForPrimaryPoV:(__CVBuffer *)a7 occlusionForSecondaryPoV:(__CVBuffer *)a8
{
  v16.receiver = self;
  v16.super_class = ADVisualDepthOutput;
  v14 = [(ADVisualDepthOutput *)&v16 init];
  if (v14)
  {
    v14->_depthForPrimaryPoV = CVPixelBufferRetain(a3);
    v14->_depthForSecondaryPoV = CVPixelBufferRetain(a4);
    v14->_confidenceForPrimaryPoV = CVPixelBufferRetain(a5);
    v14->_confidenceForSecondaryPoV = CVPixelBufferRetain(a6);
    v14->_occlusionForPrimaryPoV = CVPixelBufferRetain(a7);
    v14->_occlusionForSecondaryPoV = CVPixelBufferRetain(a8);
  }

  return v14;
}

+ (id)outputWithDepthForPrimaryPoV:(__CVBuffer *)a3 depthForSecondaryPoV:(__CVBuffer *)a4 confidenceForPrimaryPoV:(__CVBuffer *)a5 confidenceForSecondaryPoV:(__CVBuffer *)a6 occlusionForPrimaryPoV:(__CVBuffer *)a7 occlusionForSecondaryPoV:(__CVBuffer *)a8
{
  v8 = [[ADVisualDepthOutput alloc] initWithDepthForPrimaryPoV:a3 depthForSecondaryPoV:a4 confidenceForPrimaryPoV:a5 confidenceForSecondaryPoV:a6 occlusionForPrimaryPoV:a7 occlusionForSecondaryPoV:a8];

  return v8;
}

+ (id)outputWithDepthForPrimaryPoV:(__CVBuffer *)a3 depthForSecondaryPoV:(__CVBuffer *)a4
{
  v4 = [[ADVisualDepthOutput alloc] initWithDepthForPrimaryPoV:a3 depthForSecondaryPoV:a4 confidenceForPrimaryPoV:0 confidenceForSecondaryPoV:0 occlusionForPrimaryPoV:0 occlusionForSecondaryPoV:0];

  return v4;
}

@end