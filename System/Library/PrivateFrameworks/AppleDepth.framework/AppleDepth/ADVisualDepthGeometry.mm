@interface ADVisualDepthGeometry
- (ADVisualDepthGeometry)initWithBuffer:(id)a3 count:(int64_t)a4 offset:(int64_t)a5 stride:(int64_t)a6;
@end

@implementation ADVisualDepthGeometry

- (ADVisualDepthGeometry)initWithBuffer:(id)a3 count:(int64_t)a4 offset:(int64_t)a5 stride:(int64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = ADVisualDepthGeometry;
  v12 = [(ADVisualDepthGeometry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_buffer, a3);
    v13->_count = a4;
    v13->_offset = a5;
    v13->_stride = a6;
  }

  return v13;
}

@end