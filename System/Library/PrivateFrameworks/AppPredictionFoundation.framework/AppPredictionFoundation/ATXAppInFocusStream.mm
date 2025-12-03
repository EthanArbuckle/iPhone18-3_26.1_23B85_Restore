@interface ATXAppInFocusStream
+ (id)currentAppInFocusStartEvent;
- (ATXAppInFocusStream)initWithRemoteIDSIdentifier:(id)identifier;
- (BOOL)_shouldPairStartEvent:(id)event withEndEvent:(id)endEvent;
- (id)_createAppInFocusSessionFromEvent:(id)event startTime:(id)time endTime:(id)endTime;
- (id)_fetchBMDeviceFromIDSIdentifier:(id)identifier;
- (id)_getAppLaunchEventFromBMAppInFocus:(id)focus;
- (id)currentAppInFocusStartEventAtGivenTime:(id)time;
- (id)getFirstAppLaunchSessionBetweenStartDate:(id)date endDate:(id)endDate;
- (id)getFirstAppLaunchStartEventBetweenStartDate:(id)date endDate:(id)endDate;
- (id)getLastAppLaunchSessionBetweenStartDate:(id)date endDate:(id)endDate;
- (id)getLastAppLaunchStartEventBetweenStartDate:(id)date endDate:(id)endDate;
- (unint64_t)numberOfAppLaunchEventsBetweenStartDate:(id)date endDate:(id)endDate;
- (unint64_t)numberOfAppLaunchSessionsBetweenStartDate:(id)date endDate:(id)endDate forBundleID:(id)d;
- (void)enumerateAllAppLaunchSessionsFromStartDate:(id)date bundleIDFilter:(id)filter block:(id)block;
- (void)enumerateAppLaunchEventsFromStartDate:(id)date bundleIDFilter:(id)filter block:(id)block;
@end

@implementation ATXAppInFocusStream

- (ATXAppInFocusStream)initWithRemoteIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = ATXAppInFocusStream;
  v5 = [(ATXAppInFocusStream *)&v10 init];
  if (!v5 || (v6 = [identifierCopy copy], remoteIDSIdentifier = v5->_remoteIDSIdentifier, v5->_remoteIDSIdentifier = v6, remoteIDSIdentifier, -[ATXAppInFocusStream _fetchBMDeviceFromIDSIdentifier:](v5, "_fetchBMDeviceFromIDSIdentifier:", v5->_remoteIDSIdentifier), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v8 = v5;
  }

  return v8;
}

+ (id)currentAppInFocusStartEvent
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v3 currentAppInFocusStartEventAtGivenTime:v4];

  objc_autoreleasePoolPop(v2);

  return v5;
}

- (void)enumerateAppLaunchEventsFromStartDate:(id)date bundleIDFilter:(id)filter block:(id)block
{
  v8 = MEMORY[0x277CBEAA8];
  blockCopy = block;
  filterCopy = filter;
  dateCopy = date;
  v12 = [v8 now];
  [(ATXAppInFocusStream *)self enumerateAppLaunchEventsBetweenStartDate:dateCopy endDate:v12 shouldReverse:0 bundleIDFilter:filterCopy block:blockCopy];
}

uint64_t __131__ATXAppInFocusStream_enumerateAppLaunchEventsBetweenStartDate_endDate_limit_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke(void *a1)
{
  if (++*(*(a1[5] + 8) + 24) <= a1[6])
  {
    return (*(a1[4] + 16))();
  }

  else
  {
    return 0;
  }
}

- (id)getFirstAppLaunchStartEventBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__ATXAppInFocusStream_getFirstAppLaunchStartEventBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_2785906A0;
  v10[4] = &v11;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchEventsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:0 type:2 displayType:7 bundleIDsFilter:0 block:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __75__ATXAppInFocusStream_getFirstAppLaunchStartEventBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 starting] && objc_msgSend(v4, "type") == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)getLastAppLaunchStartEventBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__ATXAppInFocusStream_getLastAppLaunchStartEventBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_2785906A0;
  v10[4] = &v11;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchEventsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:1 type:2 displayType:7 bundleIDsFilter:0 block:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __74__ATXAppInFocusStream_getLastAppLaunchStartEventBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 starting] && objc_msgSend(v4, "type") == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (unint64_t)numberOfAppLaunchEventsBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ATXAppInFocusStream_numberOfAppLaunchEventsBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_2785906A0;
  v10[4] = &v11;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchEventsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:0 type:2 displayType:7 bundleIDsFilter:0 block:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __71__ATXAppInFocusStream_numberOfAppLaunchEventsBetweenStartDate_endDate___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

