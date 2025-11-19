@interface MTL4CommandAllocatorDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4CommandAllocatorDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation MTL4CommandAllocatorDescriptor

- (MTL4CommandAllocatorDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4CommandAllocatorDescriptor;
  return [(MTL4CommandAllocatorDescriptor *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4CommandAllocatorDescriptor;
  [(MTL4CommandAllocatorDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(MTL4CommandAllocatorDescriptor);
  v5->_label = [(NSString *)self->_label copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      v7 = *(a3 + 1);
      if (v7 == self->_label || (v6 = [(NSString *)v7 isEqualToString:?]))
      {
        LOBYTE(v6) = 1;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

@end