@interface ATXUpdatePredictionsLogger
- (ATXUpdatePredictionsLogger)init;
- (ATXUpdatePredictionsLogger)initWithUserDefaults:(id)defaults petLogger:(id)logger;
- (NSDate)now;
- (id)_countDictionaryDefaultsKeyForClient:(unint64_t)client;
- (id)_countDictionaryForClient:(unint64_t)client;
- (id)_stringForATXUpdatePredictionsClient:(unint64_t)client;
- (int)_clientTypeForUpdatePredictionsClient:(unint64_t)client;
- (int)_triggerTypeForUpdatePredictionsReason:(unint64_t)reason;
- (void)_logPredictionUpdatesForClient:(unint64_t)client lastLogDate:(id)date now:(id)now;
- (void)_resetCountDictionariesForAllClients;
- (void)_setCountDictionary:(id)dictionary forClient:(unint64_t)client;
- (void)countPredictionUpdateWithReason:(unint64_t)reason client:(unint64_t)client;
- (void)flushCountedPredictionUpdatesToLogger;
@end

@implementation ATXUpdatePredictionsLogger

- (ATXUpdatePredictionsLogger)init
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v5 = objc_opt_new();
  v6 = [(ATXUpdatePredictionsLogger *)self initWithUserDefaults:v4 petLogger:v5];

  return v6;
}

- (ATXUpdatePredictionsLogger)initWithUserDefaults:(id)defaults petLogger:(id)logger
{
  defaultsCopy = defaults;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = ATXUpdatePredictionsLogger;
  v9 = [(ATXUpdatePredictionsLogger *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userDefaults, defaults);
    objc_storeStrong(&v10->_petLogger, logger);
  }

  return v10;
}

- (void)countPredictionUpdateWithReason:(unint64_t)reason client:(unint64_t)client
{
  v19 = *MEMORY[0x277D85DE8];
  isClassCLocked = [MEMORY[0x277D42598] isClassCLocked];
  if (reason != 22 && (isClassCLocked & 1) == 0)
  {
    pthread_mutex_lock(&lock_1);
    v8 = [(ATXUpdatePredictionsLogger *)self _countDictionaryForClient:client];
    [(ATXUpdatePredictionsLogger *)self _incrementCountInDictionary:v8 forTriggerType:[(ATXUpdatePredictionsLogger *)self _triggerTypeForUpdatePredictionsReason:reason]];
    [(ATXUpdatePredictionsLogger *)self _incrementCountInDictionary:v8 forTriggerType:7];
    [(ATXUpdatePredictionsLogger *)self _setCountDictionary:v8 forClient:client];
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(ATXUpdatePredictionsLogger *)self _stringForATXUpdatePredictionsClient:client];
      v12 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v8;
      _os_log_debug_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEBUG, "ATXUpdatePredictionsLogger: update for client %@ with reason %@ and countDictionary %@", &v13, 0x20u);
    }

    pthread_mutex_unlock(&lock_1);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)flushCountedPredictionUpdatesToLogger
{
  v3 = os_transaction_create();
  pthread_mutex_lock(&lock_1);
  _lastLogDate = [(ATXUpdatePredictionsLogger *)self _lastLogDate];
  v5 = [(ATXUpdatePredictionsLogger *)self now];
  v6 = v5;
  if (_lastLogDate)
  {
    [v5 timeIntervalSinceDate:_lastLogDate];
    if (v7 >= 79200.0)
    {
      [(ATXUpdatePredictionsLogger *)self _logPredictionUpdatesForClient:0 lastLogDate:_lastLogDate now:v6];
      [(ATXUpdatePredictionsLogger *)self _logPredictionUpdatesForClient:1 lastLogDate:_lastLogDate now:v6];
      [(ATXUpdatePredictionsLogger *)self _resetCountDictionariesForAllClients];
      [(ATXUpdatePredictionsLogger *)self _setLastLogDate:v6];
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(ATXUpdatePredictionsLogger *)v8 flushCountedPredictionUpdatesToLogger:v23];
      }
    }

    else
    {
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(ATXUpdatePredictionsLogger *)v8 flushCountedPredictionUpdatesToLogger:v9];
      }
    }
  }

  else
  {
    [(ATXUpdatePredictionsLogger *)self _resetCountDictionariesForAllClients];
    [(ATXUpdatePredictionsLogger *)self _setLastLogDate:v6];
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ATXUpdatePredictionsLogger *)v8 flushCountedPredictionUpdatesToLogger:v16];
    }
  }

  pthread_mutex_unlock(&lock_1);
}

