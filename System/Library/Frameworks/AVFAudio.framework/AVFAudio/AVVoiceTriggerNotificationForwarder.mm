@interface AVVoiceTriggerNotificationForwarder
- (VoiceTriggerNotificationInterface)target;
- (void)portStateChangedNotification:(id)notification;
- (void)speakerStateChangedNotification:(id)notification;
- (void)voiceTriggerNotification:(id)notification;
@end

@implementation AVVoiceTriggerNotificationForwarder

- (VoiceTriggerNotificationInterface)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)portStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained portStateChangedNotification:notificationCopy];
}

- (void)speakerStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained speakerStateChangedNotification:notificationCopy];
}

- (void)voiceTriggerNotification:(id)notification
{
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained voiceTriggerNotification:notificationCopy];
}

@end