@interface _AFSpeechRecordingAlertPolicyMutation
- (_AFSpeechRecordingAlertPolicyMutation)initWithBase:(id)a3;
- (id)getStartingAlertBehavior;
- (id)getStoppedAlertBehavior;
- (id)getStoppedWithErrorAlertBehavior;
@end

@implementation _AFSpeechRecordingAlertPolicyMutation

- (id)getStoppedWithErrorAlertBehavior
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_stoppedWithErrorAlertBehavior;
  }

  else
  {
    v2 = [(AFSpeechRecordingAlertPolicy *)self->_base stoppedWithErrorAlertBehavior];
  }

  return v2;
}

- (id)getStoppedAlertBehavior
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_stoppedAlertBehavior;
  }

  else
  {
    v2 = [(AFSpeechRecordingAlertPolicy *)self->_base stoppedAlertBehavior];
  }

  return v2;
}

- (id)getStartingAlertBehavior
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_startingAlertBehavior;
  }

  else
  {
    v2 = [(AFSpeechRecordingAlertPolicy *)self->_base startingAlertBehavior];
  }

  return v2;
}

- (_AFSpeechRecordingAlertPolicyMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFSpeechRecordingAlertPolicyMutation;
  v6 = [(_AFSpeechRecordingAlertPolicyMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end