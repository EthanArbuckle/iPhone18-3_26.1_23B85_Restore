@interface FPSupport
@end

@implementation FPSupport

id __67__FPSupport_PowerStateSingleton_sharedFPSupportPowerStateSingleton__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  sharedFPSupportPowerStateSingleton_gSharedFPSupportPowerState = result;
  return result;
}

uint64_t __49__FPSupport_PowerStateSingleton_postNotification__block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();
  +[FPSupport_PowerStateSingleton sharedFPSupportPowerStateSingleton];

  return CMNotificationCenterPostNotification();
}

id __57__FPSupport_VideoRangeSingleton_sharedFPSupportSingleton__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  sharedFPSupportSingleton_gSharedFPSupport = result;
  return result;
}

uint64_t __49__FPSupport_VideoRangeSingleton_postNotification__block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();
  +[FPSupport_VideoRangeSingleton sharedFPSupportSingleton];

  return CMNotificationCenterPostNotification();
}

uint64_t __80__FPSupport_VideoRangeSingleton_observeValueForKeyPath_ofObject_change_context___block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();
  +[FPSupport_VideoRangeSingleton sharedFPSupportSingleton];

  return CMNotificationCenterPostNotification();
}

dispatch_queue_t __FPSupport_AudioSpatializationPreferencesChanged_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.fpsupport.AudioSpatializationPreferencesChangedQueue", 0);
  FPSupport_AudioSpatializationPreferencesChanged_sAudioSpatializationPreferencesChangedQueue = result;
  return result;
}

uint64_t __FPSupport_AudioSpatializationPreferencesChanged_block_invoke_2()
{
  CMNotificationCenterGetDefaultLocalCenter();
  if (FPSupport_GetAudioSpatializationPreferencesMonitor_onceToken != -1)
  {
    FPSupport_GetAudioSpatializationPreferencesMonitor_cold_1();
  }

  return CMNotificationCenterPostNotification();
}

uint64_t __FPSupport_GetAudioSpatializationPreferencesMonitor_block_invoke()
{
  if ((in_audio_mx_server_process() & 1) != 0 || (result = FigAudioSessionCreateUsingAuxiliaryAVAudioSession(*MEMORY[0x1E695E480], 0, @"AudioSpatializationPreferencesMonitor", &FPSupport_GetAudioSpatializationPreferencesMonitor_audioSession), !result))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

@end