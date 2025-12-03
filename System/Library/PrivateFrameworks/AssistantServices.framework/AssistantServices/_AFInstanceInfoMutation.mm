@interface _AFInstanceInfoMutation
- (_AFInstanceInfoMutation)initWithBase:(id)base;
- (id)getApplicationUUID;
- (id)getInstanceUUID;
- (int64_t)getApplicationType;
@end

@implementation _AFInstanceInfoMutation

- (id)getInstanceUUID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    instanceUUID = self->_instanceUUID;
  }

  else
  {
    instanceUUID = [(AFInstanceInfo *)self->_base instanceUUID];
  }

  return instanceUUID;
}

- (int64_t)getApplicationType
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_applicationType;
  }

  else
  {
    return [(AFInstanceInfo *)self->_base applicationType];
  }
}

- (id)getApplicationUUID
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    applicationUUID = self->_applicationUUID;
  }

  else
  {
    applicationUUID = [(AFInstanceInfo *)self->_base applicationUUID];
  }

  return applicationUUID;
}

- (_AFInstanceInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFInstanceInfoMutation;
  v6 = [(_AFInstanceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end