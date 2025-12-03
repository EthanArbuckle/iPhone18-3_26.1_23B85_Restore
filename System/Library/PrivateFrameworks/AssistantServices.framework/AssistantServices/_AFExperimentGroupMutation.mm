@interface _AFExperimentGroupMutation
- (_AFExperimentGroupMutation)initWithBase:(id)base;
- (id)getIdentifier;
- (id)getProperties;
- (unint64_t)getAllocation;
@end

@implementation _AFExperimentGroupMutation

- (id)getProperties
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    properties = self->_properties;
  }

  else
  {
    properties = [(AFExperimentGroup *)self->_base properties];
  }

  return properties;
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
    identifier = self->_identifier;
  }

  else
  {
    identifier = [(AFExperimentGroup *)self->_base identifier];
  }

  return identifier;
}

- (_AFExperimentGroupMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFExperimentGroupMutation;
  v6 = [(_AFExperimentGroupMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end