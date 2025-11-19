@interface ATXIdleTimeEndAnchor
+ (BOOL)shouldProcessContextStoreNotification;
+ (double)minimumSecondsForBeingIdle;
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)a3 endDate:(id)a4;
+ (id)filterBlock;
+ (id)predicateForContextStoreRegistration;
+ (id)sampleEvent;
+ (void)shouldProcessContextStoreNotification;
@end

@implementation ATXIdleTimeEndAnchor

+ (double)minimumSecondsForBeingIdle
{
  v2 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v2 idleTimeEndAnchorMinimumSecondsForBeingIdle];
  v4 = v3;

  return v4;
}

+ (id)filterBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__ATXIdleTimeEndAnchor_filterBlock__block_invoke;
  aBlock[3] = &__block_descriptor_40_e31_B16__0___ATXGenericEventBase__8l;
  aBlock[4] = a1;
  v2 = _Block_copy(aBlock);

  return v2;
}

BOOL __35__ATXIdleTimeEndAnchor_filterBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 endTime];
    v6 = [v4 startTime];

    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    v9 = *(a1 + 32);
    [objc_opt_class() minimumSecondsForBeingIdle];
    v11 = v8 >= v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)a3 endDate:(id)a4
{
  v5 = MEMORY[0x277CEBC40];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = objc_opt_new();
  v10 = [objc_opt_class() filterBlock];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__ATXIdleTimeEndAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke;
  v14[3] = &unk_278598F50;
  v15 = v9;
  v11 = v9;
  [v8 enumerateDeviceScreenUnLockedStateEventsFromStartDate:v7 endDate:v6 filterBlock:v10 limit:1000000 ascending:1 block:v14];

  v12 = [v11 _pas_filteredArrayWithTest:&__block_literal_global_175];

  return v12;
}

void __71__ATXIdleTimeEndAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[ATXScreenLockStateDuetEvent alloc] initWithATXEvent:v3];

  [v2 addObject:v4];
}

BOOL __71__ATXIdleTimeEndAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 endDate];
  v3 = [_ATXActionUtils localHourOfDayFromDate:v2];

  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __71__ATXIdleTimeEndAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2_cold_1();
  }

  v5 = v3 - 4;
  v6 = __atxlog_handle_anchor();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5 >= 8)
  {
    if (v7)
    {
      __71__ATXIdleTimeEndAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2_cold_2();
    }
  }

  else if (v7)
  {
    __71__ATXIdleTimeEndAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2_cold_3();
  }

  return v5 < 8;
}

+ (id)predicateForContextStoreRegistration
{
  v2 = MEMORY[0x277CFE360];
  v3 = [objc_opt_class() keyPathForContextStore];
  [objc_opt_class() minimumSecondsForBeingIdle];
  v4 = [v2 predicateForKeyPath:v3 equalToValue:&unk_283A56FC0 withMinimumDurationInPreviousState:?];

  return v4;
}

+ (BOOL)shouldProcessContextStoreNotification
{
  if (![objc_opt_class() shouldProcessContextStoreNotificationForNumber])
  {
    return 0;
  }

  v2 = objc_opt_new();
  v3 = [_ATXActionUtils localHourOfDayFromDate:v2];

  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[ATXIdleTimeEndAnchor shouldProcessContextStoreNotification];
  }

  v5 = v3 - 4;
  v6 = __atxlog_handle_anchor();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  v8 = v5 >= 8;
  v9 = v5 < 8;
  if (v8)
  {
    if (v7)
    {
      +[ATXIdleTimeEndAnchor shouldProcessContextStoreNotification];
    }
  }

  else if (v7)
  {
    +[ATXIdleTimeEndAnchor shouldProcessContextStoreNotification];
  }

  return v9;
}

+ (id)sampleEvent
{
  v2 = [ATXScreenLockStateDuetEvent alloc];
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-20.0];
  v4 = objc_opt_new();
  v5 = [(ATXScreenLockStateDuetEvent *)v2 initWithScreenLockState:0 startDate:v3 endDate:v4];

  return v5;
}

void __71__ATXIdleTimeEndAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__ATXIdleTimeEndAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__ATXIdleTimeEndAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)shouldProcessContextStoreNotification
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end