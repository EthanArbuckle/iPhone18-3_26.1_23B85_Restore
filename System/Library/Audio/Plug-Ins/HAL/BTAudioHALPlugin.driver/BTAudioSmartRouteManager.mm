@interface BTAudioSmartRouteManager
+ (id)sharedInstance;
- (BTAudioSmartRouteManager)init;
- (id)unRegisterDevice:(id)device;
- (void)dealloc;
@end

@implementation BTAudioSmartRouteManager

- (void)dealloc
{
  [(NSMutableDictionary *)self->_btAudioDeviceDict removeAllObjects];

  v3.receiver = self;
  v3.super_class = BTAudioSmartRouteManager;
  [(BTAudioSmartRouteManager *)&v3 dealloc];
}

- (BTAudioSmartRouteManager)init
{
  v4.receiver = self;
  v4.super_class = BTAudioSmartRouteManager;
  v2 = [(BTAudioSmartRouteManager *)&v4 init];
  v2->_btAudioDeviceDict = [[NSMutableDictionary alloc] initWithCapacity:2];
  return v2;
}

+ (id)sharedInstance
{
  result = qword_D8500;
  if (!qword_D8500)
  {
    result = objc_alloc_init(BTAudioSmartRouteManager);
    qword_D8500 = result;
  }

  return result;
}

- (id)unRegisterDevice:(id)device
{
  v5 = [(NSMutableDictionary *)self->_btAudioDeviceDict objectForKey:?];
  if (v5)
  {
    v6 = v5;
    [(NSMutableDictionary *)self->_btAudioDeviceDict removeObjectForKey:device];
    v7 = qword_D84F8;
    if (os_log_type_enabled(qword_D84F8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      deviceCopy = device;
      v11 = 1024;
      v12 = [v6 retainCount];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Release Smart Route Manager Entry for %@ %d", &v9, 0x12u);
    }
  }

  return 0;
}

@end