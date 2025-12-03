@interface ATXLockScreenNotificationRanker
+ (id)rankNewNotificationIntoNotificationArrays:(id)arrays newNotification:(id)notification notificationArrayIndex:(unint64_t)index error:(id *)error;
+ (id)rankNewNotificationIntoNotificationArrays:(id)arrays newNotificationArray:(id)array newNotification:(id)notification error:(id *)error;
+ (id)rankNotificationArrays:(id)arrays error:(id *)error;
@end

@implementation ATXLockScreenNotificationRanker

+ (id)rankNotificationArrays:(id)arrays error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  arraysCopy = arrays;
  v6 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[ATXLockScreenNotificationRanker rankNotificationArrays:error:];
  }

  if (arraysCopy || !error)
  {
    v11 = [arraysCopy _pas_mappedArrayWithTransform:&__block_literal_global_57_1];
    v9 = [v11 sortedArrayUsingComparator:&__block_literal_global_61_1];

    v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_64_1];
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA5B8];
    v14 = *MEMORY[0x277CCA068];
    v15[0] = @"Missing notificationArrays argument";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v7 errorWithDomain:v8 code:22 userInfo:v9];
    *error = v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

ATXUserNotificationGroup *__64__ATXLockScreenNotificationRanker_rankNotificationArrays_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotificationGroup alloc] initWithNotifications:v2];

  return v3;
}

+ (id)rankNewNotificationIntoNotificationArrays:(id)arrays newNotification:(id)notification notificationArrayIndex:(unint64_t)index error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  arraysCopy = arrays;
  notificationCopy = notification;
  if (arraysCopy)
  {
    if ([arraysCopy count] > index)
    {
      v12 = [arraysCopy objectAtIndexedSubscript:index];
      v13 = [arraysCopy mutableCopy];
      [v13 removeObjectAtIndex:index];
      error = [self rankNewNotificationIntoNotificationArrays:v13 newNotificationArray:v12 newNotification:notificationCopy error:error];

      goto LABEL_10;
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"notificationArrayIndex=%ld is out of bounds for notificationArrays length=%ld", index, objc_msgSend(arraysCopy, "count")];
    v18 = v17;
    if (error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA5B8];
      v24 = *MEMORY[0x277CCA068];
      v25 = v17;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      *error = [v19 errorWithDomain:v20 code:22 userInfo:v21];
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA5B8];
    v26 = *MEMORY[0x277CCA068];
    v27[0] = @"Missing notificationArrays argument";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    *error = [v14 errorWithDomain:v15 code:22 userInfo:v16];
  }

  error = 0;
LABEL_10:

  v22 = *MEMORY[0x277D85DE8];

  return error;
}

+ (id)rankNewNotificationIntoNotificationArrays:(id)arrays newNotificationArray:(id)array newNotification:(id)notification error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  arraysCopy = arrays;
  arrayCopy = array;
  notificationCopy = notification;
  v12 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[ATXLockScreenNotificationRanker rankNewNotificationIntoNotificationArrays:newNotificationArray:newNotification:error:];
  }

  if (arraysCopy || !error)
  {
    if (notificationCopy || !error)
    {
      if (arrayCopy || !error)
      {
        v24 = [arrayCopy arrayByAddingObject:notificationCopy];

        v25 = [[ATXUserNotificationGroup alloc] initWithNotifications:v24];
        v26 = [arraysCopy _pas_mappedArrayWithTransform:&__block_literal_global_76_2];
        v27 = [v26 arrayByAddingObject:v25];
        v28 = [v27 sortedArrayUsingComparator:&__block_literal_global_78];

        v29 = MEMORY[0x277D42648];
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "indexOfObject:", v25)}];
        v31 = MEMORY[0x277CCABB0];
        notifications = [(ATXUserNotificationGroup *)v25 notifications];
        v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(notifications, "indexOfObject:", notificationCopy)}];
        v19 = [v29 tupleWithFirst:v30 second:v33];

        arrayCopy = v24;
      }

      else
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277CCA5B8];
        v34 = *MEMORY[0x277CCA068];
        v35 = @"Missing newNotificationArray argument";
        arrayCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        [v22 errorWithDomain:v23 code:22 userInfo:arrayCopy];
        *error = v19 = 0;
      }

      goto LABEL_10;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA5B8];
    v36 = *MEMORY[0x277CCA068];
    v37 = @"Missing newNotification argument";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v37;
    v17 = &v36;
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA5B8];
    v38 = *MEMORY[0x277CCA068];
    v39[0] = @"Missing notificationArrays argument";
    v15 = MEMORY[0x277CBEAC0];
    v16 = v39;
    v17 = &v38;
  }

  v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
  *error = [v13 errorWithDomain:v14 code:22 userInfo:v18];

  v19 = 0;
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

ATXUserNotificationGroup *__120__ATXLockScreenNotificationRanker_rankNewNotificationIntoNotificationArrays_newNotificationArray_newNotification_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotificationGroup alloc] initWithNotifications:v2];

  return v3;
}

+ (void)rankNotificationArrays:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "[%@] Generating lock screen notification ranking", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)rankNewNotificationIntoNotificationArrays:newNotificationArray:newNotification:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "[%@] Sorting newNotification into notificationArray", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end