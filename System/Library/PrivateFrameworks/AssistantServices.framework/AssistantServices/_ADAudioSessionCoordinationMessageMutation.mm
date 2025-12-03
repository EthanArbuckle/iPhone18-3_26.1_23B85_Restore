@interface _ADAudioSessionCoordinationMessageMutation
- (_ADAudioSessionCoordinationMessageMutation)initWithBase:(id)base;
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
    payloadEndAudioSessionResponse = self->_payloadEndAudioSessionResponse;
  }

  else
  {
    payloadEndAudioSessionResponse = [(ADAudioSessionCoordinationMessage *)self->_base payloadEndAudioSessionResponse];
  }

  return payloadEndAudioSessionResponse;
}

- (id)getPayloadEndAudioSessionRequest
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    payloadEndAudioSessionRequest = self->_payloadEndAudioSessionRequest;
  }

  else
  {
    payloadEndAudioSessionRequest = [(ADAudioSessionCoordinationMessage *)self->_base payloadEndAudioSessionRequest];
  }

  return payloadEndAudioSessionRequest;
}

- (id)getPayloadKeepAudioSessionAliveResponse
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    payloadKeepAudioSessionAliveResponse = self->_payloadKeepAudioSessionAliveResponse;
  }

  else
  {
    payloadKeepAudioSessionAliveResponse = [(ADAudioSessionCoordinationMessage *)self->_base payloadKeepAudioSessionAliveResponse];
  }

  return payloadKeepAudioSessionAliveResponse;
}

- (id)getPayloadKeepAudioSessionAliveRequest
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    payloadKeepAudioSessionAliveRequest = self->_payloadKeepAudioSessionAliveRequest;
  }

  else
  {
    payloadKeepAudioSessionAliveRequest = [(ADAudioSessionCoordinationMessage *)self->_base payloadKeepAudioSessionAliveRequest];
  }

  return payloadKeepAudioSessionAliveRequest;
}

- (id)getPayloadBeginAudioSessionResponse
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    payloadBeginAudioSessionResponse = self->_payloadBeginAudioSessionResponse;
  }

  else
  {
    payloadBeginAudioSessionResponse = [(ADAudioSessionCoordinationMessage *)self->_base payloadBeginAudioSessionResponse];
  }

  return payloadBeginAudioSessionResponse;
}

- (id)getPayloadBeginAudioSessionRequest
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    payloadBeginAudioSessionRequest = self->_payloadBeginAudioSessionRequest;
  }

  else
  {
    payloadBeginAudioSessionRequest = [(ADAudioSessionCoordinationMessage *)self->_base payloadBeginAudioSessionRequest];
  }

  return payloadBeginAudioSessionRequest;
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

- (_ADAudioSessionCoordinationMessageMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageMutation;
  v6 = [(_ADAudioSessionCoordinationMessageMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end