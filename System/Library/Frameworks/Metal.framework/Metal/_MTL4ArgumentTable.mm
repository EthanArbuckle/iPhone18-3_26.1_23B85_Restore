@interface _MTL4ArgumentTable
- (_MTL4ArgumentTable)initWithDescriptor:(id)descriptor device:(id)device;
@end

@implementation _MTL4ArgumentTable

- (_MTL4ArgumentTable)initWithDescriptor:(id)descriptor device:(id)device
{
  v9.receiver = self;
  v9.super_class = _MTL4ArgumentTable;
  v6 = [(_MTLObjectWithLabel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_device = device;
    -[_MTLObjectWithLabel setLabel:](v6, "setLabel:", [descriptor label]);
  }

  return v7;
}

@end