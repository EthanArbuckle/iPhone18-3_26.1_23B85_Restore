@interface _AFEndpointInfoMutation
- (_AFEndpointInfoMutation)initWithBase:(id)base;
- (id)getIdentifier;
- (id)getMediaRouteIdentifier;
@end

@implementation _AFEndpointInfoMutation

- (id)getMediaRouteIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    mediaRouteIdentifier = self->_mediaRouteIdentifier;
  }

  else
  {
    mediaRouteIdentifier = [(AFEndpointInfo *)self->_base mediaRouteIdentifier];
  }

  return mediaRouteIdentifier;
}

- (id)getIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = [(AFEndpointInfo *)self->_base identifier];
  }

  return identifier;
}

- (_AFEndpointInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFEndpointInfoMutation;
  v6 = [(_AFEndpointInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end