@interface _ADDeviceSyncItemMutation
- (_ADDeviceSyncItemMutation)initWithBase:(id)a3;
- (id)getProperties;
- (id)getUUID;
@end

@implementation _ADDeviceSyncItemMutation

- (id)getProperties
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_properties;
  }

  else
  {
    v2 = [(ADDeviceSyncItem *)self->_base properties];
  }

  return v2;
}

- (id)getUUID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_UUID;
  }

  else
  {
    v2 = [(ADDeviceSyncItem *)self->_base UUID];
  }

  return v2;
}

- (_ADDeviceSyncItemMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncItemMutation;
  v6 = [(_ADDeviceSyncItemMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end