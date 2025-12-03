@interface _ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation
- (_ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation)initWithBase:(id)base;
@end

@implementation _ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation

- (_ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation;
  v6 = [(_ADAudioSessionCoordinationMessageBeginAudioSessionResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end