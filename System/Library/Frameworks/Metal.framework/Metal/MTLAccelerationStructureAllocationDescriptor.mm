@interface MTLAccelerationStructureAllocationDescriptor
- (BOOL)isEqual:(id)equal;
- (MTLAccelerationStructureAllocationDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MTLAccelerationStructureAllocationDescriptor

- (MTLAccelerationStructureAllocationDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureAllocationDescriptor;
  result = [(MTLAccelerationStructureAllocationDescriptor *)&v3 init];
  if (result)
  {
    result->_storageMode = 2;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setStorageMode:self->_storageMode];
  [v4 setForceResourceIndex:self->_forceResourceIndex];
  [v4 setResourceIndex:self->_resourceIndex];
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

  storageMode = [(MTLAccelerationStructureAllocationDescriptor *)self storageMode];
  if (storageMode != [equal storageMode])
  {
    return 0;
  }

  forceResourceIndex = [(MTLAccelerationStructureAllocationDescriptor *)self forceResourceIndex];
  if (forceResourceIndex != [equal forceResourceIndex])
  {
    return 0;
  }

  resourceIndex = [(MTLAccelerationStructureAllocationDescriptor *)self resourceIndex];
  return resourceIndex == [equal resourceIndex];
}

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [(MTLAccelerationStructureAllocationDescriptor *)self storageMode];
  v4[1] = [(MTLAccelerationStructureAllocationDescriptor *)self forceResourceIndex];
  v4[2] = [(MTLAccelerationStructureAllocationDescriptor *)self resourceIndex];
  return _MTLHashState(v4, 0x18uLL);
}

@end