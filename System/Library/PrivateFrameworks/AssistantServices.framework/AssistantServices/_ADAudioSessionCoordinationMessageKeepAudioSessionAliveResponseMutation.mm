@interface _ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponseMutation
- (_ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponseMutation)initWithBase:(id)base;
@end

@implementation _ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponseMutation

- (_ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponseMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponseMutation;
  v6 = [(_ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end