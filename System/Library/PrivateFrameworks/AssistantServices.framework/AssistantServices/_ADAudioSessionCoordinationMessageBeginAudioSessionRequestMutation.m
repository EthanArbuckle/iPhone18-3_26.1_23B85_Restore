@interface _ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation
- (_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation)initWithBase:(id)a3;
- (double)getExpirationDuration;
- (id)getEffectiveDate;
@end

@implementation _ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation

- (double)getExpirationDuration
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_expirationDuration;
  }

  [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self->_base expirationDuration];
  return result;
}

- (id)getEffectiveDate
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_effectiveDate;
  }

  else
  {
    v2 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self->_base effectiveDate];
  }

  return v2;
}

- (_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation;
  v6 = [(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end