- (void)_logPredictionUpdatesForClient:(unint64_t)client lastLogDate:(id)date now:(id)now
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  nowCopy = now;
  v10 = [(ATXUpdatePredictionsLogger *)self _countDictionaryForClient:client];
  v11 = 0;
  *&v12 = 138412802;
  v21 = v12;
  do
  {
    v13 = [(ATXUpdatePredictionsLogger *)self _protobufForTriggerType:v11 client:client, v21];
    v14 = [v10 objectForKey:off_2785A0F80[v11]];
    -[ATXUpdatePredictionsLogger _normalizeCountPer24HoursWithStartDate:endDate:count:](self, "_normalizeCountPer24HoursWithStartDate:endDate:count:", dateCopy, nowCopy, [v14 unsignedIntegerValue]);
    v16 = v15;
    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(ATXUpdatePredictionsLogger *)self _stringForATXUpdatePredictionsClient:client];
      v19 = off_2785A0F80[v11];
      *buf = v21;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2048;
      v27 = v16;
      _os_log_debug_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEBUG, "ATXUpdatePredictionsLogger: logging for client %@ trigger type %@ count %f", buf, 0x20u);
    }

    [(ATXPETEventTracker2Protocol *)self->_petLogger trackDistributionForMessage:v13 value:v16];
    ++v11;
  }

  while (v11 != 8);

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_countDictionaryDefaultsKeyForClient:(unint64_t)client
{
  v3 = [(ATXUpdatePredictionsLogger *)self _stringForATXUpdatePredictionsClient:client];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@", @"ATXUpdatePredictionsLoggerCountsDictionary", v3];

  return v4;
}

- (id)_countDictionaryForClient:(unint64_t)client
{
  v4 = [(ATXUpdatePredictionsLogger *)self _countDictionaryDefaultsKeyForClient:client];
  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:v4];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v6;
}

- (void)_setCountDictionary:(id)dictionary forClient:(unint64_t)client
{
  dictionaryCopy = dictionary;
  v7 = [(ATXUpdatePredictionsLogger *)self _countDictionaryDefaultsKeyForClient:client];
  [(NSUserDefaults *)self->_userDefaults setObject:dictionaryCopy forKey:v7];
}

- (void)_resetCountDictionariesForAllClients
{
  v3 = MEMORY[0x277CBEC10];
  [(ATXUpdatePredictionsLogger *)self _setCountDictionary:MEMORY[0x277CBEC10] forClient:0];

  [(ATXUpdatePredictionsLogger *)self _setCountDictionary:v3 forClient:1];
}

- (int)_triggerTypeForUpdatePredictionsReason:(unint64_t)reason
{
  if (reason > 5)
  {
    if (reason - 7 < 0xF)
    {
      return 6;
    }

    if (reason - 22 >= 2)
    {
      v7 = reason == 6;
      v8 = 5;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (reason <= 1)
  {
    if (reason)
    {
      v7 = reason == 1;
      v8 = 1;
LABEL_18:
      if (v7)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

LABEL_21:
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXUpdatePredictionsLogger *)reason _triggerTypeForUpdatePredictionsReason:v9, v10, v11, v12, v13, v14, v15];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"stringForConsumerType called with invalid ATXEngagementType value of %lu", reason}];
    return 6;
  }

  if (reason == 5)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (reason == 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (reason == 2)
  {
    return 2;
  }

  else
  {
    return v6;
  }
}

- (int)_clientTypeForUpdatePredictionsClient:(unint64_t)client
{
  if (client == 1)
  {
    return 1;
  }

  if (!client)
  {
    return 0;
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXUpdatePredictionsLogger *)client _clientTypeForUpdatePredictionsClient:v5, v6, v7, v8, v9, v10, v11];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"_clientTypeForUpdatePredictionsClient called with invalid ATXUpdatePredictionsClient value of %lu", client}];
  return 0x7FFFFFFF;
}

- (id)_stringForATXUpdatePredictionsClient:(unint64_t)client
{
  if (!client)
  {
    return @"AppPredictions";
  }

  if (client == 1)
  {
    return @"ActionPredictions";
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXUpdatePredictionsLogger *)client _stringForATXUpdatePredictionsClient:v5, v6, v7, v8, v9, v10, v11];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"stringForATXUpdatePredictionsClient called with invalid ATXUpdatePredictionsClient value of %lu", client}];
  return @"Error";
}

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (void)_triggerTypeForUpdatePredictionsReason:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "stringForConsumerType called with invalid ATXEngagementType value of %lu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_clientTypeForUpdatePredictionsClient:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "_clientTypeForUpdatePredictionsClient called with invalid ATXUpdatePredictionsClient value of %lu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stringForATXUpdatePredictionsClient:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "stringForATXUpdatePredictionsClient called with invalid ATXUpdatePredictionsClient value of %lu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end