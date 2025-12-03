@interface _AFExperimentContextMutation
- (_AFExperimentContextMutation)initWithBase:(id)base;
- (id)getExperimentsByConfigurationIdentifier;
@end

@implementation _AFExperimentContextMutation

- (id)getExperimentsByConfigurationIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    experimentsByConfigurationIdentifier = self->_experimentsByConfigurationIdentifier;
  }

  else
  {
    experimentsByConfigurationIdentifier = [(AFExperimentContext *)self->_base experimentsByConfigurationIdentifier];
  }

  return experimentsByConfigurationIdentifier;
}

- (_AFExperimentContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFExperimentContextMutation;
  v6 = [(_AFExperimentContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end