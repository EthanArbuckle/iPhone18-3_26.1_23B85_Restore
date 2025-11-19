@interface MTLLogStateDescriptor
- (BOOL)isEqual:(id)a3;
- (MTLLogStateDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation MTLLogStateDescriptor

- (MTLLogStateDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLLogStateDescriptor;
  result = [(MTLLogStateDescriptor *)&v3 init];
  if (result)
  {
    *&result->_level = xmmword_185DC4910;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setLevel:self->_level];
    [v5 setBufferSize:self->_bufferSize];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(a3) && [a3 level] == self->_level && objc_msgSend(a3, "bufferSize") == self->_bufferSize;
}

- (unint64_t)hash
{
  bzero(&v4, 0x10uLL);
  v4 = *&self->_level;
  return _MTLHashState(&v4, 0x10uLL);
}

@end