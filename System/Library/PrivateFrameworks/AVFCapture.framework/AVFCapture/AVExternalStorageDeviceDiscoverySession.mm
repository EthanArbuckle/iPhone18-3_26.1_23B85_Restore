@interface AVExternalStorageDeviceDiscoverySession
+ (AVExternalStorageDeviceDiscoverySession)sharedSession;
+ (BOOL)isSupported;
+ (void)initialize;
- (AVExternalStorageDeviceDiscoverySession)init;
- (int)_checkAuthorizationStatus;
- (int)_setupExternalStorageDeviceDiscoverySession;
- (void)_reconnectToServer;
- (void)_requestAuthorization:(id)authorization;
- (void)_tearDownExternalStorageDeviceDiscoverySessionToReconnectToServer:(BOOL)server;
- (void)dealloc;
@end

@implementation AVExternalStorageDeviceDiscoverySession

+ (AVExternalStorageDeviceDiscoverySession)sharedSession
{
  if (sharedSession_onceToken != -1)
  {
    +[AVExternalStorageDeviceDiscoverySession sharedSession];
  }

  if (dword_1EB385998)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return sharedSession_sAVExternalStorageDeviceDiscoverySession;
}

AVExternalStorageDeviceDiscoverySession *__56__AVExternalStorageDeviceDiscoverySession_sharedSession__block_invoke()
{
  result = objc_alloc_init(AVExternalStorageDeviceDiscoverySession);
  sharedSession_sAVExternalStorageDeviceDiscoverySession = result;
  return result;
}

+ (BOOL)isSupported
{
  if (isSupported_once != -1)
  {
    +[AVExternalStorageDeviceDiscoverySession isSupported];
  }

  return isSupported_sIsSupported;
}

uint64_t __54__AVExternalStorageDeviceDiscoverySession_isSupported__block_invoke()
{
  result = FigExternalStorageDeviceManagerRemoteSupported();
  if (result)
  {
    result = AVGestaltGetBoolAnswer(@"AVGQN46I2BPHSDKPVN3YSGNPHPTAPE");
  }

  isSupported_sIsSupported = result;
  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (AVExternalStorageDeviceDiscoverySession)init
{
  v5.receiver = self;
  v5.super_class = AVExternalStorageDeviceDiscoverySession;
  v2 = [(AVExternalStorageDeviceDiscoverySession *)&v5 init];
  v3 = v2;
  if (v2 && [(AVExternalStorageDeviceDiscoverySession *)v2 _setupExternalStorageDeviceDiscoverySession])
  {

    return 0;
  }

  return v3;
}

- (void)dealloc
{
  FigSimpleMutexLock();
  [(AVExternalStorageDeviceDiscoverySession *)self _tearDownExternalStorageDeviceDiscoverySessionToReconnectToServer:0];
  FigSimpleMutexUnlock();
  FigSimpleMutexDestroy();
  self->_lock = 0;
  v3.receiver = self;
  v3.super_class = AVExternalStorageDeviceDiscoverySession;
  [(AVExternalStorageDeviceDiscoverySession *)&v3 dealloc];
}

- (void)_tearDownExternalStorageDeviceDiscoverySessionToReconnectToServer:(BOOL)server
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_weakReference, avExternalStorageDeviceNotification, *MEMORY[0x1E6990988], self->_externalStorageDeviceManager}];

  self->_weakReference = 0;
  externalStorageDeviceManager = self->_externalStorageDeviceManager;
  if (externalStorageDeviceManager)
  {
    CFRelease(externalStorageDeviceManager);
    self->_externalStorageDeviceManager = 0;
  }

  if (!server)
  {

    self->_externalStorageDevices = 0;
  }

  self->_uuidOfExternalStorageDevice = 0;
}

- (void)_reconnectToServer
{
  FigSimpleMutexLock();
  [(AVExternalStorageDeviceDiscoverySession *)self _tearDownExternalStorageDeviceDiscoverySessionToReconnectToServer:1];
  [(AVExternalStorageDeviceDiscoverySession *)self _setupExternalStorageDeviceDiscoverySession];

  FigSimpleMutexUnlock();
}

- (int)_checkAuthorizationStatus
{
  v5 = 0;
  externalStorageDeviceManager = self->_externalStorageDeviceManager;
  if (!externalStorageDeviceManager)
  {
    return 0;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v3)
  {
    return 0;
  }

  v3(externalStorageDeviceManager, 0, &v5);
  return v5;
}

- (void)_requestAuthorization:(id)authorization
{
  if (self->_externalStorageDeviceManager && *(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v3 = OUTLINED_FUNCTION_11();

    v4(v3);
  }
}

- (int)_setupExternalStorageDeviceDiscoverySession
{
  if (!self->_externalStorageDevices)
  {
    self->_externalStorageDevices = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (!self->_uuidOfExternalStorageDevice)
  {
    self->_uuidOfExternalStorageDevice = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (!self->_lock)
  {
    self->_lock = FigSimpleMutexCreate();
  }

  if (+[AVExternalStorageDeviceDiscoverySession isSupported])
  {
    OUTLINED_FUNCTION_11();
    result = FigExternalStorageDeviceManagerRemoteCreate();
    if (result == -16155)
    {
      usleep(0x3D090u);
      OUTLINED_FUNCTION_11();
      result = FigExternalStorageDeviceManagerRemoteCreate();
    }

    if (!result)
    {
      if (!self->_externalStorageDeviceManager)
      {
        return 0;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v4 = OUTLINED_FUNCTION_11();
        result = v5(v4);
        if (!result)
        {
          self->_weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:self];
          [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "addListenerWithWeakReference:callback:name:object:flags:", self->_weakReference, avExternalStorageDeviceNotification, *MEMORY[0x1E6990988], self->_externalStorageDeviceManager, 0}];
          return 0;
        }
      }

      else
      {
        return -12782;
      }
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

@end