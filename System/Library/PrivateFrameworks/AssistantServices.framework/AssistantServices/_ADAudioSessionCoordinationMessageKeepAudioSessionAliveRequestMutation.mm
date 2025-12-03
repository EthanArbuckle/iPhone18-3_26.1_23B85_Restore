@interface _ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation
- (_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation)initWithBase:(id)base;
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

- (_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation;
  v6 = [(_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end