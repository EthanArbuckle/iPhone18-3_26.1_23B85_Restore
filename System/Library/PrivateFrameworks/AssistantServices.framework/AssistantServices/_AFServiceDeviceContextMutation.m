@interface _AFServiceDeviceContextMutation
- (_AFServiceDeviceContextMutation)initWithBase:(id)a3;
- (id)getAssistantIdentifier;
- (id)getIdentifier;
- (id)getMediaRouteIdentifier;
- (id)getMediaSystemIdentifier;
- (id)getMetricsContext;
- (id)getRoomName;
- (id)getSerializedContextByKey;
- (id)getSharedUserID;
- (int64_t)getProximity;
@end

@implementation _AFServiceDeviceContextMutation

- (id)getIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_identifier;
  }

  else
  {
    v2 = [(AFServiceDeviceContext *)self->_base identifier];
  }

  return v2;
}

- (id)getAssistantIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_assistantIdentifier;
  }

  else
  {
    v2 = [(AFServiceDeviceContext *)self->_base assistantIdentifier];
  }

  return v2;
}

- (id)getMediaSystemIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_mediaSystemIdentifier;
  }

  else
  {
    v2 = [(AFServiceDeviceContext *)self->_base mediaSystemIdentifier];
  }

  return v2;
}

- (id)getMediaRouteIdentifier
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_mediaRouteIdentifier;
  }

  else
  {
    v2 = [(AFServiceDeviceContext *)self->_base mediaRouteIdentifier];
  }

  return v2;
}

- (id)getSharedUserID
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_sharedUserID;
  }

  else
  {
    v2 = [(AFServiceDeviceContext *)self->_base sharedUserID];
  }

  return v2;
}

- (id)getRoomName
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_roomName;
  }

  else
  {
    v2 = [(AFServiceDeviceContext *)self->_base roomName];
  }

  return v2;
}

- (int64_t)getProximity
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_proximity;
  }

  else
  {
    return [(AFServiceDeviceContext *)self->_base proximity];
  }
}

- (id)getSerializedContextByKey
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    v2 = self->_serializedContextByKey;
  }

  else
  {
    v2 = [(AFServiceDeviceContext *)self->_base serializedContextByKey];
  }

  return v2;
}

- (id)getMetricsContext
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    v2 = self->_metricsContext;
  }

  else
  {
    v2 = [(AFServiceDeviceContext *)self->_base metricsContext];
  }

  return v2;
}

- (_AFServiceDeviceContextMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFServiceDeviceContextMutation;
  v6 = [(_AFServiceDeviceContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end