@interface _AFClientInfoMutation
- (_AFClientInfoMutation)initWithBase:(id)base;
- (id)getProcessName;
- (int)getProcessIdentifier;
@end

@implementation _AFClientInfoMutation

- (id)getProcessName
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    processName = self->_processName;
  }

  else
  {
    processName = [(AFClientInfo *)self->_base processName];
  }

  return processName;
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

- (_AFClientInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFClientInfoMutation;
  v6 = [(_AFClientInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end