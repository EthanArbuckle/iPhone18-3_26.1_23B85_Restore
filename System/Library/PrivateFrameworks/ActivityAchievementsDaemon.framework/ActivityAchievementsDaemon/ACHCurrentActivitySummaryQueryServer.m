@interface ACHCurrentActivitySummaryQueryServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (void)_queue_start;
- (void)_queue_stop;
- (void)currentActivitySummaryHelper:(id)a3 didUpdateTodayActivitySummary:(id)a4 changedFields:(unint64_t)a5;
- (void)currentActivitySummaryHelper:(id)a3 didUpdateYesterdayActivitySummary:(id)a4 changedFields:(unint64_t)a5;
@end

@implementation ACHCurrentActivitySummaryQueryServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HDQueryServer *)[ACHCurrentActivitySummaryQueryServer alloc] initWithUUID:v13 configuration:v12 client:v11 delegate:v10];

  return v14;
}

- (void)_queue_start
{
  v5.receiver = self;
  v5.super_class = ACHCurrentActivitySummaryQueryServer;
  [(HDQueryServer *)&v5 _queue_start];
  v3 = [(HDQueryServer *)self profile];
  v4 = [v3 currentActivitySummaryHelper];
  [v4 addObserver:self];
}

- (void)_queue_stop
{
  v5.receiver = self;
  v5.super_class = ACHCurrentActivitySummaryQueryServer;
  [(HDQueryServer *)&v5 _queue_stop];
  v3 = [(HDQueryServer *)self profile];
  v4 = [v3 currentActivitySummaryHelper];
  [v4 removeObserver:self];
}

- (void)currentActivitySummaryHelper:(id)a3 didUpdateTodayActivitySummary:(id)a4 changedFields:(unint64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(HDQueryServer *)self clientProxy];
  if (v8)
  {
    if (([(HKActivitySummary *)self->_lastTodaySummary _allFieldsAreEqual:v7]& 1) == 0)
    {
      v9 = ACHLogXPC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ACHCurrentActivitySummaryQueryServer currentActivitySummaryHelper:didUpdateTodayActivitySummary:changedFields:];
      }

      v10 = [(HDQueryServer *)self queryUUID];
      [v8 client_deliverTodaySummary:v7 changedTodayFields:a5 yesterdaySummary:0 changedYesterdayFields:0 queryUUID:v10];

      v11 = [v7 copy];
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
    v16 = v7;
    _os_log_impl(&dword_221DDC000, p_super, OS_LOG_TYPE_DEFAULT, "Not calling query client with todayActivitySummary: %@, same as lastTodaySummary.", &v15, 0xCu);
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)currentActivitySummaryHelper:(id)a3 didUpdateYesterdayActivitySummary:(id)a4 changedFields:(unint64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(HDQueryServer *)self clientProxy];
  if (v8)
  {
    if (([(HKActivitySummary *)self->_lastYesterdaySummary _allFieldsAreEqual:v7]& 1) == 0)
    {
      v9 = ACHLogXPC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ACHCurrentActivitySummaryQueryServer currentActivitySummaryHelper:didUpdateYesterdayActivitySummary:changedFields:];
      }

      v10 = [(HDQueryServer *)self queryUUID];
      [v8 client_deliverTodaySummary:0 changedTodayFields:0 yesterdaySummary:v7 changedYesterdayFields:a5 queryUUID:v10];

      v11 = [v7 copy];
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
    v16 = v7;
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