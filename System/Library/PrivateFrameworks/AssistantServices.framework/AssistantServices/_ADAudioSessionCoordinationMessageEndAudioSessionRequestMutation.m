@interface _ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation
- (_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation)initWithBase:(id)a3;
- (id)getEffectiveDate;
@end

@implementation _ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation

- (id)getEffectiveDate
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_effectiveDate;
  }

  else
  {
    v2 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)self->_base effectiveDate];
  }

  return v2;
}

- (_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation;
  v6 = [(_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end