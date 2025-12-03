@interface _MTLResourceViewPool
- (_MTLResourceViewPool)initWithDescriptor:(id)descriptor device:(id)device;
- (void)dealloc;
@end

@implementation _MTLResourceViewPool

- (_MTLResourceViewPool)initWithDescriptor:(id)descriptor device:(id)device
{
  v8.receiver = self;
  v8.super_class = _MTLResourceViewPool;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    v6->_resourceViewCount = [descriptor resourceViewCount];
    v6->_device = device;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLResourceViewPool;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

@end