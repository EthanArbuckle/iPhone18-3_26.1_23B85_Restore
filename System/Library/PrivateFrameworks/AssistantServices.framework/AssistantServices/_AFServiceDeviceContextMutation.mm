@interface _AFServiceDeviceContextMutation
- (_AFServiceDeviceContextMutation)initWithBase:(id)base;
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
    identifier = self->_identifier;
  }

  else
  {
    identifier = [(AFServiceDeviceContext *)self->_base identifier];
  }

  return identifier;
}

- (id)getAssistantIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    assistantIdentifier = self->_assistantIdentifier;
  }

  else
  {
    assistantIdentifier = [(AFServiceDeviceContext *)self->_base assistantIdentifier];
  }

  return assistantIdentifier;
}

- (id)getMediaSystemIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    mediaSystemIdentifier = self->_mediaSystemIdentifier;
  }

  else
  {
    mediaSystemIdentifier = [(AFServiceDeviceContext *)self->_base mediaSystemIdentifier];
  }

  return mediaSystemIdentifier;
}

- (id)getMediaRouteIdentifier
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    mediaRouteIdentifier = self->_mediaRouteIdentifier;
  }

  else
  {
    mediaRouteIdentifier = [(AFServiceDeviceContext *)self->_base mediaRouteIdentifier];
  }

  return mediaRouteIdentifier;
}

- (id)getSharedUserID
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    sharedUserID = self->_sharedUserID;
  }

  else
  {
    sharedUserID = [(AFServiceDeviceContext *)self->_base sharedUserID];
  }

  return sharedUserID;
}

- (id)getRoomName
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    roomName = self->_roomName;
  }

  else
  {
    roomName = [(AFServiceDeviceContext *)self->_base roomName];
  }

  return roomName;
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
    serializedContextByKey = self->_serializedContextByKey;
  }

  else
  {
    serializedContextByKey = [(AFServiceDeviceContext *)self->_base serializedContextByKey];
  }

  return serializedContextByKey;
}

- (id)getMetricsContext
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    metricsContext = self->_metricsContext;
  }

  else
  {
    metricsContext = [(AFServiceDeviceContext *)self->_base metricsContext];
  }

  return metricsContext;
}

- (_AFServiceDeviceContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFServiceDeviceContextMutation;
  v6 = [(_AFServiceDeviceContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end