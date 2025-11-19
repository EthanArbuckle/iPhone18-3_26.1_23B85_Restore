@interface CNAPITriageLogger
+ (OS_os_log)os_log;
+ (id)threadEntryPoint;
+ (void)setThreadEntryPoint:(SEL)a3;
- (CNAPITriageLogger)init;
- (void)clientStoppedEnumerationForRequest:(id)a3;
- (void)didExecuteFetchRequest:(id)a3 duration:(double)a4;
- (void)didReturnAllResultsForContactFetchRequest:(id)a3;
- (void)request:(id)a3 containsContact:(id)a4;
- (void)request:(id)a3 encounteredError:(id)a4;
- (void)request:(id)a3 failedWithError:(id)a4;
- (void)request:(id)a3 spentTimeInClientCode:(double)a4;
- (void)request:(id)a3 willReturnAnchor:(id)a4;
- (void)willExecuteFetchRequest:(id)a3;
@end

@implementation CNAPITriageLogger

+ (id)threadEntryPoint
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKeyedSubscript:@"_triage_logger_entry_point"];

  return v4;
}

+ (OS_os_log)os_log
{
  if (os_log_cn_once_token_0_26 != -1)
  {
    +[CNAPITriageLogger os_log];
  }

  v3 = os_log_cn_once_object_0_26;

  return v3;
}

uint64_t __27__CNAPITriageLogger_os_log__block_invoke()
{
  os_log_cn_once_object_0_26 = os_log_create("com.apple.contacts", "api-triage");

  return MEMORY[0x1EEE66BB8]();
}

- (CNAPITriageLogger)init
{
  v7.receiver = self;
  v7.super_class = CNAPITriageLogger;
  v2 = [(CNAPITriageLogger *)&v7 init];
  if (v2)
  {
    v3 = [objc_opt_class() os_log];
    log = v2->_log;
    v2->_log = v3;

    v5 = v2;
  }

  return v2;
}

+ (void)setThreadEntryPoint:(SEL)a3
{
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v7 = [v4 threadDictionary];

  if (a3)
  {
    v5 = [v7 objectForKeyedSubscript:@"_triage_logger_entry_point"];

    if (!v5)
    {
      v6 = NSStringFromSelector(a3);
      [v7 setObject:v6 forKeyedSubscript:@"_triage_logger_entry_point"];
    }
  }

  else
  {
    [v7 setObject:0 forKeyedSubscript:@"_triage_logger_entry_point"];
  }
}

- (void)willExecuteFetchRequest:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = log;
    v25 = 134218243;
    v26 = [(__CFString *)v4 serialNumber];
    v27 = 2113;
    v28 = v4;
    _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_DEFAULT, "%04llx BEGIN: Will execute fetch for request: %{private}@", &v25, 0x16u);
  }

  v7 = [objc_opt_class() threadEntryPoint];
  v8 = v7;
  v9 = @"(unknown)";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(__CFString *)v4 serialNumber];
    v25 = 134218242;
    v26 = v13;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "%04llx Entry point: %{public}@", &v25, 0x16u);
  }

  v14 = self->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [(__CFString *)v4 serialNumber];
    v17 = [(__CFString *)v4 predicate];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [(__CFString *)v4 predicate];
    v25 = 134218499;
    v26 = v16;
    v27 = 2114;
    v28 = v19;
    v29 = 2113;
    v30 = v20;
    _os_log_impl(&dword_1954A0000, v15, OS_LOG_TYPE_DEFAULT, "%04llx Predicate: %{public}@ %{private}@", &v25, 0x20u);
  }

  v21 = [(__CFString *)v4 predicate];
  [v21 cn_triageWithLog:self->_log serialNumber:{-[__CFString serialNumber](v4, "serialNumber")}];

  v22 = self->_log;
  v23 = [(__CFString *)v4 signpostId];
  if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = v23;
    if (os_signpost_enabled(v22))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&dword_1954A0000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "Fetching Contacts", "", &v25, 2u);
    }
  }
}

- (void)didExecuteFetchRequest:(id)a3 duration:(double)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self->_log;
  v8 = [v6 signpostId];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      LOWORD(v14) = 0;
      _os_signpost_emit_with_name_impl(&dword_1954A0000, v7, OS_SIGNPOST_INTERVAL_END, v9, "Fetching Contacts", "", &v14, 2u);
    }
  }

  v10 = [MEMORY[0x1E6996858] stringForTimeInterval:a4];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = log;
    v13 = [v6 serialNumber];
    v14 = 134218242;
    v15 = v13;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "%04llx FINISH (%{public}@)", &v14, 0x16u);
  }
}

- (void)request:(id)a3 encounteredError:(id)a4
{
  v6 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [CNAPITriageLogger request:a3 encounteredError:?];
  }
}

- (void)request:(id)a3 containsContact:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = log;
    v8 = a4;
    v9 = [a3 serialNumber];
    v10 = [v8 identifier];

    v11 = 134218242;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "%04llx Contact: %{public}@", &v11, 0x16u);
  }
}

- (void)clientStoppedEnumerationForRequest:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = log;
    v6 = 134217984;
    v7 = [a3 serialNumber];
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "%04llx Client stopped enumeration of results", &v6, 0xCu);
  }
}

- (void)didReturnAllResultsForContactFetchRequest:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = log;
    v6 = 134217984;
    v7 = [a3 serialNumber];
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "%04llx All results have been returned to the client", &v6, 0xCu);
  }
}

- (void)request:(id)a3 spentTimeInClientCode:(double)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E6996858] stringForTimeInterval:a4];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = log;
    v10 = 134218242;
    v11 = [v6 serialNumber];
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_DEFAULT, "%04llx Time spent in client code: %{public}@", &v10, 0x16u);
  }
}

- (void)request:(id)a3 willReturnAnchor:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 isSuccess];
  log = self->_log;
  if (v8)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = log;
      v11 = [v6 serialNumber];
      v12 = [v7 value];
      v13 = 134218242;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, "%04llx History anchor returned to client: %{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [(CNAPITriageLogger *)log request:v6 willReturnAnchor:v7];
  }
}

- (void)request:(id)a3 failedWithError:(id)a4
{
  v6 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [CNAPITriageLogger request:a3 failedWithError:?];
  }
}

- (void)request:(void *)a1 encounteredError:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  [a2 serialNumber];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_15(&dword_1954A0000, v4, v5, "%04llx ERROR %{public}@", v6, v7, v8, v9, v10);
}

- (void)request:(void *)a3 willReturnAnchor:.cold.1(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [a2 serialNumber];
  v12 = [a3 error];
  OUTLINED_FUNCTION_0_15(&dword_1954A0000, v6, v7, "%04llx Could not fetch the current history anchor; the client will be handed a nil token, resulting in a full sync on the next change history request. Error: %@", v8, v9, v10, v11, 2u);
}

- (void)request:(void *)a1 failedWithError:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  [a2 serialNumber];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_15(&dword_1954A0000, v4, v5, "%04llx Request failed with error: %{public}@", v6, v7, v8, v9, v10);
}

@end