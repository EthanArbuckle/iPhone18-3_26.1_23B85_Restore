@interface MTL4CounterHeapDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4CounterHeapDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MTL4CounterHeapDescriptor

- (MTL4CounterHeapDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTL4CounterHeapDescriptor;
  v2 = [(MTL4CounterHeapDescriptor *)&v4 init];
  [(MTL4CounterHeapDescriptor *)v2 reset];
  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_opt_new();
  *(result + 8) = *&self->_type;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(equal) && *(equal + 2) == self->_count && *(equal + 1) == self->_type;
}

- (unint64_t)hash
{
  bzero(&v4, 0x10uLL);
  v4 = *&self->_type;
  return _MTLHashState(&v4, 0x10uLL);
}

@end