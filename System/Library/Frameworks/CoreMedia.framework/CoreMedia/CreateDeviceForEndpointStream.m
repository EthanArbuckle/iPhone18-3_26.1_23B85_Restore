@interface CreateDeviceForEndpointStream
@end

@implementation CreateDeviceForEndpointStream

void __brokeredPlugin_CreateDeviceForEndpointStream_block_invoke(uint64_t a1)
{
  CFArrayAppendValue(*(*(a1 + 32) + 40), *(a1 + 40));
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener(DefaultLocalCenter, *(a1 + 48), brokeredPlugin_DeviceUnpluggedNotificationCallback, @"FigHALAudioDeviceUnplugged", *(a1 + 40));
  v3 = *(a1 + 40);

  CFRelease(v3);
}

@end