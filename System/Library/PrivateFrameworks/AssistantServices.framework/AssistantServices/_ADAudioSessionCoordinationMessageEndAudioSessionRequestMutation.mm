@interface _ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation
- (_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation)initWithBase:(id)base;
- (id)getEffectiveDate;
@end

@implementation _ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation

- (id)getEffectiveDate
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    effectiveDate = self->_effectiveDate;
  }

  else
  {
    effectiveDate = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)self->_base effectiveDate];
  }

  return effectiveDate;
}

- (_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation;
  v6 = [(_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end