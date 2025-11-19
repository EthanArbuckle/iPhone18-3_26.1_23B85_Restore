@interface AXReplayKitClientDelegate
- (void)didStartRecordingOrBroadcast;
- (void)didStopRecordingOrBroadcast;
@end

@implementation AXReplayKitClientDelegate

- (void)didStopRecordingOrBroadcast
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_29C736000, v2, OS_LOG_TYPE_DEFAULT, "Notifying VO that recording is stopping", v3, 2u);
  }

  UIAccessibilityPostNotification(0x40Eu, MEMORY[0x29EDB8EA8]);
}

- (void)didStartRecordingOrBroadcast
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_29C736000, v2, OS_LOG_TYPE_DEFAULT, "Notifying VO that recording is starting", v3, 2u);
  }

  UIAccessibilityPostNotification(0x40Eu, MEMORY[0x29EDB8EB0]);
}

@end