@interface _AFExperimentConfigurationMutation
- (_AFExperimentConfigurationMutation)initWithBase:(id)a3;
- (id)getControlGroup;
- (id)getExperimentGroups;
- (id)getIdentifier;
- (id)getSalt;
- (id)getVersion;
- (int64_t)getType;
@end

@implementation _AFExperimentConfigurationMutation

- (id)getSalt
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_salt;
  }

  else
  {
    v2 = [(AFExperimentConfiguration *)self->_base salt];
  }

  return v2;
}

- (id)getExperimentGroups
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_experimentGroups;
  }

  else
  {
    v2 = [(AFExperimentConfiguration *)self->_base experimentGroups];
  }

  return v2;
}

- (id)getControlGroup
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_controlGroup;
  }

  else
  {
    v2 = [(AFExperimentConfiguration *)self->_base controlGroup];
  }

  return v2;
}

- (id)getVersion
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_version;
  }

  else
  {
    v2 = [(AFExperimentConfiguration *)self->_base version];
  }

  return v2;
}

- (id)getIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_identifier;
  }

  else
  {
    v2 = [(AFExperimentConfiguration *)self->_base identifier];
  }

  return v2;
}

- (int64_t)getType
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return [(AFExperimentConfiguration *)self->_base type];
  }
}

- (_AFExperimentConfigurationMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFExperimentConfigurationMutation;
  v6 = [(_AFExperimentConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end