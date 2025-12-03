@interface _AFApplicationContextMutation
- (_AFApplicationContextMutation)initWithBase:(id)base;
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
    associatedBundleIdentifier = self->_associatedBundleIdentifier;
  }

  else
  {
    associatedBundleIdentifier = [(AFApplicationContext *)self->_base associatedBundleIdentifier];
  }

  return associatedBundleIdentifier;
}

- (id)getBulletin
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    bulletin = self->_bulletin;
  }

  else
  {
    bulletin = [(AFApplicationContext *)self->_base bulletin];
  }

  return bulletin;
}

- (id)getAceContext
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    aceContext = self->_aceContext;
  }

  else
  {
    aceContext = [(AFApplicationContext *)self->_base aceContext];
  }

  return aceContext;
}

- (id)getContextDictionary
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    contextDictionary = self->_contextDictionary;
  }

  else
  {
    contextDictionary = [(AFApplicationContext *)self->_base contextDictionary];
  }

  return contextDictionary;
}

- (id)getAceContexts
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    aceContexts = self->_aceContexts;
  }

  else
  {
    aceContexts = [(AFApplicationContext *)self->_base aceContexts];
  }

  return aceContexts;
}

- (_AFApplicationContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFApplicationContextMutation;
  v6 = [(_AFApplicationContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end