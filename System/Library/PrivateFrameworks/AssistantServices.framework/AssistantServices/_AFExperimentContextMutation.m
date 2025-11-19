@interface _AFExperimentContextMutation
- (_AFExperimentContextMutation)initWithBase:(id)a3;
- (id)getExperimentsByConfigurationIdentifier;
@end

@implementation _AFExperimentContextMutation

- (id)getExperimentsByConfigurationIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_experimentsByConfigurationIdentifier;
  }

  else
  {
    v2 = [(AFExperimentContext *)self->_base experimentsByConfigurationIdentifier];
  }

  return v2;
}

- (_AFExperimentContextMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFExperimentContextMutation;
  v6 = [(_AFExperimentContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end