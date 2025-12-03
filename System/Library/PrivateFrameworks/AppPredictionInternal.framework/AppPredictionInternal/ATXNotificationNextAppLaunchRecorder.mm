@interface ATXNotificationNextAppLaunchRecorder
- (ATXAppInFocusStream)appInFocusStream;
- (ATXNotificationNextAppLaunchRecorder)init;
- (ATXNotificationNextAppLaunchRecorder)initWithDefaults:(id)defaults dataStore:(id)store;
- (NSString)appLaunchTimestampKey;
- (NSString)defaultsKeyPrefix;
- (OS_dispatch_queue)queue;
- (id)installedAppsProvider;
- (void)resetDefaults;
- (void)setAppInFocusStream:(id)stream;
- (void)setAppLaunchTimestampKey:(id)key;
- (void)setDefaultsKeyPrefix:(id)prefix;
- (void)setInstalledAppsProvider:(id)provider;
- (void)setQueue:(id)queue;
- (void)updateNotificationsWithNextAppLaunch;
@end

@implementation ATXNotificationNextAppLaunchRecorder

- (ATXAppInFocusStream)appInFocusStream
{
  v3 = OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_appInFocusStream;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAppInFocusStream:(id)stream
{
  v5 = OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_appInFocusStream;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = stream;
  streamCopy = stream;
}

- (NSString)defaultsKeyPrefix
{
  v2 = (self + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_defaultsKeyPrefix);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_2268363F8();

  return v5;
}

- (void)setDefaultsKeyPrefix:(id)prefix
{
  v4 = sub_226836408();
  v6 = v5;
  v7 = (self + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_defaultsKeyPrefix);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (id)installedAppsProvider
{
  v2 = (self + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_installedAppsProvider);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  aBlock[4] = v3;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2267A23E4;
  aBlock[3] = &block_descriptor_10;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (void)setInstalledAppsProvider:(id)provider
{
  v4 = _Block_copy(provider);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_installedAppsProvider);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = sub_2267A5B34;
  v6[1] = v5;
}

- (OS_dispatch_queue)queue
{
  selfCopy = self;
  v3 = sub_2267A2788();

  return v3;
}

- (void)setQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___queue);
  *(self + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___queue) = queue;
  queueCopy = queue;
}

- (NSString)appLaunchTimestampKey
{
  selfCopy = self;
  sub_2267A2ABC();

  v3 = sub_2268363F8();

  return v3;
}

- (void)setAppLaunchTimestampKey:(id)key
{
  v4 = sub_226836408();
  v5 = (self + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___appLaunchTimestampKey);
  v6 = *(self + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___appLaunchTimestampKey + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (ATXNotificationNextAppLaunchRecorder)initWithDefaults:(id)defaults dataStore:(id)store
{
  defaultsCopy = defaults;
  storeCopy = store;
  v7 = sub_2267A596C(defaultsCopy, storeCopy);

  return v7;
}

- (void)updateNotificationsWithNextAppLaunch
{
  selfCopy = self;
  ATXNotificationNextAppLaunchRecorder.updateNotificationsWithNextAppLaunch()();
}

- (void)resetDefaults
{
  selfCopy = self;
  defaults = [(ATXNotificationNextAppLaunchRecorder *)selfCopy defaults];
  appLaunchTimestampKey = [(ATXNotificationNextAppLaunchRecorder *)selfCopy appLaunchTimestampKey];
  [(NSUserDefaults *)defaults removeObjectForKey:appLaunchTimestampKey];
}

- (ATXNotificationNextAppLaunchRecorder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end