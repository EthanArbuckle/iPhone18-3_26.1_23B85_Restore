@interface App
@end

@implementation App

id __40___App_getGroupsFromNotificationStacks___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x277CEB978]) initWithNotifications:v3 useDigestOrder:1];
  }

  else
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "[%@] Empty notification stack. Skipping.", &v11, 0xCu);
    }

    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

id __19___App_setBundleId__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 bundleId];

  if (v4)
  {
    v5 = [v3 bundleId];
  }

  else
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v3 groupId];
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "[%@] Missing bundle ID for group with ID %@", &v13, 0x16u);
    }

    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __46___App_setRankedGroupsFromNotificationGroups___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 appSpecifiedScore];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 appSpecifiedScore];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

@end