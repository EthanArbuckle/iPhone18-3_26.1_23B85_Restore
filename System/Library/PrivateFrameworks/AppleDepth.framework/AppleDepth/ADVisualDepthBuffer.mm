@interface ADVisualDepthBuffer
+ (ADVisualDepthBuffer)inputWithImage:(double)a3 confidence:(double)a4 labels:(double)a5 normals:(uint64_t)a6 calibration:(uint64_t)a7 uuid:(uint64_t)a8 pose:(uint64_t)a9 timestamp:(uint64_t)a10;
+ (id)inputWithImage:(__CVBuffer *)a3 confidence:(__CVBuffer *)a4 calibration:(id)a5;
+ (id)inputWithImage:(__CVBuffer *)a3 confidence:(__CVBuffer *)a4 calibration:(id)a5 uuid:(id)a6;
- (ADVisualDepthBuffer)initWithImage:(__n128)a3 confidence:(__n128)a4 labels:(__n128)a5 normals:(double)a6 calibration:(uint64_t)a7 uuid:(__CVBuffer *)a8 pose:(__CVBuffer *)a9 timestamp:(__CVBuffer *)a10;
- (__n128)setPose:(__n128)a3;
- (void)dealloc;
@end

@implementation ADVisualDepthBuffer

- (__n128)setPose:(__n128)a3
{
  result[4] = a2;
  result[5] = a3;
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

- (ADVisualDepthBuffer)initWithImage:(__n128)a3 confidence:(__n128)a4 labels:(__n128)a5 normals:(double)a6 calibration:(uint64_t)a7 uuid:(__CVBuffer *)a8 pose:(__CVBuffer *)a9 timestamp:(__CVBuffer *)a10
{
  v21 = a12;
  v22 = a13;
  v29.receiver = a1;
  v29.super_class = ADVisualDepthBuffer;
  v23 = [(ADVisualDepthBuffer *)&v29 init];
  if (v23)
  {
    v23->_image = CVPixelBufferRetain(a8);
    v23->_confidence = CVPixelBufferRetain(a9);
    v23->_labels = CVPixelBufferRetain(a10);
    v23->_normals = CVPixelBufferRetain(a11);
    objc_storeStrong(&v23->_calibration, a12);
    objc_storeStrong(&v23->_uuid, a13);
    *&v23[1].super.isa = a2;
    *&v23[1]._confidence = a3;
    *&v23[1]._normals = a4;
    *&v23[1]._uuid = a5;
    v23->_timestamp = a6;
  }

  return v23;
}

+ (ADVisualDepthBuffer)inputWithImage:(double)a3 confidence:(double)a4 labels:(double)a5 normals:(uint64_t)a6 calibration:(uint64_t)a7 uuid:(uint64_t)a8 pose:(uint64_t)a9 timestamp:(uint64_t)a10
{
  v19 = a12;
  v20 = a13;
  v21 = [[ADVisualDepthBuffer alloc] initWithImage:a8 confidence:a9 labels:a10 normals:a11 calibration:v19 uuid:v20 pose:a1 timestamp:a2, a3, a4, a5];

  return v21;
}

+ (id)inputWithImage:(__CVBuffer *)a3 confidence:(__CVBuffer *)a4 calibration:(id)a5 uuid:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [[ADVisualDepthBuffer alloc] initWithImage:a3 confidence:a4 labels:0 normals:0 calibration:v9 uuid:v10 pose:0.0 timestamp:0.0, 0.0, 0.0, 0.0];

  return v11;
}

+ (id)inputWithImage:(__CVBuffer *)a3 confidence:(__CVBuffer *)a4 calibration:(id)a5
{
  v7 = a5;
  v8 = [[ADVisualDepthBuffer alloc] initWithImage:a3 confidence:a4 labels:0 normals:0 calibration:v7 uuid:0 pose:0.0 timestamp:0.0, 0.0, 0.0, 0.0];

  return v8;
}

@end