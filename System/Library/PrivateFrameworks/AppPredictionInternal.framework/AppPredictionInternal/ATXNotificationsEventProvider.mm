@interface ATXNotificationsEventProvider
- (ATXNotificationsEventProvider)initWithLastNDays:(unint64_t)days;
- (unint64_t)modeCountOfNotificationsClearedWithinLast1DayForMode:(unint64_t)mode;
- (unint64_t)modeCountOfNotificationsClearedWithinLastNDaysForMode:(unint64_t)mode;
- (unint64_t)modeCountOfNotificationsReceivedWithinLast1DayForMode:(unint64_t)mode;
- (unint64_t)modeCountOfNotificationsReceivedWithinLastNDaysForMode:(unint64_t)mode;
- (void)cacheGlobalNotificationStreamIfNecessary;
- (void)cacheModeNotificationStreamIfNecessary;
@end

@implementation ATXNotificationsEventProvider

- (ATXNotificationsEventProvider)initWithLastNDays:(unint64_t)days
{
  v8.receiver = self;
  v8.super_class = ATXNotificationsEventProvider;
  v4 = [(ATXNotificationsEventProvider *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(-86400 * days)];
    thresholdDateLastNDays = v4->_thresholdDateLastNDays;
    v4->_thresholdDateLastNDays = v5;
  }

  return v4;
}

- (void)cacheGlobalNotificationStreamIfNecessary
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXNotificationsEventProvider: Could not fetch notification stream with error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __73__ATXNotificationsEventProvider_cacheGlobalNotificationStreamIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __73__ATXNotificationsEventProvider_cacheGlobalNotificationStreamIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 eventBody];
  if ([v3 usageType] == 17 || objc_msgSend(v3, "usageType") == 18)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    [v7 timestamp];
    if (v4 <= *(a1 + 64))
    {
      goto LABEL_9;
    }

    v5 = 40;
    goto LABEL_5;
  }

  if ([v3 usageType] == 4)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    [v7 timestamp];
    if (v6 > *(a1 + 64))
    {
      v5 = 56;
LABEL_5:
      ++*(*(*(a1 + v5) + 8) + 24);
    }
  }

LABEL_9:
}

- (void)cacheModeNotificationStreamIfNecessary
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXNotificationsEventProvider: Could not fetch inferred mode stream and notification stream with error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __71__ATXNotificationsEventProvider_cacheModeNotificationStreamIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __71__ATXNotificationsEventProvider_cacheModeNotificationStreamIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __71__ATXNotificationsEventProvider_cacheModeNotificationStreamIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v29 = a2;
  v3 = [v29 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [v29 eventBody];
  v6 = v5;
  if (isKindOfClass)
  {
    if ([v5 modeType] == 2)
    {
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;
LABEL_22:

      goto LABEL_23;
    }

    [v6 modeType];
    BMUserFocusInferredModeTypeToActivity();
    ATXModeFromActivityType();
    v23 = *(*(*(a1 + 64) + 8) + 40);
    if (v23)
    {
      v24 = ATXModeToString();
      v25 = [v23 isEqualToString:v24];

      v26 = [v6 isStart];
      if (v25)
      {
        if ((v26 & 1) == 0)
        {
          v27 = 0;
LABEL_21:
          v28 = *(*(a1 + 64) + 8);
          v8 = *(v28 + 40);
          *(v28 + 40) = v27;
          goto LABEL_22;
        }

LABEL_23:

        goto LABEL_24;
      }

      if (!v26)
      {
        goto LABEL_23;
      }
    }

    else if (([v6 isStart] & 1) == 0)
    {
      goto LABEL_23;
    }

    v27 = ATXModeToString();
    goto LABEL_21;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if ((v9 & 1) != 0 && *(*(*(a1 + 64) + 8) + 40))
  {
    v6 = [v29 eventBody];
    if ([v6 usageType] == 17 || objc_msgSend(v6, "usageType") == 18)
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
      v12 = [v10 numberWithInt:{objc_msgSend(v11, "intValue") + 1}];
      [*(a1 + 32) setObject:v12 forKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];

      [v29 timestamp];
      if (v13 > *(a1 + 72))
      {
        v14 = MEMORY[0x277CCABB0];
        v15 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
        v16 = [v14 numberWithInt:{objc_msgSend(v15, "intValue") + 1}];
        [*(a1 + 40) setObject:v16 forKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
      }
    }

    if ([v6 usageType] != 4)
    {
      goto LABEL_23;
    }

    v17 = MEMORY[0x277CCABB0];
    v18 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
    v19 = [v17 numberWithInt:{objc_msgSend(v18, "intValue") + 1}];
    [*(a1 + 48) setObject:v19 forKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];

    [v29 timestamp];
    if (v20 <= *(a1 + 72))
    {
      goto LABEL_23;
    }

    v21 = MEMORY[0x277CCABB0];
    v8 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
    v22 = [v21 numberWithInt:{objc_msgSend(v8, "intValue") + 1}];
    [*(a1 + 56) setObject:v22 forKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];

    goto LABEL_22;
  }

LABEL_24:
}

- (unint64_t)modeCountOfNotificationsReceivedWithinLastNDaysForMode:(unint64_t)mode
{
  [(ATXNotificationsEventProvider *)self cacheModeNotificationStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_notificationsReceivedInModeInLastNDays objectForKeyedSubscript:v4];
  intValue = [v5 intValue];

  return intValue;
}

- (unint64_t)modeCountOfNotificationsReceivedWithinLast1DayForMode:(unint64_t)mode
{
  [(ATXNotificationsEventProvider *)self cacheModeNotificationStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_notificationsReceivedInModeInLast1Day objectForKeyedSubscript:v4];
  intValue = [v5 intValue];

  return intValue;
}

- (unint64_t)modeCountOfNotificationsClearedWithinLastNDaysForMode:(unint64_t)mode
{
  [(ATXNotificationsEventProvider *)self cacheModeNotificationStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_notificationsClearedInModeInLastNDays objectForKeyedSubscript:v4];
  intValue = [v5 intValue];

  return intValue;
}

- (unint64_t)modeCountOfNotificationsClearedWithinLast1DayForMode:(unint64_t)mode
{
  [(ATXNotificationsEventProvider *)self cacheModeNotificationStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_notificationsClearedInModeInLast1Day objectForKeyedSubscript:v4];
  intValue = [v5 intValue];

  return intValue;
}

@end