@interface _AFExperimentMutation
- (_AFExperimentMutation)initWithBase:(id)a3;
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
    v2 = self->_deploymentGroupProperties;
  }

  else
  {
    v2 = [(AFExperiment *)self->_base deploymentGroupProperties];
  }

  return v2;
}

- (id)getDeploymentGroupIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_deploymentGroupIdentifier;
  }

  else
  {
    v2 = [(AFExperiment *)self->_base deploymentGroupIdentifier];
  }

  return v2;
}

- (id)getConfigurationVersion
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_configurationVersion;
  }

  else
  {
    v2 = [(AFExperiment *)self->_base configurationVersion];
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
    v2 = [(AFExperiment *)self->_base configurationIdentifier];
  }

  return v2;
}

- (_AFExperimentMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFExperimentMutation;
  v6 = [(_AFExperimentMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end