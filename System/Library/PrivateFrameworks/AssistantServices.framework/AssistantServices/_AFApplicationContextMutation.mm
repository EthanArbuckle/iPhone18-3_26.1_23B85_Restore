@interface _AFApplicationContextMutation
- (_AFApplicationContextMutation)initWithBase:(id)a3;
- (id)getAceContext;
- (id)getAceContexts;
- (id)getAssociatedBundleIdentifier;
- (id)getBulletin;
- (id)getContextDictionary;
@end

@implementation _AFApplicationContextMutation

- (id)getAssociatedBundleIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_associatedBundleIdentifier;
  }

  else
  {
    v2 = [(AFApplicationContext *)self->_base associatedBundleIdentifier];
  }

  return v2;
}

- (id)getBulletin
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_bulletin;
  }

  else
  {
    v2 = [(AFApplicationContext *)self->_base bulletin];
  }

  return v2;
}

- (id)getAceContext
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_aceContext;
  }

  else
  {
    v2 = [(AFApplicationContext *)self->_base aceContext];
  }

  return v2;
}

- (id)getContextDictionary
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_contextDictionary;
  }

  else
  {
    v2 = [(AFApplicationContext *)self->_base contextDictionary];
  }

  return v2;
}

- (id)getAceContexts
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_aceContexts;
  }

  else
  {
    v2 = [(AFApplicationContext *)self->_base aceContexts];
  }

  return v2;
}

- (_AFApplicationContextMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFApplicationContextMutation;
  v6 = [(_AFApplicationContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end