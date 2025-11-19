@interface ADBinocularDepthOutput
+ (id)outputWithAuxDepth:(__CVBuffer *)a3 auxConfidence:(__CVBuffer *)a4 auxSegmentation:(__CVBuffer *)a5 auxOutputCalibration:(id)a6;
- (ADBinocularDepthOutput)initWithAuxDepth:(__CVBuffer *)a3 auxConfidence:(__CVBuffer *)a4 auxSegmentation:(__CVBuffer *)a5 auxOutputCalibration:(id)a6;
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

- (ADBinocularDepthOutput)initWithAuxDepth:(__CVBuffer *)a3 auxConfidence:(__CVBuffer *)a4 auxSegmentation:(__CVBuffer *)a5 auxOutputCalibration:(id)a6
{
  v11 = a6;
  v14.receiver = self;
  v14.super_class = ADBinocularDepthOutput;
  v12 = [(ADBinocularDepthOutput *)&v14 init];
  if (v12)
  {
    v12->_auxDepth = CVPixelBufferRetain(a3);
    v12->_auxConfidence = CVPixelBufferRetain(a4);
    v12->_auxSegmentation = CVPixelBufferRetain(a5);
    objc_storeStrong(&v12->_auxOutputCalibration, a6);
  }

  return v12;
}

+ (id)outputWithAuxDepth:(__CVBuffer *)a3 auxConfidence:(__CVBuffer *)a4 auxSegmentation:(__CVBuffer *)a5 auxOutputCalibration:(id)a6
{
  v9 = a6;
  v10 = [[ADBinocularDepthOutput alloc] initWithAuxDepth:a3 auxConfidence:a4 auxSegmentation:a5 auxOutputCalibration:v9];

  return v10;
}

@end