- (id)currentAppInFocusStartEventAtGivenTime:(id)time
{
  v29 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v5 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[ATXAppInFocusStream currentAppInFocusStartEventAtGivenTime:]";
    v27 = 2112;
    v28 = timeCopy;
    _os_log_impl(&dword_226368000, v6, OS_LOG_TYPE_DEFAULT, "%s: Getting the current app in focus at time: %@", buf, 0x16u);
  }

  v7 = BiomeLibrary();
  v8 = [v7 App];
  inFocus = [v8 InFocus];
  v10 = [inFocus atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_283988F00 lastN:&unk_283988F00 reversed:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__ATXAppInFocusStream_currentAppInFocusStartEventAtGivenTime___block_invoke_15;
  v16[3] = &unk_2785906C8;
  v16[4] = self;
  v18 = &v19;
  v11 = timeCopy;
  v17 = v11;
  v12 = [v10 sinkWithCompletion:&__block_literal_global_14 shouldContinue:v16];

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  objc_autoreleasePoolPop(v5);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __62__ATXAppInFocusStream_currentAppInFocusStartEventAtGivenTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__ATXAppInFocusStream_currentAppInFocusStartEventAtGivenTime___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __62__ATXAppInFocusStream_currentAppInFocusStartEventAtGivenTime___block_invoke_15(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) _getAppLaunchEventFromBMAppInFocus:a2];
  if ([v3 starting])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  }

  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [v3 bundleID];
    v9 = 136315906;
    v10 = "[ATXAppInFocusStream currentAppInFocusStartEventAtGivenTime:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 1024;
    v16 = [v3 starting];
    _os_log_impl(&dword_226368000, v4, OS_LOG_TYPE_DEFAULT, "%s: Last event from BMAppInFocus stream at time %@ is %@. Is a starting event: %d", &v9, 0x26u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

void __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_26(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _getAppLaunchEventFromBMAppInFocus:a2];
  v4 = v3;
  if (v3 && ((*(a1 + 56) >> [v3 type]) & 1) != 0 && ((*(a1 + 60) >> objc_msgSend(v4, "displayType")) & 1) != 0 && ((v5 = *(a1 + 40)) == 0 || (objc_msgSend(v4, "bundleID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "containsObject:", v6), v6, v7)))
  {
    v8 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)enumerateAllAppLaunchSessionsFromStartDate:(id)date bundleIDFilter:(id)filter block:(id)block
{
  v8 = MEMORY[0x277CBEAA8];
  blockCopy = block;
  filterCopy = filter;
  dateCopy = date;
  v12 = [v8 now];
  [(ATXAppInFocusStream *)self enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:v12 shouldReverse:0 bundleIDFilter:filterCopy block:blockCopy];
}

uint64_t __133__ATXAppInFocusStream_enumerateAppLaunchSessionsBetweenStartDate_endDate_limit_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke(void *a1)
{
  if (++*(*(a1[5] + 8) + 24) <= a1[6])
  {
    return (*(a1[4] + 16))();
  }

  else
  {
    return 0;
  }
}

- (id)getFirstAppLaunchSessionBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ATXAppInFocusStream_getFirstAppLaunchSessionBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_278590740;
  v10[4] = &v11;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:0 type:2 displayType:7 bundleIDsFilter:0 block:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

BOOL __72__ATXAppInFocusStream_getFirstAppLaunchSessionBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 type];
  if (v5 == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return v5 != 1;
}

- (id)getLastAppLaunchSessionBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ATXAppInFocusStream_getLastAppLaunchSessionBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_278590740;
  v10[4] = &v11;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:1 type:2 displayType:7 bundleIDsFilter:0 block:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

BOOL __71__ATXAppInFocusStream_getLastAppLaunchSessionBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 type];
  if (v5 == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return v5 != 1;
}

- (unint64_t)numberOfAppLaunchSessionsBetweenStartDate:(id)date endDate:(id)endDate forBundleID:(id)d
{
  v21[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  v11 = dCopy;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (dCopy)
  {
    v21[0] = dCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  }

  else
  {
    v12 = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__ATXAppInFocusStream_numberOfAppLaunchSessionsBetweenStartDate_endDate_forBundleID___block_invoke;
  v16[3] = &unk_278590740;
  v16[4] = &v17;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:0 type:2 displayType:7 bundleIDsFilter:v12 block:v16];
  if (v11)
  {
  }

  v13 = v18[3];
  _Block_object_dispose(&v17, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __85__ATXAppInFocusStream_numberOfAppLaunchSessionsBetweenStartDate_endDate_forBundleID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

void __128__ATXAppInFocusStream__enumerateAppLaunchSessionsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __128__ATXAppInFocusStream__enumerateAppLaunchSessionsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_31(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _getAppLaunchEventFromBMAppInFocus:a2];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = [v3 bundleID];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (((*(a1 + 64) >> [v4 type]) & 1) == 0)
    {
      goto LABEL_19;
    }

    if (((*(a1 + 68) >> [v4 displayType]) & 1) == 0)
    {
      goto LABEL_19;
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [v4 bundleID];
      v10 = [v8 containsObject:v9];

      if (!v10)
      {
        goto LABEL_19;
      }
    }

    v11 = *(a1 + 72);
    v12 = [v4 starting];
    if (v11 == 1)
    {
      if (v12)
      {
        if (v7 && [v4 starting])
        {
          if ([*(a1 + 32) _shouldPairStartEvent:v4 withEndEvent:v7])
          {
            v13 = *(a1 + 32);
            v14 = [v4 absoluteTimestamp];
            v15 = v7;
LABEL_24:
            v22 = [v15 absoluteTimestamp];
            v18 = [v13 _createAppInFocusSessionFromEvent:v4 startTime:v14 endTime:v22];

            v16 = (*(*(a1 + 56) + 16))();
            v7 = 0;
            goto LABEL_16;
          }

LABEL_25:
          v23 = *(a1 + 40);
          v18 = [v4 bundleID];
          v19 = v23;
          v20 = 0;
          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    else if (!v12)
    {
      if (v7 && ([v4 starting] & 1) == 0)
      {
        if ([*(a1 + 32) _shouldPairStartEvent:v7 withEndEvent:v4])
        {
          v13 = *(a1 + 32);
          v14 = [v7 absoluteTimestamp];
          v15 = v4;
          goto LABEL_24;
        }

        goto LABEL_25;
      }

LABEL_19:
      v16 = 1;
      goto LABEL_20;
    }

    v17 = *(a1 + 40);
    v18 = [v4 bundleID];
    v19 = v17;
    v20 = v4;
LABEL_15:
    [v19 setObject:v20 forKeyedSubscript:v18];
    v16 = 1;
LABEL_16:

LABEL_20:
    goto LABEL_21;
  }

  v16 = 1;
LABEL_21:

  return v16;
}

- (id)_fetchBMDeviceFromIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  v18 = 0;
  v5 = [v4 remoteDevicesWithError:&v18];
  v6 = v18;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __55__ATXAppInFocusStream__fetchBMDeviceFromIDSIdentifier___block_invoke;
  v16 = &unk_278590790;
  v7 = identifierCopy;
  v17 = v7;
  v8 = [v5 _pas_filteredArrayWithTest:&v13];

  if (v6 || ![v8 count])
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXAppInFocusStream _fetchBMDeviceFromIDSIdentifier:];
    }

    firstObject = 0;
  }

  else
  {
    if ([v8 count] != 1)
    {
      v11 = __atxlog_handle_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ATXAppInFocusStream _fetchBMDeviceFromIDSIdentifier:v8];
      }
    }

    firstObject = [v8 firstObject];
  }

  return firstObject;
}

uint64_t __55__ATXAppInFocusStream__fetchBMDeviceFromIDSIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 idsDeviceIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_getAppLaunchEventFromBMAppInFocus:(id)focus
{
  focusCopy = focus;
  v5 = objc_autoreleasePoolPush();
  eventBody = [focusCopy eventBody];
  v7 = eventBody;
  if (eventBody)
  {
    bundleID = [eventBody bundleID];
    v9 = bundleID;
    if (bundleID && [bundleID length])
    {
      v20 = -[ATXAppInFocusStream _atxAppInFocusEventTypeForBMAppInFocusType:](self, "_atxAppInFocusEventTypeForBMAppInFocusType:", [v7 type]);
      v10 = -[ATXAppInFocusStream _atxAppInFocusDisplayTypeForBMAppInFocusDisplayType:](self, "_atxAppInFocusDisplayTypeForBMAppInFocusDisplayType:", [v7 displayType]);
      parentBundleID = [v7 parentBundleID];
      extensionHostID = [v7 extensionHostID];
      starting = [v7 starting];
      v14 = objc_alloc(MEMORY[0x277CBEAA8]);
      [focusCopy timestamp];
      v15 = [v14 initWithTimeIntervalSinceReferenceDate:?];
      launchReason = [v7 launchReason];
      v17 = [[ATXAppInFocusEvent alloc] initWithBundleId:v9 type:v20 displayType:v10 parentBundleID:parentBundleID extensionHostID:extensionHostID starting:starting absoluteTimestamp:v15 launchReason:launchReason];

      goto LABEL_11;
    }

    v18 = __atxlog_handle_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [ATXAppInFocusStream _getAppLaunchEventFromBMAppInFocus:];
    }
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXAppInFocusStream _getAppLaunchEventFromBMAppInFocus:];
    }
  }

  v17 = 0;
