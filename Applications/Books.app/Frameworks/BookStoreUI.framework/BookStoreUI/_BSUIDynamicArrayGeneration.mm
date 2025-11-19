@interface _BSUIDynamicArrayGeneration
- (_BSUIDynamicArrayGeneration)initWithData:(id)a3;
@end

@implementation _BSUIDynamicArrayGeneration

- (_BSUIDynamicArrayGeneration)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _BSUIDynamicArrayGeneration;
  v5 = [(_BSUIDynamicArrayGeneration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

@end