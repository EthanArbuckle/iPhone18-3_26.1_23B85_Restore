@interface _UNNotificationContentExtensionManager
+ (id)sharedInstance;
+ (void)initialize;
- (_UNNotificationContentExtensionManager)init;
- (id)_matchingAttributes;
- (id)extensionForNotificationSourceIdentifier:(id)a3 categoryIdentifier:(id)a4;
- (void)_beginMatchingExtensions;
- (void)_stopMatchingExtensions;
@end

@implementation _UNNotificationContentExtensionManager

+ (void)initialize
{
  v2 = [objc_opt_class() sharedInstance];
  [v2 _beginMatchingExtensions];
}

- (_UNNotificationContentExtensionManager)init
{
  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionManager;
  v2 = [(_UNNotificationContentExtensionManager *)&v6 init];
  if (v2)
  {
    UNRegisterUserNotificationsUILogging();
    v3 = objc_alloc_init(_UNNotificationContentExtensionCache);
    extensionsCache = v2->_extensionsCache;
    v2->_extensionsCache = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_UNNotificationContentExtensionManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

- (id)extensionForNotificationSourceIdentifier:(id)a3 categoryIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(_UNNotificationContentExtensionManager *)self extensionsCache];
    v9 = [v8 extensionForNotificationSourceIdentifier:v6 categoryIdentifier:v7];
  }

  else
  {
    v10 = UNLogExtensions;
    if (os_log_type_enabled(UNLogExtensions, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_23AB78000, v10, OS_LOG_TYPE_DEFAULT, "Not loading an extension because the notification has no category identifier", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_matchingAttributes
{
  v2 = objc_opt_new();
  [v2 setObject:@"com.apple.usernotifications.content-extension" forKeyedSubscript:*MEMORY[0x277CCA0F8]];

  return v2;
}

- (void)_beginMatchingExtensions
{
  v3 = UNLogExtensions;
  if (os_log_type_enabled(UNLogExtensions, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB78000, v3, OS_LOG_TYPE_DEFAULT, "Starting notifications extensions discovery", buf, 2u);
  }

  v4 = [(_UNNotificationContentExtensionManager *)self _matchingAttributes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66___UNNotificationContentExtensionManager__beginMatchingExtensions__block_invoke;
  v7[3] = &unk_278B716A8;
  v7[4] = self;
  v5 = [MEMORY[0x277CCA9C8] beginMatchingExtensionsWithAttributes:v4 completion:v7];
  extensionsDiscoveryToken = self->_extensionsDiscoveryToken;
  self->_extensionsDiscoveryToken = v5;
}

- (void)_stopMatchingExtensions
{
  if (self->_extensionsDiscoveryToken)
  {
    [MEMORY[0x277CCA9C8] endMatchingExtensions:?];
    extensionsDiscoveryToken = self->_extensionsDiscoveryToken;
    self->_extensionsDiscoveryToken = 0;
  }
}

@end