LABEL_11:

  objc_autoreleasePoolPop(v5);

  return v17;
}

- (BOOL)_shouldPairStartEvent:(id)event withEndEvent:(id)endEvent
{
  eventCopy = event;
  endEventCopy = endEvent;
  bundleID = [eventCopy bundleID];
  bundleID2 = [endEventCopy bundleID];
  v9 = [bundleID isEqualToString:bundleID2];

  if (!v9)
  {
    goto LABEL_11;
  }

  parentBundleID = [eventCopy parentBundleID];
  if (parentBundleID)
  {
    v11 = parentBundleID;
    parentBundleID2 = [endEventCopy parentBundleID];

    if (parentBundleID2)
    {
      parentBundleID3 = [eventCopy parentBundleID];
      parentBundleID4 = [endEventCopy parentBundleID];
      v15 = [parentBundleID3 isEqualToString:parentBundleID4];

      if (!v15)
      {
        goto LABEL_11;
      }
    }
  }

  extensionHostID = [eventCopy extensionHostID];
  if (extensionHostID)
  {
    v17 = extensionHostID;
    extensionHostID2 = [endEventCopy extensionHostID];

    if (extensionHostID2)
    {
      extensionHostID3 = [eventCopy extensionHostID];
      extensionHostID4 = [endEventCopy extensionHostID];
      v21 = [extensionHostID3 isEqualToString:extensionHostID4];

      if (!v21)
      {
        goto LABEL_11;
      }
    }
  }

  type = [eventCopy type];
  if (type == [endEventCopy type] && (v23 = objc_msgSend(eventCopy, "displayType"), v23 == objc_msgSend(endEventCopy, "displayType")))
  {
    absoluteTimestamp = [eventCopy absoluteTimestamp];
    absoluteTimestamp2 = [endEventCopy absoluteTimestamp];
    v26 = [absoluteTimestamp compare:absoluteTimestamp2] == -1;
  }

  else
  {
LABEL_11:
    v26 = 0;
  }

  return v26;
}

