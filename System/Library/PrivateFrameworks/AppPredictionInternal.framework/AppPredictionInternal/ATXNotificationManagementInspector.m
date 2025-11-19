@interface ATXNotificationManagementInspector
- (BOOL)clearAllNotificationData:(id *)a3;
- (id)constructStacksForNotifications:(id)a3;
- (id)constructStacksGroupedByAppForNotifications:(id)a3;
- (id)fetchNotificationsFromBiomeFromStartDate:(id)a3 endDate:(id)a4 outError:(id *)a5;
- (id)fetchNotificationsFromDbFromStartDate:(id)a3 endDate:(id)a4;
- (id)fetchNotificationsFromFileData:(id)a3 outError:(id *)a4;
- (id)fetchNotificationsFromSource:(id)a3 startDate:(id)a4 endDate:(id)a5 shouldInferMessages:(BOOL)a6 outError:(id *)a7;
- (id)fetchSerializedMissedNotificationRankingFromFileData:(id)a3 modeString:(id)a4 outError:(id *)a5;
- (id)fetchSerializedNotificationDigestFromFileData:(id)a3 digestTimeString:(id)a4 outError:(id *)a5;
- (id)logAndCreateErrorForString:(id)a3;
@end

@implementation ATXNotificationManagementInspector

- (BOOL)clearAllNotificationData:(id *)a3
{
  v4 = objc_opt_new();
  [v4 deleteAllEvents];

  v5 = objc_opt_new();
  [v5 deleteAllEvents];

  v6 = objc_opt_new();
  [v6 deleteAllEvents];

  v7 = objc_opt_new();
  v8 = [v7 deleteAllData];

  if (a3)
  {
    v9 = v8;
    *a3 = v8;
  }

  return v8 == 0;
}

- (id)fetchSerializedNotificationDigestFromFileData:(id)a3 digestTimeString:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__67;
  v45 = __Block_byref_object_dispose__67;
  v46 = 0;
  v40 = 0;
  v10 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromFileData:v8 outError:&v40];
  objc_storeStrong(&v46, v40);
  if (a5 && (v11 = v42[5]) != 0)
  {
    v12 = 0;
    *a5 = v11;
  }

  else
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__67;
    v38 = __Block_byref_object_dispose__67;
    v39 = 0;
    v13 = [(ATXNotificationManagementInspector *)self constructStacksForNotifications:v10];
    v14 = objc_alloc(MEMORY[0x277CEB6F8]);
    v15 = +[ATXNotificationDigestRankerServer sharedInstance];
    v16 = [v14 initWithDigestRankerClient:v15];

    v17 = dispatch_semaphore_create(0);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke;
    v30[3] = &unk_27859EE80;
    v32 = &v41;
    v33 = &v34;
    v18 = v17;
    v31 = v18;
    [v16 generateDigestForNotificationArrays:v13 reply:v30];
    v19 = *MEMORY[0x277CEBB30];
    v28[4] = self;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_2;
    v29[3] = &unk_278596BB8;
    v29[4] = self;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_57;
    v28[3] = &unk_278596BB8;
    [MEMORY[0x277D425A0] waitForSemaphore:v18 timeoutSeconds:v29 onAcquire:v28 onTimeout:v19];
    if (a5 && (v20 = v42[5]) != 0)
    {
      v12 = 0;
      *a5 = v20;
    }

    else
    {
      v21 = MEMORY[0x277CCAAA0];
      v22 = [v35[5] jsonRepresentation];
      v23 = v42;
      obj = v42[5];
      v24 = [v21 dataWithJSONObject:v22 options:1 error:&obj];
      objc_storeStrong(v23 + 5, obj);

      if (a5 && (v25 = v42[5]) != 0)
      {
        v12 = 0;
        *a5 = v25;
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v24 encoding:4];
      }
    }

    _Block_object_dispose(&v34, 8);
  }

  _Block_object_dispose(&v41, 8);

  return v12;
}

void __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    v6 = [a3 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_57(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_57_cold_1(a1);
  }
}

