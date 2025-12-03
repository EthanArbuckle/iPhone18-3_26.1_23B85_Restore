@interface MTLAccelerationStructureDescriptor
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MTLAccelerationStructureDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setUsage:self->_usage];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    return 0;
  }

  usage = [(MTLAccelerationStructureDescriptor *)self usage];
  return usage == [equal usage];
}

@end