@interface _AFExperimentGroupMutation
- (_AFExperimentGroupMutation)initWithBase:(id)a3;
- (id)getIdentifier;
- (id)getProperties;
- (unint64_t)getAllocation;
@end

@implementation _AFExperimentGroupMutation

- (id)getProperties
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_properties;
  }

  else
  {
    v2 = [(AFExperimentGroup *)self->_base properties];
  }

  return v2;
}

- (unint64_t)getAllocation
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_allocation;
  }

  else
  {
    return [(AFExperimentGroup *)self->_base allocation];
  }
}

- (id)getIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_identifier;
  }

  else
  {
    v2 = [(AFExperimentGroup *)self->_base identifier];
  }

  return v2;
}

- (_AFExperimentGroupMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFExperimentGroupMutation;
  v6 = [(_AFExperimentGroupMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end