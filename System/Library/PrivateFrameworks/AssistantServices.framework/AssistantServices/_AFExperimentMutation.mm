@interface _AFExperimentMutation
- (_AFExperimentMutation)initWithBase:(id)base;
- (id)getConfigurationIdentifier;
- (id)getConfigurationVersion;
- (id)getDeploymentGroupIdentifier;
- (id)getDeploymentGroupProperties;
- (int64_t)getDeploymentReason;
@end

@implementation _AFExperimentMutation

- (int64_t)getDeploymentReason
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_deploymentReason;
  }

  else
  {
    return [(AFExperiment *)self->_base deploymentReason];
  }
}

- (id)getDeploymentGroupProperties
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    deploymentGroupProperties = self->_deploymentGroupProperties;
  }

  else
  {
    deploymentGroupProperties = [(AFExperiment *)self->_base deploymentGroupProperties];
  }

  return deploymentGroupProperties;
}

- (id)getDeploymentGroupIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    deploymentGroupIdentifier = self->_deploymentGroupIdentifier;
  }

  else
  {
    deploymentGroupIdentifier = [(AFExperiment *)self->_base deploymentGroupIdentifier];
  }

  return deploymentGroupIdentifier;
}

- (id)getConfigurationVersion
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    configurationVersion = self->_configurationVersion;
  }

  else
  {
    configurationVersion = [(AFExperiment *)self->_base configurationVersion];
  }

  return configurationVersion;
}

- (id)getConfigurationIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    configurationIdentifier = self->_configurationIdentifier;
  }

  else
  {
    configurationIdentifier = [(AFExperiment *)self->_base configurationIdentifier];
  }

  return configurationIdentifier;
}

- (_AFExperimentMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFExperimentMutation;
  v6 = [(_AFExperimentMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end