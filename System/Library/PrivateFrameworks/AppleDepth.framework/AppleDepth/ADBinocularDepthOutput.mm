@interface ADBinocularDepthOutput
+ (id)outputWithAuxDepth:(__CVBuffer *)depth auxConfidence:(__CVBuffer *)confidence auxSegmentation:(__CVBuffer *)segmentation auxOutputCalibration:(id)calibration;
- (ADBinocularDepthOutput)initWithAuxDepth:(__CVBuffer *)depth auxConfidence:(__CVBuffer *)confidence auxSegmentation:(__CVBuffer *)segmentation auxOutputCalibration:(id)calibration;
- (void)dealloc;
@end

@implementation ADBinocularDepthOutput

- (void)dealloc
{
  CVPixelBufferRelease(self->_auxDepth);
  CVPixelBufferRelease(self->_auxConfidence);
  CVPixelBufferRelease(self->_auxSegmentation);
  v3.receiver = self;
  v3.super_class = ADBinocularDepthOutput;
  [(ADBinocularDepthOutput *)&v3 dealloc];
}

- (ADBinocularDepthOutput)initWithAuxDepth:(__CVBuffer *)depth auxConfidence:(__CVBuffer *)confidence auxSegmentation:(__CVBuffer *)segmentation auxOutputCalibration:(id)calibration
{
  calibrationCopy = calibration;
  v14.receiver = self;
  v14.super_class = ADBinocularDepthOutput;
  v12 = [(ADBinocularDepthOutput *)&v14 init];
  if (v12)
  {
    v12->_auxDepth = CVPixelBufferRetain(depth);
    v12->_auxConfidence = CVPixelBufferRetain(confidence);
    v12->_auxSegmentation = CVPixelBufferRetain(segmentation);
    objc_storeStrong(&v12->_auxOutputCalibration, calibration);
  }

  return v12;
}

+ (id)outputWithAuxDepth:(__CVBuffer *)depth auxConfidence:(__CVBuffer *)confidence auxSegmentation:(__CVBuffer *)segmentation auxOutputCalibration:(id)calibration
{
  calibrationCopy = calibration;
  v10 = [[ADBinocularDepthOutput alloc] initWithAuxDepth:depth auxConfidence:confidence auxSegmentation:segmentation auxOutputCalibration:calibrationCopy];

  return v10;
}

@end