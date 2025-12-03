@interface _ADDeviceSyncItemMutation
- (_ADDeviceSyncItemMutation)initWithBase:(id)base;
- (id)getProperties;
- (id)getUUID;
@end

@implementation _ADDeviceSyncItemMutation

- (id)getProperties
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    properties = self->_properties;
  }

  else
  {
    properties = [(ADDeviceSyncItem *)self->_base properties];
  }

  return properties;
}

- (id)getUUID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    uUID = self->_UUID;
  }

  else
  {
    uUID = [(ADDeviceSyncItem *)self->_base UUID];
  }

  return uUID;
}

- (_ADDeviceSyncItemMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncItemMutation;
  v6 = [(_ADDeviceSyncItemMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end