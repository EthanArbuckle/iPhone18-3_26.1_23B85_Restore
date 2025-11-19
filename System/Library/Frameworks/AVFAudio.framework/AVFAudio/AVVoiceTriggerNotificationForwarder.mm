@interface AVVoiceTriggerNotificationForwarder
- (VoiceTriggerNotificationInterface)target;
- (void)portStateChangedNotification:(id)a3;
- (void)speakerStateChangedNotification:(id)a3;
- (void)voiceTriggerNotification:(id)a3;
@end

@implementation AVVoiceTriggerNotificationForwarder

- (VoiceTriggerNotificationInterface)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)portStateChangedNotification:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained portStateChangedNotification:v4];
}

- (void)speakerStateChangedNotification:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained speakerStateChangedNotification:v4];
}

- (void)voiceTriggerNotification:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained voiceTriggerNotification:v4];
}

@end