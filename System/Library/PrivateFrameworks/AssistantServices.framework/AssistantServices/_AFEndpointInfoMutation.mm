@interface _AFEndpointInfoMutation
- (_AFEndpointInfoMutation)initWithBase:(id)a3;
- (id)getIdentifier;
- (id)getMediaRouteIdentifier;
@end

@implementation _AFEndpointInfoMutation

- (id)getMediaRouteIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_mediaRouteIdentifier;
  }

  else
  {
    v2 = [(AFEndpointInfo *)self->_base mediaRouteIdentifier];
  }

  return v2;
}

- (id)getIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_identifier;
  }

  else
  {
    v2 = [(AFEndpointInfo *)self->_base identifier];
  }

  return v2;
}

- (_AFEndpointInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFEndpointInfoMutation;
  v6 = [(_AFEndpointInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end