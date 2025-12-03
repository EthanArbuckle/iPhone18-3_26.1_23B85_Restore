@interface MTLCaptureScope
- (MTLCaptureScope)initWithDevice:(id)device commandQueue:(id)queue;
- (MTLCaptureScope)initWithDevice:(id)device mtl4CommandQueue:(id)queue;
- (void)dealloc;
@end

@implementation MTLCaptureScope

- (MTLCaptureScope)initWithDevice:(id)device commandQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = MTLCaptureScope;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    v6->_device = device;
    v6->_commandQueue = queue;
  }

  return v6;
}

- (MTLCaptureScope)initWithDevice:(id)device mtl4CommandQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = MTLCaptureScope;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    v6->_device = device;
    v6->_mtl4CommandQueue = queue;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCaptureScope;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

@end