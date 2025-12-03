@interface _AFSpeechRecordingAlertPolicyMutation
- (_AFSpeechRecordingAlertPolicyMutation)initWithBase:(id)base;
- (id)getStartingAlertBehavior;
- (id)getStoppedAlertBehavior;
- (id)getStoppedWithErrorAlertBehavior;
@end

@implementation _AFSpeechRecordingAlertPolicyMutation

- (id)getStoppedWithErrorAlertBehavior
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    stoppedWithErrorAlertBehavior = self->_stoppedWithErrorAlertBehavior;
  }

  else
  {
    stoppedWithErrorAlertBehavior = [(AFSpeechRecordingAlertPolicy *)self->_base stoppedWithErrorAlertBehavior];
  }

  return stoppedWithErrorAlertBehavior;
}

- (id)getStoppedAlertBehavior
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    stoppedAlertBehavior = self->_stoppedAlertBehavior;
  }

  else
  {
    stoppedAlertBehavior = [(AFSpeechRecordingAlertPolicy *)self->_base stoppedAlertBehavior];
  }

  return stoppedAlertBehavior;
}

- (id)getStartingAlertBehavior
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    startingAlertBehavior = self->_startingAlertBehavior;
  }

  else
  {
    startingAlertBehavior = [(AFSpeechRecordingAlertPolicy *)self->_base startingAlertBehavior];
  }

  return startingAlertBehavior;
}

- (_AFSpeechRecordingAlertPolicyMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSpeechRecordingAlertPolicyMutation;
  v6 = [(_AFSpeechRecordingAlertPolicyMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end