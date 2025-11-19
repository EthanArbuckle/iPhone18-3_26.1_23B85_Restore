@interface _MTL4ArgumentTable
- (_MTL4ArgumentTable)initWithDescriptor:(id)a3 device:(id)a4;
@end

@implementation _MTL4ArgumentTable

- (_MTL4ArgumentTable)initWithDescriptor:(id)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = _MTL4ArgumentTable;
  v6 = [(_MTLObjectWithLabel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_device = a4;
    -[_MTLObjectWithLabel setLabel:](v6, "setLabel:", [a3 label]);
  }

  return v7;
}

@end