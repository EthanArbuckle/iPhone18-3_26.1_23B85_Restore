@interface _ADAudioSessionCoordinationMessageEndAudioSessionResponseMutation
- (_ADAudioSessionCoordinationMessageEndAudioSessionResponseMutation)initWithBase:(id)a3;
@end

@implementation _ADAudioSessionCoordinationMessageEndAudioSessionResponseMutation

- (_ADAudioSessionCoordinationMessageEndAudioSessionResponseMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageEndAudioSessionResponseMutation;
  v6 = [(_ADAudioSessionCoordinationMessageEndAudioSessionResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end