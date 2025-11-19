@interface _ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation
- (_ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation)initWithBase:(id)a3;
@end

@implementation _ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation

- (_ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation;
  v6 = [(_ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end