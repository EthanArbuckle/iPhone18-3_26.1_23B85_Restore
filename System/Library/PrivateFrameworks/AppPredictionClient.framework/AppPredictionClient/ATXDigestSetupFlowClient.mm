@interface ATXDigestSetupFlowClient
- (ATXDigestSetupFlowClient)init;
- (id)sortDigestResponseWithNoNotificationVolume:(id)volume;
- (void)_helperAppsSortedByNotificationsReceivedInPreviousNumDays:(id)days completionHandler:(id)handler;
- (void)appsSortedByNotificationsReceivedInPreviousNumDays:(id)days completionHandler:(id)handler;
@end

@implementation ATXDigestSetupFlowClient

- (ATXDigestSetupFlowClient)init
{
  v9.receiver = self;
  v9.super_class = ATXDigestSetupFlowClient;
  v2 = [(ATXDigestSetupFlowClient *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ATXDigestSetupFlowClient.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    xpcClient = v2->_xpcClient;
    v2->_xpcClient = v6;
  }

  return v2;
}

- (void)appsSortedByNotificationsReceivedInPreviousNumDays:(id)days completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97__ATXDigestSetupFlowClient_appsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke;
  v8[3] = &unk_1E80C5340;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(ATXDigestSetupFlowClient *)self _helperAppsSortedByNotificationsReceivedInPreviousNumDays:days completionHandler:v8];
}

- (void)_helperAppsSortedByNotificationsReceivedInPreviousNumDays:(id)days completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  daysCopy = days;
  handlerCopy = handler;
  if (daysCopy)
  {
    v9 = daysCopy;
  }

  else
  {
    v9 = &unk_1F3E60480;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  unsignedIntegerValue = [v9 unsignedIntegerValue];
  v10 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    [(ATXDigestSetupFlowClient *)v11 _helperAppsSortedByNotificationsReceivedInPreviousNumDays:v12 completionHandler:buf, v10];
  }

  xpcClient = self->_xpcClient;
  v14 = v21[3];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104__ATXDigestSetupFlowClient__helperAppsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke;
  v16[3] = &unk_1E80C5390;
  v18 = &v20;
  v19 = a2;
  v16[4] = self;
  v15 = handlerCopy;
  v17 = v15;
  [(ATXNotificationDigestRankerClient *)xpcClient appsSortedByNotificationsReceivedInPreviousNumDays:v14 reply:v16];

  _Block_object_dispose(&v20, 8);
}

void __104__ATXDigestSetupFlowClient__helperAppsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke(uint64_t a1, void *a2, int a3, unint64_t a4, void *a5)
{
  *&v25[13] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a5;
  if (v10)
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __104__ATXDigestSetupFlowClient__helperAppsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke_cold_1(a1, v10, v11);
    }
  }

  v12 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412546;
    v23 = v13;
    v24 = 2048;
    *v25 = a4;
    _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "%@: Number of days of data = %lu", buf, 0x16u);
  }

  if (a4)
  {
    v14 = *(*(a1 + 48) + 8);
    if (*(v14 + 24) > a4)
    {
      *(v14 + 24) = a4;
    }
  }

  else
  {
    v15 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __104__ATXDigestSetupFlowClient__helperAppsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke_cold_2(a1, v15);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __104__ATXDigestSetupFlowClient__helperAppsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke_7;
  v21[3] = &unk_1E80C5368;
  v21[4] = *(a1 + 48);
  v16 = [v9 _pas_mappedArrayWithTransform:v21];
  v17 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 count];
    v19 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 134218496;
    v23 = v18;
    v24 = 1024;
    *v25 = a3;
    v25[2] = 2048;
    *&v25[3] = v19;
    _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "Returning %ld apps with notification counts, containsMessageAndTimeSensitiveData=%{BOOL}d, numberOfDays=%ld", buf, 0x1Cu);
  }

  v20 = [*(a1 + 32) sortDigestResponseWithNoNotificationVolume:v16];

  (*(*(a1 + 40) + 16))();
}