void __146__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromSource_digestTimeString_startDate_endDate_shouldInferMessages_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    v6 = [a3 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __146__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromSource_digestTimeString_startDate_endDate_shouldInferMessages_outError___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __146__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromSource_digestTimeString_startDate_endDate_shouldInferMessages_outError___block_invoke_60(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_57_cold_1(a1);
  }
}

- (id)fetchSerializedMissedNotificationRankingFromFileData:(id)a3 modeString:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__67;
  v46 = __Block_byref_object_dispose__67;
  v47 = 0;
  v41 = 0;
  v10 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromFileData:v8 outError:&v41];
  objc_storeStrong(&v47, v41);
  if (a5 && (v11 = v43[5]) != 0)
  {
    v12 = 0;
    *a5 = v11;
  }

  else
  {
    v13 = [(ATXNotificationManagementInspector *)self constructStacksForNotifications:v10];
    v14 = objc_alloc(MEMORY[0x277CEB6F8]);
    v15 = +[ATXNotificationDigestRankerServer sharedInstance];
    v16 = [v14 initWithDigestRankerClient:v15];

    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__67;
    v39 = __Block_byref_object_dispose__67;
    v40 = 0;
    v17 = dispatch_semaphore_create(0);
    v18 = ATXStringToMode();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke;
    v31[3] = &unk_27859EEA8;
    v33 = &v42;
    v34 = &v35;
    v19 = v17;
    v32 = v19;
    [v16 generateMissedNotificationRankingForNotificationArrays:v13 atxMode:v18 reply:v31];
    v20 = *MEMORY[0x277CEBB30];
    v29[4] = self;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_2;
    v30[3] = &unk_278596BB8;
    v30[4] = self;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_63;
    v29[3] = &unk_278596BB8;
    [MEMORY[0x277D425A0] waitForSemaphore:v19 timeoutSeconds:v30 onAcquire:v29 onTimeout:v20];
    if (a5 && (v21 = v43[5]) != 0)
    {
      v12 = 0;
      *a5 = v21;
    }

    else
    {
      v22 = MEMORY[0x277CCAAA0];
      v23 = [v36[5] jsonRepresentation];
      v24 = v43;
      obj = v43[5];
      v25 = [v22 dataWithJSONObject:v23 options:1 error:&obj];
      objc_storeStrong(v24 + 5, obj);

      if (a5 && (v26 = v43[5]) != 0)
      {
        v12 = 0;
        *a5 = v26;
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v25 encoding:4];
      }
    }

    _Block_object_dispose(&v35, 8);
  }

  _Block_object_dispose(&v42, 8);

  return v12;
}

void __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    v6 = [a3 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_63(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_63_cold_1(a1);
  }
}

void __147__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromSource_modeString_startDate_endDate_shouldInferMessages_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    v6 = [a3 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __147__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromSource_modeString_startDate_endDate_shouldInferMessages_outError___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __147__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromSource_modeString_startDate_endDate_shouldInferMessages_outError___block_invoke_64(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_63_cold_1(a1);
  }
}

- (id)fetchNotificationsFromFileData:(id)a3 outError:(id *)a4
{
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:2 error:a4];
  v6 = v5;
  if (a4 && *a4)
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v7 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_68_0];
  }

  return v7;
}

id __78__ATXNotificationManagementInspector_fetchNotificationsFromFileData_outError___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB958];
  v3 = a2;
  v4 = [[v2 alloc] initFromJSON:v3];

  return v4;
}

