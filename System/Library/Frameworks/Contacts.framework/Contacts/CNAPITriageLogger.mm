@interface CNAPITriageLogger
+ (OS_os_log)os_log;
+ (id)threadEntryPoint;
+ (void)setThreadEntryPoint:(SEL)point;
- (CNAPITriageLogger)init;
- (void)clientStoppedEnumerationForRequest:(id)request;
- (void)didExecuteFetchRequest:(id)request duration:(double)duration;
- (void)didReturnAllResultsForContactFetchRequest:(id)request;
- (void)request:(id)request containsContact:(id)contact;
- (void)request:(id)request encounteredError:(id)error;
- (void)request:(id)request failedWithError:(id)error;
- (void)request:(id)request spentTimeInClientCode:(double)code;
- (void)request:(id)request willReturnAnchor:(id)anchor;
- (void)willExecuteFetchRequest:(id)request;
@end

@implementation CNAPITriageLogger

+ (id)threadEntryPoint
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKeyedSubscript:@"_triage_logger_entry_point"];

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
    os_log = [objc_opt_class() os_log];
    log = v2->_log;
    v2->_log = os_log;

    v5 = v2;
  }

  return v2;
}

+ (void)setThreadEntryPoint:(SEL)point
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  if (point)
  {
    v5 = [threadDictionary objectForKeyedSubscript:@"_triage_logger_entry_point"];

    if (!v5)
    {
      v6 = NSStringFromSelector(point);
      [threadDictionary setObject:v6 forKeyedSubscript:@"_triage_logger_entry_point"];
    }
  }

  else
  {
    [threadDictionary setObject:0 forKeyedSubscript:@"_triage_logger_entry_point"];
  }
}

- (void)willExecuteFetchRequest:(id)request
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = log;
    v25 = 134218243;
    serialNumber = [(__CFString *)requestCopy serialNumber];
    v27 = 2113;
    v28 = requestCopy;
    _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_DEFAULT, "%04llx BEGIN: Will execute fetch for request: %{private}@", &v25, 0x16u);
  }

  threadEntryPoint = [objc_opt_class() threadEntryPoint];
  v8 = threadEntryPoint;
  v9 = @"(unknown)";
  if (threadEntryPoint)
  {
    v9 = threadEntryPoint;
  }

  v10 = v9;

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    serialNumber2 = [(__CFString *)requestCopy serialNumber];
    v25 = 134218242;
    serialNumber = serialNumber2;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "%04llx Entry point: %{public}@", &v25, 0x16u);
  }

  v14 = self->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    serialNumber3 = [(__CFString *)requestCopy serialNumber];
    predicate = [(__CFString *)requestCopy predicate];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    predicate2 = [(__CFString *)requestCopy predicate];
    v25 = 134218499;
    serialNumber = serialNumber3;
    v27 = 2114;
    v28 = v19;
    v29 = 2113;
    v30 = predicate2;
    _os_log_impl(&dword_1954A0000, v15, OS_LOG_TYPE_DEFAULT, "%04llx Predicate: %{public}@ %{private}@", &v25, 0x20u);
  }

  predicate3 = [(__CFString *)requestCopy predicate];
  [predicate3 cn_triageWithLog:self->_log serialNumber:{-[__CFString serialNumber](requestCopy, "serialNumber")}];

  v22 = self->_log;
  signpostId = [(__CFString *)requestCopy signpostId];
  if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = signpostId;
    if (os_signpost_enabled(v22))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&dword_1954A0000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "Fetching Contacts", "", &v25, 2u);
    }
  }
}

- (void)didExecuteFetchRequest:(id)request duration:(double)duration
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = self->_log;
  signpostId = [requestCopy signpostId];
  if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = signpostId;
    if (os_signpost_enabled(v7))
    {
      LOWORD(v14) = 0;
      _os_signpost_emit_with_name_impl(&dword_1954A0000, v7, OS_SIGNPOST_INTERVAL_END, v9, "Fetching Contacts", "", &v14, 2u);
    }
  }

  v10 = [MEMORY[0x1E6996858] stringForTimeInterval:duration];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = log;
    serialNumber = [requestCopy serialNumber];
    v14 = 134218242;
    v15 = serialNumber;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "%04llx FINISH (%{public}@)", &v14, 0x16u);
  }
}

- (void)request:(id)request encounteredError:(id)error
{
  errorCopy = error;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [CNAPITriageLogger request:request encounteredError:?];
  }
}

- (void)request:(id)request containsContact:(id)contact
{
  v15 = *MEMORY[0x1E69E9840];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = log;
    contactCopy = contact;
    serialNumber = [request serialNumber];
    identifier = [contactCopy identifier];

    v11 = 134218242;
    v12 = serialNumber;
    v13 = 2114;
    v14 = identifier;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "%04llx Contact: %{public}@", &v11, 0x16u);
  }
}

- (void)clientStoppedEnumerationForRequest:(id)request
{
  v8 = *MEMORY[0x1E69E9840];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = log;
    v6 = 134217984;
    serialNumber = [request serialNumber];
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "%04llx Client stopped enumeration of results", &v6, 0xCu);
  }
}

- (void)didReturnAllResultsForContactFetchRequest:(id)request
{
  v8 = *MEMORY[0x1E69E9840];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = log;
    v6 = 134217984;
    serialNumber = [request serialNumber];
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "%04llx All results have been returned to the client", &v6, 0xCu);
  }
}

- (void)request:(id)request spentTimeInClientCode:(double)code
{
  v14 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = [MEMORY[0x1E6996858] stringForTimeInterval:code];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = log;
    v10 = 134218242;
    serialNumber = [requestCopy serialNumber];
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_DEFAULT, "%04llx Time spent in client code: %{public}@", &v10, 0x16u);
  }
}

- (void)request:(id)request willReturnAnchor:(id)anchor
{
  v17 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  anchorCopy = anchor;
  isSuccess = [anchorCopy isSuccess];
  log = self->_log;
  if (isSuccess)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = log;
      serialNumber = [requestCopy serialNumber];
      value = [anchorCopy value];
      v13 = 134218242;
      v14 = serialNumber;
      v15 = 2114;
      v16 = value;
      _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, "%04llx History anchor returned to client: %{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [(CNAPITriageLogger *)log request:requestCopy willReturnAnchor:anchorCopy];
  }
}

- (void)request:(id)request failedWithError:(id)error
{
  errorCopy = error;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [CNAPITriageLogger request:request failedWithError:?];
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