- (id)_createAppInFocusSessionFromEvent:(id)event startTime:(id)time endTime:(id)endTime
{
  endTimeCopy = endTime;
  timeCopy = time;
  eventCopy = event;
  v10 = [ATXAppInFocusEventSession alloc];
  bundleID = [eventCopy bundleID];
  type = [eventCopy type];
  displayType = [eventCopy displayType];
  parentBundleID = [eventCopy parentBundleID];
  extensionHostID = [eventCopy extensionHostID];
  launchReason = [eventCopy launchReason];

  v17 = [(ATXAppInFocusEventSession *)v10 initWithBundleId:bundleID type:type displayType:displayType parentBundleID:parentBundleID extensionHostID:extensionHostID appSessionStartTime:timeCopy appSessionEndTime:endTimeCopy launchReason:launchReason];

  return v17;
}

void __62__ATXAppInFocusStream_currentAppInFocusStartEventAtGivenTime___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_226368000, v2, v3, "Could not obtain current App in Focus from Biome: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateAppLaunchEventsBetweenStartDate:(uint64_t)a1 endDate:(uint64_t)a2 shouldReverse:type:displayType:bundleIDsFilter:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAppInFocusStream.m" lineNumber:258 description:@"Start date must be earlier than the end date."];
}

void __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_226368000, v2, v3, "ATXAppInFocusStream: Can't read App.InFocus stream with error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateAppLaunchSessionsBetweenStartDate:(uint64_t)a1 endDate:(uint64_t)a2 shouldReverse:type:displayType:bundleIDsFilter:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAppInFocusStream.m" lineNumber:467 description:@"Start date must be earlier than the end date."];
}

- (void)_fetchBMDeviceFromIDSIdentifier:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_226368000, v1, v2, "ATXAppInFocusStream: Got %lu remote oneness devices from BMSyncService, expected 1", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_fetchBMDeviceFromIDSIdentifier:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_226368000, v0, OS_LOG_TYPE_ERROR, "ATXAppInFocusStream: Biome couldn't fetch remote devices with error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_getAppLaunchEventFromBMAppInFocus:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_2(&dword_226368000, v0, v1, "No bundleId found for BMAppInFocus event : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_getAppLaunchEventFromBMAppInFocus:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_2(&dword_226368000, v0, v1, "No eventBody found for BMStoreEvent : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_atxAppInFocusEventTypeForBMAppInFocusType:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_226368000, a2, a3, "BMAppInFocusType: %lu not handled in switch statement. Returning ATXAppInFocusEventTypeUnknown", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_atxAppInFocusDisplayTypeForBMAppInFocusDisplayType:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_226368000, a2, a3, "BMAppInFocusDisplayType: %lu not handled in switch statement. Returning ATXAppInFocusDisplayTypeUnknown", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end