@interface MTLCaptureScope
- (MTLCaptureScope)initWithDevice:(id)a3 commandQueue:(id)a4;
- (MTLCaptureScope)initWithDevice:(id)a3 mtl4CommandQueue:(id)a4;
- (void)dealloc;
@end

@implementation MTLCaptureScope

- (MTLCaptureScope)initWithDevice:(id)a3 commandQueue:(id)a4
{
  v8.receiver = self;
  v8.super_class = MTLCaptureScope;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    v6->_device = a3;
    v6->_commandQueue = a4;
  }

  return v6;
}

- (MTLCaptureScope)initWithDevice:(id)a3 mtl4CommandQueue:(id)a4
{
  v8.receiver = self;
  v8.super_class = MTLCaptureScope;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    v6->_device = a3;
    v6->_mtl4CommandQueue = a4;
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