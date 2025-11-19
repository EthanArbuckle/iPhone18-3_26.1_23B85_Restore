@interface _AFClientInfoMutation
- (_AFClientInfoMutation)initWithBase:(id)a3;
- (id)getProcessName;
- (int)getProcessIdentifier;
@end

@implementation _AFClientInfoMutation

- (id)getProcessName
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_processName;
  }

  else
  {
    v2 = [(AFClientInfo *)self->_base processName];
  }

  return v2;
}

- (int)getProcessIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_processIdentifier;
  }

  else
  {
    return [(AFClientInfo *)self->_base processIdentifier];
  }
}

- (_AFClientInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFClientInfoMutation;
  v6 = [(_AFClientInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end