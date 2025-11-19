@interface MTLAccelerationStructureDescriptor
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MTLAccelerationStructureDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setUsage:self->_usage];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    return 0;
  }

  v7 = [(MTLAccelerationStructureDescriptor *)self usage];
  return v7 == [a3 usage];
}

@end