- (id)fetchNotificationsFromSource:(id)a3 startDate:(id)a4 endDate:(id)a5 shouldInferMessages:(BOOL)a6 outError:(id *)a7
{
  v8 = a6;
  v44 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = v15;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v18 = v17;
  if ([v12 isEqualToString:@"biome"])
  {
    v42 = 0;
    v19 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromBiomeFromStartDate:v16 endDate:v18 outError:&v42];
    v20 = v42;
    if (!a7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (![v12 isEqualToString:@"db"])
  {
    v20 = [(ATXNotificationManagementInspector *)self logAndCreateErrorForString:@"Unknown source specified"];
    v19 = MEMORY[0x277CBEBF8];
    if (!a7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromDbFromStartDate:v16 endDate:v18];
  v20 = 0;
  if (a7)
  {
LABEL_14:
    v21 = v20;
    *a7 = v20;
  }

LABEL_15:
  if (v8)
  {
    v34 = v18;
    v35 = v16;
    v36 = v13;
    v37 = v12;
    v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_283A58910];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = v19;
    v23 = v19;
    v24 = [v23 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v39;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v38 + 1) + 8 * i);
          v29 = [v28 bundleID];
          v30 = [v22 containsObject:v29];

          if (v30)
          {
            [v28 setIsMessage:1];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v25);
    }

    v13 = v36;
    v12 = v37;
    v18 = v34;
    v16 = v35;
    v19 = v33;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)logAndCreateErrorForString:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ATXNotificationManagementInspector logAndCreateErrorForString:];
  }

  v5 = *MEMORY[0x277CCA460];
  v10[0] = *MEMORY[0x277CCA068];
  v10[1] = v5;
  v11[0] = v3;
  v11[1] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATXNotificationManagementInspector" code:1 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchNotificationsFromBiomeFromStartDate:(id)a3 endDate:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277CEBCC8]) initWithMaxSize:200];
  v11 = objc_opt_new();
  [v8 timeIntervalSinceReferenceDate];
  v12 = [v11 publisherFromStartTime:?];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__67;
  v29 = __Block_byref_object_dispose__67;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke;
  v24[3] = &unk_27859EF10;
  v24[4] = self;
  v24[5] = &v25;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke_88;
  v21 = &unk_27859EF38;
  v13 = v9;
  v22 = v13;
  v14 = v10;
  v23 = v14;
  v15 = [v12 sinkWithCompletion:v24 shouldContinue:&v18];
  if (a5)
  {
    *a5 = v26[5];
  }

  v16 = [v14 toArray];

  _Block_object_dispose(&v25, 8);

  return v16;
}

void __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke_cold_1(a1, v3);
    }

    v5 = [v3 error];
    v6 = [v5 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

BOOL __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  v5 = v4;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v7 = v6;
  if (v5 <= v6)
  {
    v8 = [v3 eventBody];
    if ([v8 isReceiveEvent])
    {
      v9 = [v8 notification];

      if (v9)
      {
        v10 = *(a1 + 40);
        v11 = [v8 notification];
        [v10 addObject:v11];
      }
    }
  }

  return v5 <= v7;
}

- (id)fetchNotificationsFromDbFromStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 updateDatabase];
  v8 = [v7 allNotificationsBetweenStartTimestamp:v6 endTimestamp:v5 limit:200];

  return v8;
}

- (id)constructStacksForNotifications:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = MEMORY[0x277CCACA8];
        v11 = [v9 bundleID];
        v12 = [v9 threadID];
        v13 = [v10 stringWithFormat:@"(%@, %@)", v11, v12];

        v14 = [v4 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = objc_opt_new();
          [v4 setObject:v15 forKeyedSubscript:v13];
        }

        v16 = [v4 objectForKeyedSubscript:v13];
        [v16 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = [v4 allValues];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)constructStacksGroupedByAppForNotifications:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(ATXNotificationManagementInspector *)self constructStacksForNotifications:a3];
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138412290;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 firstObject];
        v13 = [v12 bundleID];

        if (v13)
        {
          v14 = [v4 objectForKeyedSubscript:v13];

          if (!v14)
          {
            v15 = objc_opt_new();
            [v4 setObject:v15 forKeyedSubscript:v13];
          }

          v16 = [v4 objectForKeyedSubscript:v13];
          [v16 addObject:v11];
        }

        else
        {
          v16 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            *buf = v22;
            v28 = v18;
            _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "[%@] Missing bundle ID for stack", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  v19 = [v4 allValues];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_57_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2_9(a1);
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v4, v5, "%@ - timed out trying to get digest", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_63_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2_9(a1);
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v4, v5, "%@ - timed out trying to get missed notification ranking", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logAndCreateErrorForString:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "[%@] Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_2_9(a1);
  v5 = NSStringFromClass(v4);
  v6 = [a2 error];
  v14 = [v6 localizedDescription];
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v7, v8, "[%@] Failed to fetch Biome events with error %@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

@end