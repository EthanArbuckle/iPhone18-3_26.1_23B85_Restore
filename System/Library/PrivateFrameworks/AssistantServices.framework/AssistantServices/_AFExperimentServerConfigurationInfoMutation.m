@interface _AFExperimentServerConfigurationInfoMutation
- (_AFExperimentServerConfigurationInfoMutation)initWithBase:(id)a3;
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
    v2 = self->_configurationURL;
  }

  else
  {
    v2 = [(AFExperimentServerConfigurationInfo *)self->_base configurationURL];
  }

  return v2;
}

- (id)getConfigurationIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_configurationIdentifier;
  }

  else
  {
    v2 = [(AFExperimentServerConfigurationInfo *)self->_base configurationIdentifier];
  }

  return v2;
}

- (_AFExperimentServerConfigurationInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFExperimentServerConfigurationInfoMutation;
  v6 = [(_AFExperimentServerConfigurationInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end