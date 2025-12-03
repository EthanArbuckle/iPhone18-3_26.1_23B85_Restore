@interface MTLIOAccelFence
- (MTLIOAccelFence)initWithDevice:(id)device fenceIndex:(unsigned int)index;
- (void)dealloc;
@end

@implementation MTLIOAccelFence

- (MTLIOAccelFence)initWithDevice:(id)device fenceIndex:(unsigned int)index
{
  v8.receiver = self;
  v8.super_class = MTLIOAccelFence;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    v6->_device = device;
    v6->_fenceIndex = index;
  }

  return v6;
}

- (void)dealloc
{
  if (self->_fenceIndex)
  {
    [(MTLDevice *)self->_device releaseFenceIndex:?];
  }

  self->_fenceIndex = 0;
  v3.receiver = self;
  v3.super_class = MTLIOAccelFence;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

@end