@interface ATXUserNotificationDigest
@end

@implementation ATXUserNotificationDigest

uint64_t __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke_cold_1(v3, v7);
    }

    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE658];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v8 raise:v9 format:{@"Encountered unknown event, expected ATXNotificationGroupEvent. Received: %@", v11}];

    goto LABEL_8;
  }

  if ([v3 eventType] != 10)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v4 = [v3 uuid];
  v5 = [*(a1 + 32) uuid];
  v6 = [v4 isEqual:v5];

LABEL_9:
  return v6;
}

void __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke_32(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) uuid];
      v7 = [v3 error];
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Could not compute digest expansions for: %{public}@: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Encountered unknown event, expected ATXNotificationGroupEvent. Received: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end