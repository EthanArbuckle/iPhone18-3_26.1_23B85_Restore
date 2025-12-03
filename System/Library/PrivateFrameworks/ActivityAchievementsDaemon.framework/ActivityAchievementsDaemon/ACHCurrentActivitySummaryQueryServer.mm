@interface ACHCurrentActivitySummaryQueryServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (void)_queue_start;
- (void)_queue_stop;
- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)currentActivitySummaryHelper:(id)helper didUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields;
@end

@implementation ACHCurrentActivitySummaryQueryServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  clientCopy = client;
  configurationCopy = configuration;
  dCopy = d;
  v14 = [(HDQueryServer *)[ACHCurrentActivitySummaryQueryServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];

  return v14;
}

- (void)_queue_start
{
  v5.receiver = self;
  v5.super_class = ACHCurrentActivitySummaryQueryServer;
  [(HDQueryServer *)&v5 _queue_start];
  profile = [(HDQueryServer *)self profile];
  currentActivitySummaryHelper = [profile currentActivitySummaryHelper];
  [currentActivitySummaryHelper addObserver:self];
}

- (void)_queue_stop
{
  v5.receiver = self;
  v5.super_class = ACHCurrentActivitySummaryQueryServer;
  [(HDQueryServer *)&v5 _queue_stop];
  profile = [(HDQueryServer *)self profile];
  currentActivitySummaryHelper = [profile currentActivitySummaryHelper];
  [currentActivitySummaryHelper removeObserver:self];
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  v17 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  clientProxy = [(HDQueryServer *)self clientProxy];
  if (clientProxy)
  {
    if (([(HKActivitySummary *)self->_lastTodaySummary _allFieldsAreEqual:summaryCopy]& 1) == 0)
    {
      v9 = ACHLogXPC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ACHCurrentActivitySummaryQueryServer currentActivitySummaryHelper:didUpdateTodayActivitySummary:changedFields:];
      }

      queryUUID = [(HDQueryServer *)self queryUUID];
      [clientProxy client_deliverTodaySummary:summaryCopy changedTodayFields:fields yesterdaySummary:0 changedYesterdayFields:0 queryUUID:queryUUID];

      v11 = [summaryCopy copy];
      p_super = &self->_lastTodaySummary->super;
      self->_lastTodaySummary = v11;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = ACHLogXPC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACHCurrentActivitySummaryQueryServer currentActivitySummaryHelper:didUpdateTodayActivitySummary:changedFields:];
    }
  }

  p_super = ACHLogXPC();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = summaryCopy;
    _os_log_impl(&dword_221DDC000, p_super, OS_LOG_TYPE_DEFAULT, "Not calling query client with todayActivitySummary: %@, same as lastTodaySummary.", &v15, 0xCu);
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  v17 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  clientProxy = [(HDQueryServer *)self clientProxy];
  if (clientProxy)
  {
    if (([(HKActivitySummary *)self->_lastYesterdaySummary _allFieldsAreEqual:summaryCopy]& 1) == 0)
    {
      v9 = ACHLogXPC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ACHCurrentActivitySummaryQueryServer currentActivitySummaryHelper:didUpdateYesterdayActivitySummary:changedFields:];
      }

      queryUUID = [(HDQueryServer *)self queryUUID];
      [clientProxy client_deliverTodaySummary:0 changedTodayFields:0 yesterdaySummary:summaryCopy changedYesterdayFields:fields queryUUID:queryUUID];

      v11 = [summaryCopy copy];
      p_super = &self->_lastYesterdaySummary->super;
      self->_lastYesterdaySummary = v11;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = ACHLogXPC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACHCurrentActivitySummaryQueryServer currentActivitySummaryHelper:didUpdateTodayActivitySummary:changedFields:];
    }
  }

  p_super = ACHLogXPC();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = summaryCopy;
    _os_log_impl(&dword_221DDC000, p_super, OS_LOG_TYPE_DEFAULT, "Not calling query client with yesterdayActivitySummary: %@, same as lastYesterdaySummary.", &v15, 0xCu);
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)currentActivitySummaryHelper:didUpdateTodayActivitySummary:changedFields:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_221DDC000, v0, OS_LOG_TYPE_DEBUG, "Calling query client with today summary: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)currentActivitySummaryHelper:didUpdateTodayActivitySummary:changedFields:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_221DDC000, v0, OS_LOG_TYPE_ERROR, "Missing query client for server %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)currentActivitySummaryHelper:didUpdateYesterdayActivitySummary:changedFields:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_221DDC000, v0, OS_LOG_TYPE_DEBUG, "Calling query client with yesterday summary: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end