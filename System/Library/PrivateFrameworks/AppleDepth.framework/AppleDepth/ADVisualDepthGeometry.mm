@interface ADVisualDepthGeometry
- (ADVisualDepthGeometry)initWithBuffer:(id)buffer count:(int64_t)count offset:(int64_t)offset stride:(int64_t)stride;
@end

@implementation ADVisualDepthGeometry

- (ADVisualDepthGeometry)initWithBuffer:(id)buffer count:(int64_t)count offset:(int64_t)offset stride:(int64_t)stride
{
  bufferCopy = buffer;
  v15.receiver = self;
  v15.super_class = ADVisualDepthGeometry;
  v12 = [(ADVisualDepthGeometry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_buffer, buffer);
    v13->_count = count;
    v13->_offset = offset;
    v13->_stride = stride;
  }

  return v13;
}

@end