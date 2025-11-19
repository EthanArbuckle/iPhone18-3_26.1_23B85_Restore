@interface _AFCommandExecutionInfoMutation
- (_AFCommandExecutionInfoMutation)initWithBase:(id)a3;
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
    v2 = self->_executionID;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base executionID];
  }

  return v2;
}

- (id)getRequestID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_requestID;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base requestID];
  }

  return v2;
}

- (id)getOriginPeerInfo
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_originPeerInfo;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base originPeerInfo];
  }

  return v2;
}

- (id)getCurrentHomeInfo
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_currentHomeInfo;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base currentHomeInfo];
  }

  return v2;
}

- (id)getTurnId
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_turnId;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base turnId];
  }

  return v2;
}

- (id)getEndpointInfo
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_endpointInfo;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base endpointInfo];
  }

  return v2;
}

- (id)getSpeechInfo
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    v2 = self->_speechInfo;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base speechInfo];
  }

  return v2;
}

- (id)getDeviceRestrictions
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    v2 = self->_deviceRestrictions;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base deviceRestrictions];
  }

  return v2;
}

- (id)getInstanceInfo
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_instanceInfo;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base instanceInfo];
  }

  return v2;
}

- (id)getRequestHandlingContextSnapshot
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    v2 = self->_requestHandlingContextSnapshot;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base requestHandlingContextSnapshot];
  }

  return v2;
}

- (id)getUserInfo
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    v2 = self->_userInfo;
  }

  else
  {
    v2 = [(AFCommandExecutionInfo *)self->_base userInfo];
  }

  return v2;
}

- (_AFCommandExecutionInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFCommandExecutionInfoMutation;
  v6 = [(_AFCommandExecutionInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end