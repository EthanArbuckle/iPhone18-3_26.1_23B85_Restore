@interface ADVisualDepthBuffer
+ (ADVisualDepthBuffer)inputWithImage:(double)image confidence:(double)confidence labels:(double)labels normals:(uint64_t)normals calibration:(uint64_t)calibration uuid:(uint64_t)uuid pose:(uint64_t)pose timestamp:(uint64_t)self0;
+ (id)inputWithImage:(__CVBuffer *)image confidence:(__CVBuffer *)confidence calibration:(id)calibration;
+ (id)inputWithImage:(__CVBuffer *)image confidence:(__CVBuffer *)confidence calibration:(id)calibration uuid:(id)uuid;
- (ADVisualDepthBuffer)initWithImage:(__n128)image confidence:(__n128)confidence labels:(__n128)labels normals:(double)normals calibration:(uint64_t)calibration uuid:(__CVBuffer *)uuid pose:(__CVBuffer *)pose timestamp:(__CVBuffer *)self0;
- (__n128)setPose:(__n128)pose;
- (void)dealloc;
@end

@implementation ADVisualDepthBuffer

- (__n128)setPose:(__n128)pose
{
  result[4] = a2;
  result[5] = pose;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_image);
  CVPixelBufferRelease(self->_confidence);
  CVPixelBufferRelease(self->_labels);
  CVPixelBufferRelease(self->_normals);
  v3.receiver = self;
  v3.super_class = ADVisualDepthBuffer;
  [(ADVisualDepthBuffer *)&v3 dealloc];
}

- (ADVisualDepthBuffer)initWithImage:(__n128)image confidence:(__n128)confidence labels:(__n128)labels normals:(double)normals calibration:(uint64_t)calibration uuid:(__CVBuffer *)uuid pose:(__CVBuffer *)pose timestamp:(__CVBuffer *)self0
{
  v21 = a12;
  v22 = a13;
  v29.receiver = self;
  v29.super_class = ADVisualDepthBuffer;
  v23 = [(ADVisualDepthBuffer *)&v29 init];
  if (v23)
  {
    v23->_image = CVPixelBufferRetain(uuid);
    v23->_confidence = CVPixelBufferRetain(pose);
    v23->_labels = CVPixelBufferRetain(timestamp);
    v23->_normals = CVPixelBufferRetain(a11);
    objc_storeStrong(&v23->_calibration, a12);
    objc_storeStrong(&v23->_uuid, a13);
    *&v23[1].super.isa = a2;
    *&v23[1]._confidence = image;
    *&v23[1]._normals = confidence;
    *&v23[1]._uuid = labels;
    v23->_timestamp = normals;
  }

  return v23;
}

+ (ADVisualDepthBuffer)inputWithImage:(double)image confidence:(double)confidence labels:(double)labels normals:(uint64_t)normals calibration:(uint64_t)calibration uuid:(uint64_t)uuid pose:(uint64_t)pose timestamp:(uint64_t)self0
{
  v19 = a12;
  v20 = a13;
  labels = [[ADVisualDepthBuffer alloc] initWithImage:uuid confidence:pose labels:timestamp normals:a11 calibration:v19 uuid:v20 pose:self timestamp:a2, image, confidence, labels];

  return labels;
}

+ (id)inputWithImage:(__CVBuffer *)image confidence:(__CVBuffer *)confidence calibration:(id)calibration uuid:(id)uuid
{
  calibrationCopy = calibration;
  uuidCopy = uuid;
  v11 = [[ADVisualDepthBuffer alloc] initWithImage:image confidence:confidence labels:0 normals:0 calibration:calibrationCopy uuid:uuidCopy pose:0.0 timestamp:0.0, 0.0, 0.0, 0.0];

  return v11;
}

+ (id)inputWithImage:(__CVBuffer *)image confidence:(__CVBuffer *)confidence calibration:(id)calibration
{
  calibrationCopy = calibration;
  v8 = [[ADVisualDepthBuffer alloc] initWithImage:image confidence:confidence labels:0 normals:0 calibration:calibrationCopy uuid:0 pose:0.0 timestamp:0.0, 0.0, 0.0, 0.0];

  return v8;
}

@end