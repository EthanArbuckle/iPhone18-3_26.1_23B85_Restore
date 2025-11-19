@interface _ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation
- (_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation)initWithBase:(id)a3;
- (double)getExpirationDuration;
@end

@implementation _ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation

- (double)getExpirationDuration
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_expirationDuration;
  }

  [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)self->_base expirationDuration];
  return result;
}

- (_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation;
  v6 = [(_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end