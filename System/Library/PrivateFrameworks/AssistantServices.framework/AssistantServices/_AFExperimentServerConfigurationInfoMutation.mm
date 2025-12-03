@interface _AFExperimentServerConfigurationInfoMutation
- (_AFExperimentServerConfigurationInfoMutation)initWithBase:(id)base;
- (double)getMaxTimeToSync;
- (id)getConfigurationIdentifier;
- (id)getConfigurationURL;
@end

@implementation _AFExperimentServerConfigurationInfoMutation

- (double)getMaxTimeToSync
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_maxTimeToSync;
  }

  [(AFExperimentServerConfigurationInfo *)self->_base maxTimeToSync];
  return result;
}

- (id)getConfigurationURL
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    configurationURL = self->_configurationURL;
  }

  else
  {
    configurationURL = [(AFExperimentServerConfigurationInfo *)self->_base configurationURL];
  }

  return configurationURL;
}

- (id)getConfigurationIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    configurationIdentifier = self->_configurationIdentifier;
  }

  else
  {
    configurationIdentifier = [(AFExperimentServerConfigurationInfo *)self->_base configurationIdentifier];
  }

  return configurationIdentifier;
}

- (_AFExperimentServerConfigurationInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFExperimentServerConfigurationInfoMutation;
  v6 = [(_AFExperimentServerConfigurationInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end