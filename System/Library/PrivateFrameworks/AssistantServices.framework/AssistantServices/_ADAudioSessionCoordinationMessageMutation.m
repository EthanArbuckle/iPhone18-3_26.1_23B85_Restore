@interface _ADAudioSessionCoordinationMessageMutation
- (_ADAudioSessionCoordinationMessageMutation)initWithBase:(id)a3;
- (id)getPayloadBeginAudioSessionRequest;
- (id)getPayloadBeginAudioSessionResponse;
- (id)getPayloadEndAudioSessionRequest;
- (id)getPayloadEndAudioSessionResponse;
- (id)getPayloadKeepAudioSessionAliveRequest;
- (id)getPayloadKeepAudioSessionAliveResponse;
- (int64_t)getType;
- (unint64_t)getHostTime;
@end

@implementation _ADAudioSessionCoordinationMessageMutation

- (id)getPayloadEndAudioSessionResponse
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    v2 = self->_payloadEndAudioSessionResponse;
  }

  else
  {
    v2 = [(ADAudioSessionCoordinationMessage *)self->_base payloadEndAudioSessionResponse];
  }

  return v2;
}

- (id)getPayloadEndAudioSessionRequest
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_payloadEndAudioSessionRequest;
  }

  else
  {
    v2 = [(ADAudioSessionCoordinationMessage *)self->_base payloadEndAudioSessionRequest];
  }

  return v2;
}

- (id)getPayloadKeepAudioSessionAliveResponse
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_payloadKeepAudioSessionAliveResponse;
  }

  else
  {
    v2 = [(ADAudioSessionCoordinationMessage *)self->_base payloadKeepAudioSessionAliveResponse];
  }

  return v2;
}

- (id)getPayloadKeepAudioSessionAliveRequest
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_payloadKeepAudioSessionAliveRequest;
  }

  else
  {
    v2 = [(ADAudioSessionCoordinationMessage *)self->_base payloadKeepAudioSessionAliveRequest];
  }

  return v2;
}

- (id)getPayloadBeginAudioSessionResponse
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_payloadBeginAudioSessionResponse;
  }

  else
  {
    v2 = [(ADAudioSessionCoordinationMessage *)self->_base payloadBeginAudioSessionResponse];
  }

  return v2;
}

- (id)getPayloadBeginAudioSessionRequest
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_payloadBeginAudioSessionRequest;
  }

  else
  {
    v2 = [(ADAudioSessionCoordinationMessage *)self->_base payloadBeginAudioSessionRequest];
  }

  return v2;
}

- (int64_t)getType
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return [(ADAudioSessionCoordinationMessage *)self->_base type];
  }
}

- (unint64_t)getHostTime
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_hostTime;
  }

  else
  {
    return [(ADAudioSessionCoordinationMessage *)self->_base hostTime];
  }
}

- (_ADAudioSessionCoordinationMessageMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageMutation;
  v6 = [(_ADAudioSessionCoordinationMessageMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end