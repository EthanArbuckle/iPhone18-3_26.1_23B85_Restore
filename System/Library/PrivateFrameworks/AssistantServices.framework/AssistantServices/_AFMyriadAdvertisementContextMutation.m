@interface _AFMyriadAdvertisementContextMutation
- (_AFMyriadAdvertisementContextMutation)initWithBase:(id)a3;
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
    v2 = self->_contextData;
  }

  else
  {
    v2 = [(AFMyriadAdvertisementContext *)self->_base contextData];
  }

  return v2;
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

- (_AFMyriadAdvertisementContextMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFMyriadAdvertisementContextMutation;
  v6 = [(_AFMyriadAdvertisementContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end