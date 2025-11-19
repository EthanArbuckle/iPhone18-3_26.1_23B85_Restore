@interface _AFInstanceInfoMutation
- (_AFInstanceInfoMutation)initWithBase:(id)a3;
- (id)getApplicationUUID;
- (id)getInstanceUUID;
- (int64_t)getApplicationType;
@end

@implementation _AFInstanceInfoMutation

- (id)getInstanceUUID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_instanceUUID;
  }

  else
  {
    v2 = [(AFInstanceInfo *)self->_base instanceUUID];
  }

  return v2;
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
    v2 = self->_applicationUUID;
  }

  else
  {
    v2 = [(AFInstanceInfo *)self->_base applicationUUID];
  }

  return v2;
}

- (_AFInstanceInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFInstanceInfoMutation;
  v6 = [(_AFInstanceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end