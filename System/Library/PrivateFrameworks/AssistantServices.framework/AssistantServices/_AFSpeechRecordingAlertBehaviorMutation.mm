@interface _AFSpeechRecordingAlertBehaviorMutation
- (_AFSpeechRecordingAlertBehaviorMutation)initWithBase:(id)base;
- (int64_t)getBeepSoundID;
- (int64_t)getStyle;
@end

@implementation _AFSpeechRecordingAlertBehaviorMutation

- (int64_t)getBeepSoundID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_beepSoundID;
  }

  else
  {
    return [(AFSpeechRecordingAlertBehavior *)self->_base beepSoundID];
  }
}

- (int64_t)getStyle
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_style;
  }

  else
  {
    return [(AFSpeechRecordingAlertBehavior *)self->_base style];
  }
}

- (_AFSpeechRecordingAlertBehaviorMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSpeechRecordingAlertBehaviorMutation;
  v6 = [(_AFSpeechRecordingAlertBehaviorMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end