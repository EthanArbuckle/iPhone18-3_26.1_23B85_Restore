@interface DeviceUnpluggedNotificationCallback
@end

@implementation DeviceUnpluggedNotificationCallback

void __brokeredPlugin_DeviceUnpluggedNotificationCallback_block_invoke(uint64_t a1)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener(DefaultLocalCenter, *(a1 + 32), brokeredPlugin_DeviceUnpluggedNotificationCallback, @"FigHALAudioDeviceUnplugged", *(a1 + 40));
  v3 = *(*(a1 + 48) + 40);
  v8.length = CFArrayGetCount(v3);
  v8.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v8, *(a1 + 40));
  if (FirstIndexOfValue != -1)
  {
    v5 = FirstIndexOfValue;
    v6 = *(*(a1 + 48) + 40);

    CFArrayRemoveValueAtIndex(v6, v5);
  }
}

@end