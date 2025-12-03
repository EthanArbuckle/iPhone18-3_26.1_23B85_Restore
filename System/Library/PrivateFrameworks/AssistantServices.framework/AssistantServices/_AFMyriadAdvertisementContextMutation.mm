@interface _AFMyriadAdvertisementContextMutation
- (_AFMyriadAdvertisementContextMutation)initWithBase:(id)base;
- (double)getContextFetchDelay;
- (id)getContextData;
- (unint64_t)getGeneration;
@end

@implementation _AFMyriadAdvertisementContextMutation

- (double)getContextFetchDelay
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_contextFetchDelay;
  }

  [(AFMyriadAdvertisementContext *)self->_base contextFetchDelay];
  return result;
}

- (id)getContextData
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    contextData = self->_contextData;
  }

  else
  {
    contextData = [(AFMyriadAdvertisementContext *)self->_base contextData];
  }

  return contextData;
}

- (unint64_t)getGeneration
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_generation;
  }

  else
  {
    return [(AFMyriadAdvertisementContext *)self->_base generation];
  }
}

- (_AFMyriadAdvertisementContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFMyriadAdvertisementContextMutation;
  v6 = [(_AFMyriadAdvertisementContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end