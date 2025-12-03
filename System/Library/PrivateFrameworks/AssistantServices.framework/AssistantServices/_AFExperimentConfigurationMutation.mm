@interface _AFExperimentConfigurationMutation
- (_AFExperimentConfigurationMutation)initWithBase:(id)base;
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
    salt = self->_salt;
  }

  else
  {
    salt = [(AFExperimentConfiguration *)self->_base salt];
  }

  return salt;
}

- (id)getExperimentGroups
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    experimentGroups = self->_experimentGroups;
  }

  else
  {
    experimentGroups = [(AFExperimentConfiguration *)self->_base experimentGroups];
  }

  return experimentGroups;
}

- (id)getControlGroup
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    controlGroup = self->_controlGroup;
  }

  else
  {
    controlGroup = [(AFExperimentConfiguration *)self->_base controlGroup];
  }

  return controlGroup;
}

- (id)getVersion
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    version = self->_version;
  }

  else
  {
    version = [(AFExperimentConfiguration *)self->_base version];
  }

  return version;
}

- (id)getIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = [(AFExperimentConfiguration *)self->_base identifier];
  }

  return identifier;
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

- (_AFExperimentConfigurationMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFExperimentConfigurationMutation;
  v6 = [(_AFExperimentConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end