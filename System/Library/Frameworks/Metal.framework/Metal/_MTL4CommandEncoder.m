@interface _MTL4CommandEncoder
- (_MTL4CommandEncoder)initWithCommandAllocator:(id)a3;
- (void)dealloc;
@end

@implementation _MTL4CommandEncoder

- (_MTL4CommandEncoder)initWithCommandAllocator:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MTL4CommandEncoder;
  v4 = [(_MTLObjectWithLabel *)&v6 init];
  if (v4)
  {
    v4->_commandAllocator = a3;
    v4->_device = [a3 device];
  }

  return v4;
}

- (void)dealloc
{
  self->_device = 0;

  v3.receiver = self;
  v3.super_class = _MTL4CommandEncoder;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

@end