ATXDigestSetupResponse *__104__ATXDigestSetupFlowClient__helperAppsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 numBasicNotifications];
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = [v3 numMessageNotifications];
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = [v3 numTimeSensitiveNonMessageNotifications];
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __104__ATXDigestSetupFlowClient__helperAppsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke_7_cold_1(v3, v10);
  }

  v11 = v4 / v5;

  v12 = [ATXDigestSetupResponse alloc];
  v13 = [v3 bundleId];
  v14 = -[ATXDigestSetupResponse initWithBundleId:avgNumBasicNotifications:avgNumMessageNotifications:avgNumTimeSensitiveNonMessageNotifications:numBasicNotifications:numMessageNotifications:numTimeSensitiveNonMessageNotifications:](v12, "initWithBundleId:avgNumBasicNotifications:avgNumMessageNotifications:avgNumTimeSensitiveNonMessageNotifications:numBasicNotifications:numMessageNotifications:numTimeSensitiveNonMessageNotifications:", v13, v11, v6 / v7, v8 / v9, [v3 numBasicNotifications], objc_msgSend(v3, "numMessageNotifications"), objc_msgSend(v3, "numTimeSensitiveNonMessageNotifications"));

  return v14;
}

- (id)sortDigestResponseWithNoNotificationVolume:(id)volume
{
  v39 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  v28 = objc_opt_new();
  v4 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = volumeCopy;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v9 = off_1E80BF000;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        if ([v11 numBasicNotifications] || objc_msgSend(v11, "numMessageNotifications") || objc_msgSend(v11, "numTimeSensitiveNonMessageNotifications"))
        {
          [v4 addObject:v11];
        }

        else
        {
          v12 = v9[37];
          bundleId = [v11 bundleId];
          v14 = [(__objc2_class *)v12 localizedNameForBundle:bundleId];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v17 = v9[37];
            bundleId2 = [v11 bundleId];
            v16 = [(__objc2_class *)v17 localizedShortnameForBundle:bundleId2];
          }

          v19 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v16 second:v11];
          [v28 addObject:v19];

          v9 = off_1E80BF000;
        }

        ++v10;
      }

      while (v7 != v10);
      v20 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
      v7 = v20;
    }

    while (v20);
  }

  [v28 sortUsingComparator:&__block_literal_global_81];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = v28;
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        second = [*(*(&v29 + 1) + 8 * i) second];
        [v4 addObject:second];
      }

      v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }

  return v4;
}

uint64_t __71__ATXDigestSetupFlowClient_sortDigestResponseWithNoNotificationVolume___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 first];
  v6 = [v4 first];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)_helperAppsSortedByNotificationsReceivedInPreviousNumDays:(uint8_t *)buf completionHandler:(os_log_t)log .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1BF549000, log, OS_LOG_TYPE_DEBUG, "[%@ %@] Fetching sorted apps", buf, 0x16u);
}

void __104__ATXDigestSetupFlowClient__helperAppsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(*(a1 + 56));
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1BF549000, a3, OS_LOG_TYPE_ERROR, "Error in %@: %@", &v6, 0x16u);
}

void __104__ATXDigestSetupFlowClient__helperAppsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(*(a1 + 56));
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "%@: Received number of days of data = 0", &v4, 0xCu);
}

void __104__ATXDigestSetupFlowClient__helperAppsSortedByNotificationsReceivedInPreviousNumDays_completionHandler___block_invoke_7_cold_1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 bundleId];
  v5 = 138413058;
  v6 = v4;
  v7 = 2048;
  v8 = [a1 numBasicNotifications];
  v9 = 2048;
  v10 = [a1 numMessageNotifications];
  v11 = 2048;
  v12 = [a1 numTimeSensitiveNonMessageNotifications];
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "%@: %lu / %lu / %lu", &v5, 0x2Au);
}

@end