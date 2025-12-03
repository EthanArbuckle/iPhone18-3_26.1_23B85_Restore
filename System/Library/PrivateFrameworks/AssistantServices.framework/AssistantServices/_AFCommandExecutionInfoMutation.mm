@interface _AFCommandExecutionInfoMutation
- (_AFCommandExecutionInfoMutation)initWithBase:(id)base;
- (id)getCurrentHomeInfo;
- (id)getDeviceRestrictions;
- (id)getEndpointInfo;
- (id)getExecutionID;
- (id)getInstanceInfo;
- (id)getOriginPeerInfo;
- (id)getRequestHandlingContextSnapshot;
- (id)getRequestID;
- (id)getSpeechInfo;
- (id)getTurnId;
- (id)getUserInfo;
@end

@implementation _AFCommandExecutionInfoMutation

- (id)getExecutionID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    executionID = self->_executionID;
  }

  else
  {
    executionID = [(AFCommandExecutionInfo *)self->_base executionID];
  }

  return executionID;
}

- (id)getRequestID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    requestID = self->_requestID;
  }

  else
  {
    requestID = [(AFCommandExecutionInfo *)self->_base requestID];
  }

  return requestID;
}

- (id)getOriginPeerInfo
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    originPeerInfo = self->_originPeerInfo;
  }

  else
  {
    originPeerInfo = [(AFCommandExecutionInfo *)self->_base originPeerInfo];
  }

  return originPeerInfo;
}

- (id)getCurrentHomeInfo
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    currentHomeInfo = self->_currentHomeInfo;
  }

  else
  {
    currentHomeInfo = [(AFCommandExecutionInfo *)self->_base currentHomeInfo];
  }

  return currentHomeInfo;
}

- (id)getTurnId
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    turnId = self->_turnId;
  }

  else
  {
    turnId = [(AFCommandExecutionInfo *)self->_base turnId];
  }

  return turnId;
}

- (id)getEndpointInfo
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    endpointInfo = self->_endpointInfo;
  }

  else
  {
    endpointInfo = [(AFCommandExecutionInfo *)self->_base endpointInfo];
  }

  return endpointInfo;
}

- (id)getSpeechInfo
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    speechInfo = self->_speechInfo;
  }

  else
  {
    speechInfo = [(AFCommandExecutionInfo *)self->_base speechInfo];
  }

  return speechInfo;
}

- (id)getDeviceRestrictions
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    deviceRestrictions = self->_deviceRestrictions;
  }

  else
  {
    deviceRestrictions = [(AFCommandExecutionInfo *)self->_base deviceRestrictions];
  }

  return deviceRestrictions;
}

- (id)getInstanceInfo
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    instanceInfo = self->_instanceInfo;
  }

  else
  {
    instanceInfo = [(AFCommandExecutionInfo *)self->_base instanceInfo];
  }

  return instanceInfo;
}

- (id)getRequestHandlingContextSnapshot
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    requestHandlingContextSnapshot = self->_requestHandlingContextSnapshot;
  }

  else
  {
    requestHandlingContextSnapshot = [(AFCommandExecutionInfo *)self->_base requestHandlingContextSnapshot];
  }

  return requestHandlingContextSnapshot;
}

- (id)getUserInfo
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    userInfo = self->_userInfo;
  }

  else
  {
    userInfo = [(AFCommandExecutionInfo *)self->_base userInfo];
  }

  return userInfo;
}

- (_AFCommandExecutionInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFCommandExecutionInfoMutation;
  v6 = [(_AFCommandExecutionInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end