@interface MTL4CommandAllocatorDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4CommandAllocatorDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(MTL4CommandAllocatorDescriptor);
  v5->_label = [(NSString *)self->_label copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(equal))
    {
      v7 = *(equal + 1);
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