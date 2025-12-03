@interface WFRadiosPreferencesSettingsClient
+ (void)createClientWithCompletionHandler:(id)handler;
- (WFRadiosPreferencesSettingsClient)initWithRadiosPreferences:(id)preferences;
@end

@implementation WFRadiosPreferencesSettingsClient

- (WFRadiosPreferencesSettingsClient)initWithRadiosPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (!preferencesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRadiosPreferencesSettingsClient.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"radiosPreferences"}];
  }

  v12.receiver = self;
  v12.super_class = WFRadiosPreferencesSettingsClient;
  v7 = [(WFRadiosPreferencesSettingsClient *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_radiosPreferences, preferences);
    v9 = v8;
  }

  return v8;
}

+ (void)createClientWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getRadiosPreferencesClass_softClass;
  v15 = getRadiosPreferencesClass_softClass;
  if (!getRadiosPreferencesClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getRadiosPreferencesClass_block_invoke;
    v17 = &unk_278C222B8;
    v18 = &v12;
    __getRadiosPreferencesClass_block_invoke(buf);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = objc_alloc_init(v5);
  v8 = getWFBundledIntentsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "+[WFRadiosPreferencesSettingsClient createClientWithCompletionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_DEBUG, "%s Got RadiosPreferences: %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [self alloc];
    v10 = [v9 initWithRadiosPreferences:{v7, v12}];
    handlerCopy[2](handlerCopy, v10, 0);
  }

  else
  {
    v10 = WFSettingsClientError();
    (handlerCopy)[2](handlerCopy, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end