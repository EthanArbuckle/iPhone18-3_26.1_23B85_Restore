@interface _BSUIDynamicArrayGeneration
- (_BSUIDynamicArrayGeneration)initWithData:(id)data;
@end

@implementation _BSUIDynamicArrayGeneration

- (_BSUIDynamicArrayGeneration)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = _BSUIDynamicArrayGeneration;
  v5 = [(_BSUIDynamicArrayGeneration *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

@end