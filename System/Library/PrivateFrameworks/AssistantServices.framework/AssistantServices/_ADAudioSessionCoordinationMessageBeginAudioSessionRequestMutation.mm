@interface _ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation
- (_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation)initWithBase:(id)base;
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
    effectiveDate = self->_effectiveDate;
  }

  else
  {
    effectiveDate = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self->_base effectiveDate];
  }

  return effectiveDate;
}

- (_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation;
  v6 = [(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end