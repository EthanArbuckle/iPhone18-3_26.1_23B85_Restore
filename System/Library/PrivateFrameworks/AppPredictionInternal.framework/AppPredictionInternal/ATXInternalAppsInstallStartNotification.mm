@interface ATXInternalAppsInstallStartNotification
+ (void)postNotificationWithInstallStartDictionary:(id)dictionary;
- (ATXInternalAppsInstallStartNotification)init;
@end

@implementation ATXInternalAppsInstallStartNotification

- (ATXInternalAppsInstallStartNotification)init
{
  v6.receiver = self;
  v6.super_class = ATXInternalAppsInstallStartNotification;
  v2 = [(ATXInternalAppsInstallStartNotification *)&v6 init];
  if (v2)
  {
    v3 = [[_ATXInternalNotification alloc] initWithNotificationName:@"com.apple.duetexpertd.ATXInternalAppsInstallStartNotification.appInstalling"];
    note = v2->_note;
    v2->_note = v3;
  }

  return v2;
}

+ (void)postNotificationWithInstallStartDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ATXInternalAppsInstallStartNotification *)dictionaryCopy postNotificationWithInstallStartDictionary:v4];
  }

  [_ATXInternalNotification postData:dictionaryCopy forNotificationNamed:@"com.apple.duetexpertd.ATXInternalAppsInstallStartNotification.appInstalling"];
}

+ (void)postNotificationWithInstallStartDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXInternalAppsInstallStartNotification: posting install start notification with payload:\n%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end