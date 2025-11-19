@interface _ATXInternalInstallNotification
+ (id)_installedAppsWithDatesFromNotificationData:(id)a3;
- (_ATXInternalInstallNotification)init;
- (void)registerForNotificationsWithInstallBlock:(id)a3;
@end

@implementation _ATXInternalInstallNotification

- (_ATXInternalInstallNotification)init
{
  v6.receiver = self;
  v6.super_class = _ATXInternalInstallNotification;
  v2 = [(_ATXInternalInstallNotification *)&v6 init];
  if (v2)
  {
    v3 = [[_ATXInternalNotification alloc] initWithNotificationName:@"com.apple.duetexpertd._ATXInternalInstallNotification.appInstalled"];
    note = v2->_note;
    v2->_note = v3;
  }

  return v2;
}

- (void)registerForNotificationsWithInstallBlock:(id)a3
{
  v4 = a3;
  note = self->_note;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___ATXInternalInstallNotification_registerForNotificationsWithInstallBlock___block_invoke;
  v7[3] = &unk_27859ACB8;
  v8 = v4;
  v6 = v4;
  [(_ATXInternalNotification *)note registerForNotifications:v7];
}

+ (id)_installedAppsWithDatesFromNotificationData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
    v5 = [v4 keysOfEntriesPassingTest:&__block_literal_global_226];
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v4 objectForKeyedSubscript:{v12, v17}];
          [v6 setObject:v13 forKeyedSubscript:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end